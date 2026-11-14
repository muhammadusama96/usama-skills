#!/usr/bin/env bash
# LeanVox Speech-to-Text transcription
# Usage: stt.sh <audio-file> [--no-wait|--force-async] [--features summary] [--language en]
set -euo pipefail

API_BASE="https://api.leanvox.com"
API_KEY="${LEANVOX_API_KEY:?Set LEANVOX_API_KEY}"

FILE=""
ASYNC=false
FEATURES=""
LANGUAGE=""

while [[ $# -gt 0 ]]; do
  case $1 in
    --async|--no-wait|--force-async) ASYNC=true; shift;;
    --features) FEATURES="$2"; shift 2;;
    --language) LANGUAGE="$2"; shift 2;;
    -*) echo "Unknown option: $1"; exit 1;;
    *) FILE="$1"; shift;;
  esac
done

[[ -z "$FILE" ]] && echo "Usage: stt.sh <audio-file> [--no-wait|--force-async] [--features summary]" && exit 1
[[ ! -f "$FILE" ]] && echo "File not found: $FILE" && exit 1

FEATURE_LIST=""
if [[ -n "$FEATURES" ]]; then
  IFS=',' read -ra REQUESTED_FEATURES <<< "$FEATURES"
  FEATURE_LIST=$(printf '%s\n' transcript diarization "${REQUESTED_FEATURES[@]}" \
    | awk 'NF && !seen[$0]++' \
    | jq -R . \
    | jq -s -c .)
fi

# Build multipart form
CURL_ARGS=(-s -X POST "$API_BASE/v1/audio/transcribe" \
  -H "Authorization: Bearer $API_KEY" \
  -F "file=@$FILE")

[[ -n "$FEATURE_LIST" ]] && CURL_ARGS+=(-F "features=$FEATURE_LIST")
[[ -n "$LANGUAGE" ]] && CURL_ARGS+=(-F "language=$LANGUAGE")
if $ASYNC; then
  CURL_ARGS+=(-F "force_async=true")
fi

RESPONSE=$(curl "${CURL_ARGS[@]}")

# Check if async job
JOB_ID=$(echo "$RESPONSE" | jq -r '.job_id // empty')
if [[ -n "$JOB_ID" ]]; then
  echo "Async transcription scheduled: $JOB_ID"
  echo "Check status: curl -H 'Authorization: Bearer $API_KEY' $API_BASE/v1/jobs/$JOB_ID"
else
  echo "$RESPONSE" | jq .
fi
