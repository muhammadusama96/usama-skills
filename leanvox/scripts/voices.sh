#!/usr/bin/env bash
# LeanVox Voice Browser — list and search curated voices
# Usage: voices.sh [--category podcast|narrative|character|...] [--gender male|female]
#        voices.sh --search "warm female narrator"
set -euo pipefail

API_BASE="https://api.leanvox.com"
API_KEY="${LEANVOX_API_KEY:?Set LEANVOX_API_KEY}"

CATEGORY=""
GENDER=""
SEARCH=""

while [[ $# -gt 0 ]]; do
  case $1 in
    --category) CATEGORY="$2"; shift 2;;
    --gender) GENDER="$2"; shift 2;;
    --search) SEARCH="$2"; shift 2;;
    -*) echo "Unknown option: $1"; exit 1;;
    *) shift;;
  esac
done

RESPONSE=$(curl -s "$API_BASE/v1/voices/curated" \
  -H "Authorization: Bearer $API_KEY")

if [[ -n "$CATEGORY" ]]; then
  RESPONSE=$(echo "$RESPONSE" | jq --arg c "$CATEGORY" '[.voices[] | select(.category | test($c; "i"))]')
elif [[ -n "$GENDER" ]]; then
  RESPONSE=$(echo "$RESPONSE" | jq --arg g "$GENDER" '[.voices[] | select(.gender | test($g; "i"))]')
elif [[ -n "$SEARCH" ]]; then
  RESPONSE=$(echo "$RESPONSE" | jq --arg s "$SEARCH" '[.voices[] | select((.name + " " + .description + " " + (.tags // [] | join(" "))) | test($s; "i"))]')
else
  RESPONSE=$(echo "$RESPONSE" | jq '.voices')
fi

echo "$RESPONSE" | jq -r '.[] | "\(.id)\t\(.name // .id)\t\(.gender // "?")\t\(.category // "?")"' 2>/dev/null || echo "$RESPONSE" | jq .
