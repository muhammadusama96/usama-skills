#!/usr/bin/env bash
# LeanVox Voice Cloning — clone a voice from a reference audio sample
# Usage: clone.sh <reference.wav> "Text to speak" [--output cloned.mp3]
# Note: Reference audio should be 5-10 seconds of clean speech
set -euo pipefail

API_BASE="https://api.leanvox.com"
API_KEY="${LEANVOX_API_KEY:?Set LEANVOX_API_KEY}"

REF_FILE=""
TEXT=""
OUTPUT="cloned.mp3"

while [[ $# -gt 0 ]]; do
  case $1 in
    --output) OUTPUT="$2"; shift 2;;
    -*) echo "Unknown option: $1"; exit 1;;
    *)
      if [[ -z "$REF_FILE" ]]; then
        REF_FILE="$1"
      else
        TEXT="$1"
      fi
      shift;;
  esac
done

[[ -z "$REF_FILE" ]] && echo "Usage: clone.sh <reference.wav> \"text\" [--output file.mp3]" && exit 1
[[ -z "$TEXT" ]] && echo "Usage: clone.sh <reference.wav> \"text\" [--output file.mp3]" && exit 1
[[ ! -f "$REF_FILE" ]] && echo "File not found: $REF_FILE" && exit 1

RESPONSE=$(curl -s -X POST "$API_BASE/v1/tts/clone" \
  -H "Authorization: Bearer $API_KEY" \
  -F "reference_audio=@$REF_FILE" \
  -F "text=$TEXT")

AUDIO_URL=$(echo "$RESPONSE" | jq -r '.audio_url')
if [[ "$AUDIO_URL" != "null" && -n "$AUDIO_URL" ]]; then
  curl -s -o "$OUTPUT" "$AUDIO_URL"
  echo "Cloned voice audio saved: $OUTPUT"
else
  echo "Error: $RESPONSE"
  exit 1
fi
