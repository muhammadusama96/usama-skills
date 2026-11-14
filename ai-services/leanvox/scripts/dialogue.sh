#!/usr/bin/env bash
# LeanVox Multi-Speaker Dialogue generation
# Usage: dialogue.sh <json-file> [--model pro] [--output conversation.mp3]
#
# JSON format:
# {
#   "lines": [
#     {"voice": "podcast_conversational_female", "text": "Welcome to the show!"},
#     {"voice": "podcast_casual_male", "text": "Thanks for having me."}
#   ],
#   "model": "pro"
# }
set -euo pipefail

API_BASE="https://api.leanvox.com"
API_KEY="${LEANVOX_API_KEY:?Set LEANVOX_API_KEY}"

JSON_FILE=""
MODEL=""
OUTPUT="dialogue.mp3"

while [[ $# -gt 0 ]]; do
  case $1 in
    --model) MODEL="$2"; shift 2;;
    --output) OUTPUT="$2"; shift 2;;
    -*) echo "Unknown option: $1"; exit 1;;
    *) JSON_FILE="$1"; shift;;
  esac
done

[[ -z "$JSON_FILE" ]] && echo "Usage: dialogue.sh <json-file> [--model pro] [--output file.mp3]" && exit 1
[[ ! -f "$JSON_FILE" ]] && echo "File not found: $JSON_FILE" && exit 1

PAYLOAD=$(cat "$JSON_FILE")
[[ -n "$MODEL" ]] && PAYLOAD=$(echo "$PAYLOAD" | jq --arg m "$MODEL" '.model = $m')

RESPONSE=$(curl -s -X POST "$API_BASE/v1/tts/dialogue" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD")

AUDIO_URL=$(echo "$RESPONSE" | jq -r '.audio_url')
if [[ "$AUDIO_URL" != "null" && -n "$AUDIO_URL" ]]; then
  curl -s -o "$OUTPUT" "$AUDIO_URL"
  echo "Dialogue saved: $OUTPUT"
else
  echo "Error: $RESPONSE"
  exit 1
fi
