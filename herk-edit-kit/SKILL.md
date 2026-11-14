---
name: herk-edit-kit
description: Nate Herk's video-editing kit — turn a talking-head recording into a finished reel, Short, or long-form edit with transcript-driven cuts, precise captions, moving B-roll, motion graphics (HyperFrames + GSAP), and self-checking. Use when editing a recorded video (reel, Short, explainer, showreel), cutting silences or mistakes, planning a short-form story, or building motion graphics for a video. Source repo: ~/workspace/herk-edit-kit (github.com/nateherkai/herk-edit-kit). Companion skill: ai-creators-lessons (the rules distilled from Nate, Sirio and Jeff Su).
---

# Herk Edit Kit (Nate Herk)

Turn a talking-head recording into an intentional edit using local HyperFrames rendering, transcript-driven cuts, and reusable motion graphics. The kit lives at `~/workspace/herk-edit-kit/`; this skill routes into it. The 15 sub-skills are symlinked here as `skills-<name>/` (they stay in sync with the repo); the playbook and guides are symlinked as `docs/`.

## Runtime

- Needs Node 22+, FFmpeg + ffprobe, Chrome/Chromium. Repo install (once): `cd ~/workspace/herk-edit-kit && npm ci && npm run setup && npm test`.
- Paid services are OPTIONAL, never required: ElevenLabs Scribe (Nate's default transcription) and Kie.ai (generated video/image assets). Free alternatives the kit supports: OpenAI Whisper or local Whisper for transcription (use the faster-whisper setup already in this workspace), existing footage before any generated asset. Never call a paid service without the user's explicit approval for that call.
- Work locally. Keep source media, EDLs, transcripts, compositions and renders together under `video-projects/<slug>/` inside the repo (that folder is gitignored). Preserve raw files; use a new output filename per stage. Never post or upload a finished video without the user's explicit authorization.

## Route to the right sub-skill

| Need | Sub-skill (symlinked here) |
|---|---|
| Reels, Shorts, short ads | `skills-short-form-edit/` |
| Full raw-video edit | `skills-edit-video/` |
| Silence removal only | `skills-cut-silences/` |
| Retakes, false starts, stutters | `skills-cut-mistakes/` |
| Narrative arc, callbacks | `skills-video-storytelling/` |
| Motion-design showreel / brand reel cut to music | `skills-motion-showreel/` |
| New motion-graphics video from a brief | `skills-make-a-video/` |
| Website-inspired compositions | `skills-website-to-hyperframes/` |
| Overlay beats, paper takeovers, glass cards | `skills-hyperframes-video-beats/` |
| Select or extend styles/templates | `skills-style-library/` |
| HTML compositions and media timing | `skills-hyperframes/` |
| Preview, lint, rendering | `skills-hyperframes-cli/` |
| Timeline animation | `skills-gsap/` |
| Install HyperFrames catalog blocks | `skills-hyperframes-registry/` |
| Older May Shorts compositions (maintenance only) | `skills-short-form-video/` |

Before a creative session read `MOTION_PHILOSOPHY.md` and the project's DESIGN.md. Read `docs/EDITING-PLAYBOOK.md` before planning any short-form edit — it holds Nate's measured house style. Read `docs/WORKFLOW.md` for a complete edit.

## The loop that makes it work (the kit's core rule)

Every note on a draft becomes a permanent rule in a skill: fix the edit AND write the fix into the skill as a rule, a check, or a script change. Ask for that explicitly ("Fix it, then add this to the skill so it never happens again"). The next edit starts from the improved skill. This is the same as this workspace's auto-skill rule.

## House reel style — the numbers (measured on Nate's 27 top reels)

- Speech starts within 0.1 s. No intro/outro card. File ends right after the last word.
- No dead air: pauses between phrases under ~0.2 s; natural beats after a comma 0.2–0.4 s stay. 4.0–4.7 words/second.
- Shots average 1.1–1.4 s, none over ~2.8 s. First cut at 0.6–1.0 s, on the first charged word. Each list item gets its own shot.
- Layouts (1080x1920, hard cuts): split B-roll top / speaker below 30–42%; full B-roll 50–55%; punch-in 5–15%. Speaker on screen ~45% of the time, never gone more than ~3.5 s. First frame is a split with the tool/brand on top.
- Story: hook in first 3 s (claim/command naming the tool) → one line of credibility → list shown early, blurred, as an open loop → each item: section card + one-line definition + 2–3 literal visuals + punch-in on the key line → resolution calling back to the hook → CTA: show the resource first, then punch-in with the comment keyword.
- **Every shot must move.** Video beats images, every time. An AI still used as B-roll is a build error — stills only become first frames for AI video.
- B-roll order: (1) real footage of the thing named; (2) real screen recording, zoomed in, cursor visible; (3) animated UI mock; (4) AI video — concrete metaphors only; (5) highlight crops under 1 s. Use each B-roll scene once per reel. Never invent numbers or results.
- Captions: 1–3 words per chunk, hard-swap, appear 2 frames before the first word. Montserrat ExtraBold, all caps, ~62–64 px. Colour on 25–45% of chunks (red = wrong/loss, teal = concept/keyword, green = action/payoff). One look for the whole reel: same dark box with a thin light edge. Never white on light — measure the pixels behind every caption. Never over the mouth or chin, least of all in the first second.
- Music by mood; bed ~11 dB under the voice, ducked. SFX follow visible actions only (soft whoosh on a spatial move, tap on a logo landing, click for UI, paper for documents). No laser zaps or whoosh on every cut. Master near −14 LUFS, true peak ≤ −1.5 dBTP, measured on the final encoded file.

## Edit order (short-form-edit / edit-video)

1. Transcribe with word-level timestamps (Whisper works; ElevenLabs Scribe is Nate's default).
2. Cut retakes (keep the last clean take; join takes only where both sides are silent).
3. Cut between phrases, never inside one. Never speed the voice up.
4. Plan the story first: hook, proof, items, payoff, CTA. Write it down.
5. Source B-roll, one visual per noun phrase, in the preference order above.
6. Build the composition in HyperFrames, every shot anchored to the spoken word.
7. Mix voice, music, SFX. Render a draft, check it, fix, render the final.

## Checking the edit (before delivery)

- Lip sync: match cut frames against the raw. Frame strips across every cut (10 frames each side).
- Contrast behind every caption. Re-transcribe the final render and compare words at every cut.
- First 2.5 s frame by frame — nothing covers the mouth. Loudness and true peak on the delivered file.
- Your own review is the final gate — Nate caught a lip-sync drift every automated check missed.

## Costly lessons (from the playbook)

- Encode segments separately then concatenating drifts lip sync ~1 frame at half the joins — select exact frame numbers in one pass. (Same as this workspace's concat-filter lesson.)
- Download the full video stream and cut locally.
- A raw recording caps the edit — a clip with no hook and no CTA scores low no matter how well it is cut. Script the hook before you record.
- Cutting a filler out of the middle of a phrase clips the words around it.
