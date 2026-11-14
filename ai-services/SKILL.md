---
name: ai-services
description: AI services with keys, pricing and setup — voice narration routes (LeanVox, Voicebox, ElevenLabs), local LLM inference (Colibri) and decision models (TypeSafe / Jev). Use when setting up, choosing between, or calling an AI voice or model service.
---

# ai-services

Merged 2026-11-14 from five originals: `leanvox`, `sumi-voicebox`,
`sumi-elevenlabs`, `colibri`, `jev`. Every original file is preserved whole
under its own subfolder; this file is the router and the shared rules.

> **Credit — Beyond Tahir.** The Voicebox and ElevenLabs companion skills in
> this skill (`sumi-voicebox/`, `sumi-elevenlabs/`) are Beyond Sumi work by
> **Beyond Tahir** — @beyondtahir — https://www.youtube.com/@beyondtahir ·
> https://www.instagram.com/beyondtahir · https://github.com/beyondtahir. See
> `CREDITS.md` for the exact credit lines.

## Which job is this?

| Job | Track | Start here |
| --- | --- | --- |
| Cloud TTS / STT by API | 1 — LeanVox | `leanvox/SKILL.md` |
| Local speech on this computer, no API key | 2 — Voicebox | `sumi-voicebox/SKILL.md` |
| Cloud narration + voice cloning (paid) | 3 — ElevenLabs | `sumi-elevenlabs/SKILL.md` |
| Run an LLM locally (inference engine) | 4 — Colibri | `colibri/SKILL.md` |
| Replace a prompt-and-parse step with a typed question | 5 — TypeSafe / Jev | `jev/SKILL.md` |

## Shared rules — security posture (applies to every track)

- **Keys by name only, never by value.** Keys appear in this skill only as names
  (`LEANVOX_API_KEY`, `ELEVENLABS_API_KEY`, `TYPESAFE_API_KEY`). Never paste an
  API key into a prompt or into chat, never store one in a file or in memory,
  never expose one in command history. Use the Secure Vault / masked entry /
  OS credential store. If you ever see an actual key, token or password value in
  a file, do NOT copy it — report it and stop that file's copy.
- **Consent before cloning.** A voice is cloned only with the owner's permission,
  and only the user's own voice, for his own films. A clone needs a clean
  reference (10–30 seconds, no background music / overlap / clipping).
- **Approval before paid generation.** A connected key is not spending
  permission. A new paid take / download / generation needs its own authorised
  scope, and receipts are kept. Never retry an uncertain paid generation
  automatically.
- **No secret values anywhere in this repo.** Verified at merge time: no live
  key, token or password value is shipped in these files.

## Track 1 — LeanVox (cloud TTS / STT)

Source: `leanvox/` (9 files). API TTS/STT with a credit balance; base URL
`https://api.leanvox.com`, auth `Authorization: Bearer <LEANVOX_API_KEY>`.

- **STATUS: PAUSED.** A key the user sent in chat was rejected as
  `invalid_api_key`. Do NOT retry LeanVox until a fresh key arrives via the
  secure form (never chat). The skill is kept whole so it is ready when a valid
  key exists.
- **Security posture upgraded at merge time.** The original shows a plain-shell
  key export and carries no consent language. The ElevenLabs posture (Track 3)
  now applies to LeanVox too: masked / OS-secure key entry, consent for
  cloning, approval before paid generation, receipts kept.
- **Canonical endpoints only.** The legacy `/v1/tts/jobs` aliases were dropped
  from `leanvox/references/api-reference.md` at merge time. Use canonical
  `GET /v1/jobs` and `GET /v1/jobs/{job_id}` for both TTS and STT jobs. The TTS
  generation endpoints (`/v1/tts/generate`, `/v1/tts/generate/async`,
  `/v1/tts/dialogue`, `/v1/tts/clone`) and STT (`/v1/audio/transcribe`) are
  unchanged.
- **Pricing on record:** STT $0.002/min (transcript + diarization), $0.005/min
  (+ summary). Check `GET /v1/balance` before a paid run; re-verify pricing
  upstream before quoting it to the user.

## Track 2 — Voicebox (local speech)

Source: `sumi-voicebox/` (4 files). Upstream: https://github.com/jamiepine/voicebox.
Local speech on this computer after downloading one speech model. **No
ElevenLabs API key is required.**

- **"The app's MIT license does not replace each selected model/preset's
  license."** Check the chosen model/preset's own licence before using it.
- **Setup:** follow `sumi-voicebox/references/setup.md` (first setup, checked
  26 October 2026). macOS Apple Silicon/Intel and Windows binaries exist
  upstream; Linux users check current releases or the official source/Docker
  instructions. Never describe a downloaded repo as a ready app. Resolve
  download consent before the first Generate action (it may auto-fetch weights).
- **Merge fix:** the setup guide had a formatting glitch (missing spaces, e.g.
  "checked26 October2026", "is8GB RAM", "23languages includingHindi"). The
  spacing was fixed in this merged copy; the content is unchanged.
- **Voices:** preset voices or a personal/consented profile. Chatterbox Turbo
  (local, no cloud, no API key) is the approved narration route for films —
  the user listened and said the voice is GOOD. Urdu narration is written in
  Roman Urdu (Chatterbox cannot read Urdu script) and every sample is
  transcribed and checked with Whisper before it reaches the user.

## Track 3 — ElevenLabs (cloud narration + cloning)

Source: `sumi-elevenlabs/` (4 files). The reference posture for this whole
merged skill: masked / OS-secure key entry, consent for cloning,
approval-before-paid-generation + receipts.

- **Key storage is macOS-only in the helper.** The helper is a repurposed Codex
  plugin: its interactive setup stores the key in the macOS Keychain
  (`com.codex.*` service names) and its private GUI prompt requires macOS. On
  any other host, use that host's secure credential / environment mechanism —
  do not claim the Keychain path works everywhere, and do not claim universal
  persistence for an environment variable.
- **Key setup:** guide the user to Developers → API Keys; create a named
  restricted key with only the needed speech / list-model / list-voice
  permissions and an appropriate credit cap. Never ask them to paste the key
  into chat or expose it in command history.
- **Generation consumes credits.** `generate_narration` consumes ElevenLabs
  credits — authorised scope first, never retry an uncertain generation
  automatically.

## Track 4 — Colibri (local LLM inference)

Source: `colibri/SKILL.md` (1 file). https://github.com/JustVugg/colibri.

- **Colibri is a large language model inference engine, NOT voice cloning, NOT
  text-to-speech.** It cannot help a voice-cloning task directly. Do not route
  voice work here.
- Pure C, one file per model family; mixture-of-experts streamed from disk
  (NVMe) through a cache. No GPU required (GPU is a faster place to hold
  weights, not a requirement). Minimum 8 GB RAM (16 GB+ better), 22 GB free disk
  for the smallest model. One-step setup opens a dashboard at
  http://127.0.0.1:8000/ with OpenAI-compatible (`/v1`) and Anthropic-compatible
  APIs.
- **Licences:** "Colibri itself is free and open source; model weights carry
  their own licences." Qwen-Image-2.1 carries a non-commercial licence — check
  the weight's licence before using a model commercially.

## Track 5 — TypeSafe / Jev (decision models)

Source: `jev/SKILL.md` (2 files). MIT. Source: typesafe-ai/skills. Live docs:
https://docs.typesafe.ai/llms.txt, https://api.typesafe.ai/openapi.json.

- **What it is:** TypeSafe integration craft for System One models (sometimes
  called Decision Models) such as Jev, which answer typed questions about text,
  images and application state with calibrated probabilities.
- **Use when:** building, reviewing or debugging code that calls TypeSafe; writing
  its questions or state; replacing an LLM prompt-and-parse step, keyword
  matching or a brittle heuristic with a typed question; or brainstorming where
  programmable common sense fits in an app.
- **Key:** `TYPESAFE_API_KEY` — by name only, per the shared rules above.

## What came from where

| Original skill | Files | Lives at | Role in this merged skill |
| --- | --- | --- | --- |
| leanvox | 9 | `leanvox/` | Track 1 — cloud TTS/STT (PAUSED, key rejected) |
| sumi-voicebox | 4 | `sumi-voicebox/` | Track 2 — local speech, no API key |
| sumi-elevenlabs | 4 | `sumi-elevenlabs/` | Track 3 — cloud narration + cloning (reference posture) |
| colibri | 1 | `colibri/` | Track 4 — local LLM inference (NOT voice) |
| jev | 2 | `jev/` | Track 5 — decision models (TypeSafe / Jev) |
| **Total** | **20** | | |
