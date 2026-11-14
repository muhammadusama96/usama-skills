---
name: leanvox
description: "Generate speech (TTS), transcribe audio (STT), create voice-overs, and multi-speaker dialogue via LeanVox API. Use when: (1) converting text to speech, (2) transcribing audio files, (3) voice cloning from a sample, (4) generating multi-speaker dialogue, (5) creating voice-overs from transcripts, (6) browsing or searching curated voices. Supports Standard (fast, $5/1M chars), Pro (expressive, $10/1M chars), and Max (instruction-based, $30/1M chars) model tiers with 238+ curated voices. Requires LEANVOX_API_KEY from api.leanvox.com."
---

# LeanVox TTS/STT API Skill

## Authentication

Set `LEANVOX_API_KEY` environment variable. Get a key at https://api.leanvox.com (free $1.00 signup credit).

```bash
export LEANVOX_API_KEY="your-key-here"
```

## Model Tiers — Pick the Cheapest That Works

| Tier | Cost | Best For | Voice Support |
|------|------|----------|---------------|
| **Standard** | $5/1M chars | Fast narration, notifications, bulk | 2 built-in voices (`af_heart`, `am_michael`) |
| **Pro** | $10/1M chars | Expressive, natural, podcasts | 238+ curated voices with cloning |
| **Max** | $30/1M chars | Creative, instruction-driven | Describe voice via text prompt |

**Default to Standard** unless the user needs specific voices (→ Pro) or voice design from text description (→ Max).

## Quick Reference

### Generate Speech
```bash
scripts/tts.sh "Hello world" --model standard --voice af_heart --output hello.mp3
```

### Transcribe Audio
```bash
scripts/stt.sh audio.mp3                          # sync (< 5 min)
scripts/stt.sh audio.mp3 --no-wait                 # schedule async job
scripts/stt.sh audio.mp3 --force-async             # force async even for short files
```

### Multi-Speaker Dialogue
```bash
scripts/dialogue.sh dialogue.json --output conversation.mp3
```

### Voice-Over (transcribe → edit → re-voice)
```bash
scripts/voiceover.sh input.mp3 --voice podcast_conversational_female
```

### Browse Voices
```bash
scripts/voices.sh --category podcast --gender female
```

### Clone a Voice
```bash
scripts/clone.sh reference.wav "Text to speak in cloned voice" --output cloned.mp3
```

## Endpoint Details

For full API reference including all parameters, see `references/api-reference.md`.
For the complete curated voice catalog, see `references/voice-catalog.md`.

## Key Constraints

- **Max text length**: 10,000 Unicode characters per request
- **Async threshold**: Use async for text > 5,000 chars or audio files > 5 minutes. STT async jobs are tracked with `/v1/jobs/{job_id}`.
- **Billing minimum**: 100 characters (shorter text billed as 100)
- **Audio format**: Returns MP3 via presigned URL (download separately, no auth header)
- **Rate limits**: 60 RPM (free), 1,000 RPM (paid)
- **1,000 chars ≈ 1 minute** of audio output
