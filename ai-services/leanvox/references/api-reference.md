# LeanVox API Reference

Base URL: `https://api.leanvox.com`
Auth: `Authorization: Bearer <LEANVOX_API_KEY>`

## TTS Endpoints

> Merge note (2026-11-14): the legacy `/v1/tts/jobs` aliases were dropped here; use the canonical `GET /v1/jobs` endpoints below for both TTS and STT jobs.

### POST /v1/tts/generate
Synchronous text-to-speech. Returns JSON with `audio_url`.

| Param | Type | Required | Description |
|-------|------|----------|-------------|
| text | string | yes | Text to speak (max 10,000 Unicode chars) |
| model | string | no | `standard` (default), `pro`, `max` |
| voice | string | no | Voice ID (e.g. `af_heart`, `podcast_conversational_female`) |
| voice_instructions | string | no | Max tier only — text description of desired voice |
| language | string | no | ISO code (e.g. `en`, `es`, `fr`). Pro auto-detects. |

**Response**: `{"audio_url": "https://...", "duration_ms": 4500, "characters_billed": 100}`

### POST /v1/tts/generate/async
Async generation for long text. Returns job ID.

Same params as `/v1/tts/generate`.

**Response**: `{"job_id": "abc-123", "status": "queued"}`

### GET /v1/jobs/{job_id}
Check async TTS or STT job status.

**Response**:
```json
{
  "id": "job_abc123",
  "job_type": "stt",
  "status": "completed",
  "result": {"id": "tr_abc123", "formatted_transcript": "..."}
}
```

### GET /v1/jobs
List async jobs. Use `?type=stt`, `?type=tts`, or `?type=all`.

**Response**: `{"jobs": [...]}`

### POST /v1/tts/dialogue
Multi-speaker dialogue generation.

| Param | Type | Required | Description |
|-------|------|----------|-------------|
| lines | array | yes | Array of `{voice, text}` objects |
| model | string | no | `standard`, `pro` (default), `max` |

**Example**:
```json
{
  "lines": [
    {"voice": "podcast_conversational_female", "text": "Welcome!"},
    {"voice": "podcast_casual_male", "text": "Thanks for having me."}
  ],
  "model": "pro"
}
```

### POST /v1/tts/clone
Voice cloning from reference audio.

| Param | Type | Required | Description |
|-------|------|----------|-------------|
| reference_audio | file | yes | WAV/MP3 reference (5-10s recommended) |
| text | string | yes | Text to speak in cloned voice |

## STT Endpoints

### POST /v1/audio/transcribe
Transcribe audio file. Diarization included free.

| Param | Type | Required | Description |
|-------|------|----------|-------------|
| file | file | yes | Audio file (WAV, MP3, etc.) |
| features | JSON array | no | `["transcript","diarization"]` by default. Add `"summary"` for AI summary |
| language | string | no | ISO code for forced language |
| force_async | boolean string | no | Set `true` to schedule a background STT job |

**Synchronous response**:
```json
{
  "id": "tr_abc123",
  "duration_seconds": 45.2,
  "language": "en",
  "formatted_transcript": "Speaker 1: Hello world...",
  "transcript": {
    "text": "Hello world...",
    "segments": [{"start": 0.0, "end": 1.5, "text": "Hello", "speaker": "SPEAKER_00"}]
  }
}
```

**Scheduled response (`202 Accepted`)**:
```json
{
  "job_id": "job_abc123",
  "job_type": "stt",
  "status": "pending",
  "poll_url": "/v1/jobs/job_abc123",
  "message": "Track progress with poll_url."
}
```

**Pricing**: $0.002/min (transcript + diarization), $0.005/min (+ summary)

## Voice Endpoints

### GET /v1/voices
List all available voice IDs.

### GET /v1/voices/curated
List curated voices with metadata, categories, tags, and preview URLs.

**Response**: `{"voices": [{"id": "podcast_conversational_female", "name": "...", "gender": "female", "category": "podcast", "tags": [...], "preview_url": "https://..."}]}`

## Account

### GET /v1/balance
Check credit balance.

**Response**: `{"balance_cents": 100, "reserved_cents": 0}`

### GET /v1/health
API health check (no auth required).
