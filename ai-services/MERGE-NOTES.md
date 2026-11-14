# ai-services — merge notes (2026-11-14)

Merged from: leanvox (9) + sumi-voicebox (4) + sumi-elevenlabs (4) + colibri (1)
+ jev (2) = **20 files**, all preserved whole under their original names.

## What was deduplicated

- **Security posture, unified.** LeanVox showed a plain-shell key export and no
  consent language; ElevenLabs requires masked/OS-secure entry, consent for
  cloning, approval-before-paid-generation + receipts. The ElevenLabs posture
  now applies to LeanVox too in the merged `SKILL.md`. No original file was
  rewritten to do this — the merged SKILL.md states the unified rule and the
  originals are read under it.
- **"Never invent numbers/results"** — stated once per merged skill; see the
  shared rules in the merged `SKILL.md`.

## Conflict / fix decisions

| Item | Decision |
| --- | --- |
| LeanVox status | PAUSED. A key the user sent in chat was rejected as `invalid_api_key`. Do not retry until a fresh key arrives via the secure form (never chat). |
| LeanVox api-reference legacy aliases | The two legacy `/v1/tts/jobs` sections were DROPPED from the merged copy; canonical `GET /v1/jobs` only. |
| Voicebox `references/setup.md` formatting glitch | Spacing fixed in the merged copy (8 glitches, e.g. "checked26 October2026" → "checked 26 October 2026", "is8GB RAM" → "is 8GB RAM", "23languages includingHindi" → "23 languages including Hindi"). Content unchanged. |
| ElevenLabs helper is a repurposed Codex plugin | macOS-only key storage (Keychain, `com.codex.*` service names) noted in the merged `SKILL.md`; other hosts use their own secure credential mechanism. |
| Colibri vs voice work | Colibri is an LLM inference engine, NOT voice cloning/TTS. Do not route voice work here. Qwen-Image-2.1 carries a non-commercial licence. |

## Other notes

- Keys appear by name only (`LEANVOX_API_KEY`, `ELEVENLABS_API_KEY`,
  `TYPESAFE_API_KEY`). No live key, token or password value is shipped in these
  files (verified at merge time by pattern scan — no matches).
- Voicebox: "The app's MIT license does not replace each selected model/preset's
  license." Chatterbox Turbo is the approved local narration route for films.
