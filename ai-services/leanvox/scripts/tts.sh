#!/usr/bin/env bash
# LeanVox Text-to-Speech generation
# Usage: tts.sh "text" [--model standard|pro|max] [--voice VOICE_ID] [--output file.mp3]
#        tts.sh "text" [--model max] [--instructions "voice description"]
#        tts.sh "text" [--async] [--model pro] [--voice VOICE_ID]
set -euo pipefail

API_BASE="https://api.leanvox.com"
API_KEY="${LEANVOX_API_KEY:?Set LEANVOX_API_KEY}"

TEXT=""
MODEL="standard"
VOICE=""
INSTRUCTIONS=""
OUTPUT="output.mp3"
ASYNC=false
LANGUAGE=""

while [[ $# -gt 0 ]]; do
  case $1 in
    --model) MODEL="$2"; shift 2;;
    --voice) VOICE="$2"; shift 2;;
    --instructions) INSTRUCTIONS="$2"; shift 2;;
    --output) OUTPUT="$2"; shift 2;;
    --async) ASYNC=true; shift;;
    --language) LANGUAGE="$2"; shift 2;;
    -*) echo "Unknown option: $1"; exit 1;;
    *) TEXT="$1"; shift;;
  esac
done

[[ -z "$TEXT" ]] && echo "Usage: tts.sh \"text\" [options]" && exit 1

# Build JSON payload
JSON=$(cat <<EOF
{"text": $(echo "$TEXT" | jq -Rs .), "model": "$MODEL"
EOF
)
[[ -n "$VOICE" ]] && JSON="$JSON, \"voice\": \"$VOICE\""
[[ -n "$INSTRUCTIONS" ]] && JSON="$JSON, \"voice_instructions\": \"$INSTRUCTIONS\""
[[ -n "$LANGUAGE" ]] && JSON="$JSON, \"language\": \"$LANGUAGE\""
JSON="$JSON}"

if $ASYNC; then
  # Async generation — returns job ID
  RESPONSE=$(curl -s -X POST "$API_BASE/v1/tts/generate/async" \
    -H "Authorization: Bearer $API_KEY" \
    -H "Content-Type: application/json" \
    -d "$JSON")
  JOB_ID=$(echo "$RESPONSE" | jq -r '.job_id')
  echo "Async job started: $JOB_ID"
  echo "Check status: curl -H 'Authorization: Bearer $API_KEY' $API_BASE/v1/jobs/$JOB_ID"
else
  # Sync generation — returns audio URL
  RESPONSE=$(curl -s -X POST "$API_BASE/v1/tts/generate" \
    -H "Authorization: Bearer $API_KEY" \
    -H "Content-Type: application/json" \
    -d "$JSON")
  AUDIO_URL=$(echo "$RESPONSE" | jq -r '.audio_url')
  if [[ "$AUDIO_URL" != "null" && -n "$AUDIO_URL" ]]; then
    curl -s -o "$OUTPUT" "$AUDIO_URL"
    echo "Audio saved: $OUTPUT"
  else
    echo "Error: $RESPONSE"
    exit 1
  fi
fi
