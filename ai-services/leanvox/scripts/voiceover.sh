#!/usr/bin/env bash
# LeanVox Voice-Over pipeline: transcribe → re-voice with selected voice
# Usage: voiceover.sh <audio-file> [--voice VOICE_ID] [--model pro] [--output voiceover.mp3]
set -euo pipefail

API_BASE="https://api.leanvox.com"
API_KEY="${LEANVOX_API_KEY:?Set LEANVOX_API_KEY}"

FILE=""
VOICE="podcast_conversational_female"
MODEL="pro"
OUTPUT="voiceover.mp3"

while [[ $# -gt 0 ]]; do
  case $1 in
    --voice) VOICE="$2"; shift 2;;
    --model) MODEL="$2"; shift 2;;
    --output) OUTPUT="$2"; shift 2;;
    -*) echo "Unknown option: $1"; exit 1;;
    *) FILE="$1"; shift;;
  esac
done

[[ -z "$FILE" ]] && echo "Usage: voiceover.sh <audio-file> [--voice VOICE_ID]" && exit 1
[[ ! -f "$FILE" ]] && echo "File not found: $FILE" && exit 1

echo "Step 1: Transcribing..."
TRANSCRIPT=$(curl -s -X POST "$API_BASE/v1/audio/transcribe" \
  -H "Authorization: Bearer $API_KEY" \
  -F "file=@$FILE" | jq -r '.text')

echo "Transcript: $TRANSCRIPT"
echo ""
echo "Step 2: Re-voicing with $VOICE..."

RESPONSE=$(curl -s -X POST "$API_BASE/v1/tts/generate" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d "{\"text\": $(echo "$TRANSCRIPT" | jq -Rs .), \"model\": \"$MODEL\", \"voice\": \"$VOICE\"}")

AUDIO_URL=$(echo "$RESPONSE" | jq -r '.audio_url')
if [[ "$AUDIO_URL" != "null" && -n "$AUDIO_URL" ]]; then
  curl -s -o "$OUTPUT" "$AUDIO_URL"
  echo "Voice-over saved: $OUTPUT"
else
  echo "Error: $RESPONSE"
  exit 1
fi
