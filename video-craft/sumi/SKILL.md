---
name: sumi
description: "Create and revise Japanese Sumi animated films in Sumi Original, Sumi Light or Sumi Dark. Guide setup, story, direction, original artwork, animation, narration, local sound and review."
---

# Beyondsumi · Sumi

Version 1.0.1. A guided local film studio with exactly **Sumi Original, Sumi Light and Sumi Dark**. Use the user's current brief, external preferences and current project record. Preserve prior films and paused work; changing the skill does not resume a film. Keep credentials/recordings outside the portable package.

## Load only what the task needs

- **First use / setup:** [first-run flow](references/first-run-flow.md). Use the separate SVG, ElevenLabs or Voicebox companion only when that route is selected.
- **New film:** ask missing duration, then narrator/dialogue/both. Offer [story-writing help](references/story-writing.md) before [director workflow](references/director-workflow.md), then [scene-first production](references/scene-first-workflow.md) and the chosen style below. Ask only missing questions; retain earlier authorization for the same scope. Follow [per-video motion, image-call and lip-sync choices](references/motion-detail.md) before artwork: images offer default versus smoother up to 24 actual pose/in-between drawings per animated second; SVG retains its default without that prompt. Show and approve each separate image call/batch budget; increased frame detail can require more calls/tokens/time. Confirm visible-dialogue lip-sync for each film.
- **Revision:** read the project's latest direction/review and inspect the affected sources before editing. Reuse compatible art, takes, code and sound. [Reuse and context](references/reuse-and-context.md) covers cache/provenance and selective reads.
- **Implementation:** [Real-anime video loop](references/real-anime-video-loop.md) is the DEFAULT animation route for new films with character movement (user decision, 2026-10-31). Preserve a suitable existing renderer for stills/titles where needed. The older Sumi image/pose-cycle route is now the fallback, used only if the user explicitly asks for it.
- **Review/delivery:** [production review](references/production-standard.md), the [portable physics gate](references/physics-gate.md) for new character actions, and [delivery](references/delivery-dashboard.md). Do not infer approval from a helper or packaging step.

## Three styles; images first

- **[Original](references/styles/sumi-original.md):** painted Japanese Sumi-e/Sumi Anime stories, richer character acting and emotional depth; no animated brush/splash reveals. Default full-frame 16:9. New films use 30 fps/20 designed character states per animated second.
- **[Light](references/styles/sumi-light.md):** colourful brush-and-ink romance, children's/general stories and documentaries; readable action and explanation, story-selected washes.24 fps, paired character states up to 12 changes/s.
- **[Dark](references/styles/sumi-dark.md):** horror, mystery and dark stories; large splash-built forms, neutral ink with selective dark red, stronger motivated camera/face/detail reveals.24 fps, paired character states up to 12 changes/s.

These are default motion clocks; the explicitly approved image-route smoother option in [motion detail](references/motion-detail.md) can use 24 actual pose/in-between drawings per animated second while keeping Original’s 30fps or Light/Dark’s 24fps output. This requires source artwork, connected performance and review, not just changing FPS. These are recommendations, not genre restrictions. All three need cinematic direction and complete storytelling. Preserve each identity; Dark is not a recoloured Light. Older style names are internal historical mechanisms, not extra menu choices. Consult [catalogue history](references/animation-categories.md) only when recovering a technique or resolving an old project.

Default to the selected callable image tool, connected image provider or supplied art. SVG is the user's explicit choice or a disclosed fallback when image generation is unavailable; follow [image capability](references/image-capabilities.md). Do not silently downgrade a painted film. A comparison sample is optional: one image of the same scene in all three styles, after the user asks for it. Do not generate all three films by default.

## Story and approval

Concept/story → script review → direction and duration/cost approval → actual narration alignment → storyboard/rough animatic/layout → contextual artwork/action poses → animation → synchronized sound → export review. Technical preparation may continue while a dependent choice is pending.

Preserve supplied/approved words and required actions. If the full story exceeds 30 seconds or another requested target, show its estimate and a concrete shorter alternative, then wait for the user's selection. Never independently omit beats, rush speech, extend or add dead-air padding. See [duration contract](references/script-duration.md).

The agent directs scenes, expressions, focal subjects, camera, transitions and sound; a beginner need not choose technical settings. Show script first, then the concrete direction plan. Proceed within existing approval without asking about every aesthetic choice. A new paid take/download needs its own authorized scope; a connected key is not spending permission.

## Artwork and animation invariants

Compose complete integrated shots with camera/view, floor, light, scale, occlusion and props planned **before** finished artwork. Derive layers from that coordinated master. Prepare complete sequential action poses/sheets for major movement, inspect cells before cropping, and preserve identity, handedness, support, grip and screen direction. Never assemble unrelated generated limbs or turn a crop into a claimed new camera angle.

Use [whole action preparation](references/action-pose-sheets.md) for movement, [connected expressions](references/expression-and-action-continuity.md) for acting, [Living Frames](references/living-frames.md) for supported face/hair/cloth/breath details, and [visible environments](references/living-environments.md) for scene-linked rain/cloud/fire/light/shadow/reflection. Read only the relevant detailed section. Weather/camera cannot substitute for missing character action. Count actual drawings, derived states, reused cycles and exposures separately;20/12 state targets are not new AI drawings each second. Declare meaningful stillness.

Keep one deterministic output-frame event ledger. Carry [prop, knowledge, route and consequence continuity](references/production-continuity.md) across shots. In Light/Dark, build subjects from wet brush masses matching the background; use action-linked ink and sparse material transitions. Consult [brush construction](references/brush-character-prompts.md), [Light/Dark mechanics](references/brush-ink-workflow.md) or [ink mechanisms](references/ink-transitions.md) only as required. Do not use a fast sideways card slide as a generic ink effect.

## Voice, captions and sound

Follow [narration routing](references/narration.md): ElevenLabs, Voicebox, the user's recording, or none. Read only the selected provider setup. Supplied audio uses [its real recording workflow](references/supplied-narration.md); preserve originals and actual performance. [Character dialogue and lip-sync](references/dialogue-and-lip-sync.md) apply to all three styles, including identified supplied dialogue. Keep narrator prose off character mouths and respect provider-specific casting controls.

[Sound routing](references/sound-routing.md) is independent of voice/artwork: ask library-first versus Python-only unless already chosen. Cache → optional connected/explicitly approved ElevenLabs SFX → Python fallback; Python-only bypasses provider effects. Reuse separate editable music/voice/ambience/effect stems, synchronize contacts and duck/recover around actual speech. Voicebox is speech, not an assumed foley generator.

[Titles, captions and sound hierarchy](references/hooks-endings-sound.md) are the shared authority. Music, ambience and important SFX need explicit scene coverage, including an audible lead-in before a named sound stop; missing sound is unfinished production. These rules apply to all three styles: all styles/art routes retain compact readable story captions even without narration unless explicitly text-free. Without speech, an audible story-shaped score and effects lead; with dialogue, preserve intelligibility. Opening and standalone closing titles last ≤ 3 seconds total, with individually entering words and style-specific treatment. Do not add visible AI-generated/AI-assisted labels, assistant/provider watermarks, sample signatures or technical text to the exported MP4. Keep approved story titles/captions; Beyondsumi branding belongs on the dashboard, not over the film.

## Green Valley Playbook — DEFAULT for this kind of video, user decision 2026-11-01

For any new story film like "The Girl from the Green Valley" — a
gentle story with character movement, supplied voice, synced captions
and music, 1 minute or 5 minutes — follow ONLY this compiled
playbook first, so the work does not go through the same trouble again:
[Green Valley Playbook](references/green-valley-playbook.md), together
with the shorter [real-anime video loop](references/real-anime-video-loop.md).
It covers, in one place: what NOT to start with (still pictures with
camera zoom, pose-cycle walk sheets, independent video clips, aerial
backgrounds, fixed 10-second captions), the chained 10-second clip
method with character lock and style lock, Voicebox intervals at
their planned slots with captions synced by word count to actual
voice durations and music ducked, minute-by-minute structure for
5 minutes, re-encode-before-concat assembly, the viewer gate checked
before delivery, compression below ~100 MB for a download link, and
silent auto-starting of the next minute without asking again.
Do NOT start with still pictures with a camera zoom, or with
pose-cycle walk sheets, as the default — those failed the user's
real-anime bar in Green Valley and are now the fallback only, used
when the user explicitly asks for the older Sumi image/pose route.
Payment, a paid sign-in, or public sharing still need separate approval.

## Four-reviewer voice-sync gate — MANDATORY before every delivery, user decision 2026-11-03

Never deliver a film on the main agent's own check alone. Before any film is sent to the user, four independent reviewers must check it, and all four must pass it. A film that fails any reviewer is fixed and re-checked by all four again — the old link is never re-sent.

The four reviewers, each with a different focus:
1. **Voice-to-video sync** — does the narration at each timestamp describe the scene shown at that timestamp?
2. **Caption timing** — do the captions match the actual voice, word for word, at the actual times?
3. **Character and story order** — do the characters stay themselves, and does the visual story follow the transcript order? This reviewer MUST also run the two consistency checks in the 2026-11-09 lesson below: the same character's height, build, face and clothes compared across every shot, and the animation style/quality compared across every clip. A character who changes size or a clip that looks like a different cartoon is a FAIL.
4. **Audio** — is the voice clear in every minute, with no buried voice, cut-off speech, or gap?

STRICT rules for voice matching video — a FAIL on any one of these blocks delivery:
- The words being spoken at any second must match the scene on screen at that second. A later story beat must never appear while an earlier narration is still playing, and an earlier beat must never repeat after the narration has moved on.
- A generic scene is only acceptable if it does not contradict the narration. Storm narration must never play over a sunny village, a dark-house scene must never play over the relighting ending, and a wave-first ending must never play over a scene where the character is still grieving alone.
- Captions must be timed to measured speech, never to a word-count guess alone. For merged voice files, the split between intervals must be found from the actual audio (speech pauses and energy), not assumed to be half the file.
- Every caption must start and end with the words actually spoken in that window, and no caption may appear in a music-only gap or carry the words of a different interval.
- Voice must measure clear in every minute (about −16 to −20 dB mean in the Window/Lantern builds), music kept low underneath, with no minute where the voice is buried, and no pair file starting or ending mid-sentence.
- Each reviewer reports PASS or FAIL per minute, with timestamps and concrete evidence — not general praise. "Looks good" is not a pass.

Record all four verdicts, and any fix made from them, in the project's REVIEW.md before delivery.

Part 2 lesson (2026-11-05, full record in the playbook, section 11): a film
passed its build-time self-review and still reached the user with the
pictures up to ~50 seconds ahead of the words, because the self-review
checked captions against voice (both come from the same manifest, so they
always agree) and frames against story order, but never the spoken words
against the picture at the same timestamp. The token-saving rule never
overrides this gate for a full film: a single agent's self-review is not
a substitute for the four reviewers, and caption timestamps alone are
never enough — verify words vs picture at 10+ timestamps from the actual
audio and frames, and verify interval-to-clip alignment before the join.
Tempo matching (user decision 2026-11-05): narration and video must match
exactly — to get that, slow the narration down, slow the video down,
speed the video up, or speed the voice up a little, whichever side needs
it. The exact scene with the exact words is the goal; re-check the 10+
timestamps after every tempo change.

Character and animation consistency lesson (2026-11-09, caught by the
user, NOT by the jury — the gate had no check for either, so both shipped
in jury-PASS files): (1) In Part 2 Short 1 the girl is nearly Ayaan's
height in one shot, child-sized with her head at his shoulder in another,
then nearly his height again — her height and build change across shots.
(2) In Buster & Pip ep. 1 the clips do not match in animation quality:
some are flat watercolour cartoon, others are near-photorealistic
rendering (Pip a realistic bird in clips 3–4, a simple cartoon bird in
clips 1 and 5). MANDATORY from now on, for every film and Short, before
delivery: (a) CHARACTER CONSISTENCY — pull one frame from every shot
where a character appears and compare the same character across them:
height RELATIVE to the other characters (not just absolute size, which
changes with camera distance), build, face, hair, clothes and colours.
Any visible change in relative height or build is a blocking FAIL.
Lock relative height in every clip prompt (e.g. "the girl is nearly as
tall as Ayaan, her head reaches his chin, a young woman, not a child").
(b) ANIMATION-QUALITY CONSISTENCY — pull one frame from every clip and
compare the clips against EACH OTHER, not just against a reference
frame: same rendering style (flat watercolour cartoon vs realistic),
same line weight, same texture, same character design. Any clip that
looks like a different cartoon is a blocking FAIL — regenerate it with
a stronger style lock before delivery. Checking each clip alone is not
enough; the mismatch only shows when the clips sit side by side.

Standard video procedure (user decision 2026-11-08, full record in the
playbook, section 13; POSTER HOOK RULE added by the user 2026-11-15, from Kallaway): EVERY video, Short or full film, has three parts
in order — first a title/poster frame, then the story itself untouched in between, last the
subscribe/follow banner with the "real story" invitation after the story
has finished, voice speaking the banner words over light music. The
poster and banner are made fresh for EACH story, according to that
story — never the same ones reused on all videos. POSTER HOOK RULE: the poster frame is the hook, not a title card — use the most shocking single frame of the film with a 3–5 word bold overlay that IS the contrast (A vs B: the life left vs the promise pulling back, the danger vs the escape), and the cloned voice speaks the 3-beat lean line (Lean → "but…" → Snapback) with the title inside it, not the title alone. A title-only poster is the weakest possible hook. The hook agent runs Kallaway's 4-mistake diagnostic (Delay, Confusion, Irrelevance, Disinterest) on the poster's first 2 seconds. Applies from the next productions onward (Ep. 4, Green Valley Part 4, Letters Part 9+); already-gated uploads (Part 7, Ep. 3, Green Valley Part 3, Letters Part 8) are NOT redone.

Beyond Tahir credit (user decision 2026-11-09, standing, ALL videos
from now on): every video credits Beyond Tahir, whose Beyond Sumi
skills make the films. His handle is @beyondtahir on all three
platforms — YouTube https://www.youtube.com/@beyondtahir,
Instagram https://www.instagram.com/beyondtahir,
Facebook https://www.facebook.com/beyondtahir. Put the credit in
every video's description/caption: YouTube description — "Story and
film made with Beyond Sumi by Beyond Tahir (@beyondtahir)" plus the
YouTube link; Instagram caption — "@beyondtahir" plus the credit
line; Facebook Reel description — "@beyondtahir" plus the credit
line. Do NOT use @beyondtahirofficial — that handle returns not
found.

AEO / SEO / GEO + hashtags (user decision 2026-11-13, MANDATORY,
ALL videos on ALL platforms from now on): every video's YouTube
description, Instagram caption and Facebook Reel description must
open with 1–2 lines that directly answer the question the video
answers, then the story, the series one-liner, the standing
invitation line and the Beyond Tahir credit — and must end with
relevant hashtags (brand #AnimeValleyStories + genre + story tags,
max ~8, jury-finalised; the YouTube 15-tag list is kept as well).
Full template: ~/workspace/goals/anime-valley-stories-brand-accounts/files/AEO-GEO-Starter.md.
If a video's metadata lacks the answer-first lines or the hashtags,
the gate FAILS — fix before upload.

Saudi Arabia rule (user decision 2026-11-13, COMPULSORY, ALL posts):
never say anything bad or negative about Saudi Arabia in any video,
caption, description, or comment on any platform. Any script, caption
or description that speaks badly of Saudi Arabia FAILS the gate and
must be fixed before upload.

## Real-anime video loop — DEFAULT, user decision 2026-10-31

For any new Sumi film with character movement, DEFAULT to the method in
[real-anime video loop](references/real-anime-video-loop.md): chained
10-second video clips with one locked character description repeated
verbatim in every prompt, chained snapshots, a locked watercolour-anime
style checked against a reference frame (reject any realistic-looking
clip) AND against every other clip in the same video (same rendering
style and quality across clips — see the 2026-11-09 consistency lesson
in the gate section above), ground-level framing only, story order kept,
captions synced to actual voice timing, and a viewer gate checked before
delivery. Film
length (user decision 2026-11-05, full record in the playbook,
section 12): 5 minutes is a target, not an exact length — if the voice
and script need more pictures, add more clips and let the film run
longer. Do NOT start with still pictures with a camera zoom, or with pose-cycle walk
sheets, as the default — those failed the user's real-anime bar in
Green Valley and are now the fallback only, used when the user
explicitly asks for the older Sumi image/pose route. Payment, a paid
sign-in, or public sharing still need separate approval.

## Kaggle video generation — ABANDONED 2026-11-14, RECORD ONLY, do NOT use

the user said "leave Kaggle" Sat 2026-11-14 ~01:43. Do NOT start Kaggle work, do NOT retry it. The notes below are the record of what was proven, kept so the work is not re-proven later. The build route now is the FilmCraft-from-scratch process above. Muse's own video generation is blocked with a lasting 403 ("not available for this account in its country or region"). The working fallback WAS **Wan 2.1 1.3B on Kaggle's free T4 x2 GPU**. Proven 2026-11-13: one real 5 s vertical clip (480x832, 16 fps, 81 frames) for Buster & Pip Ep. 3 beat 1, on-brief (watercolour anime, Bruno a head and shoulders taller than Buster, Pip present), mostly static, with garbled pseudo-text on a crate and a possible extra brown dog — a valid proof, not final-quality as-is; re-roll or clean up for production.

Working settings (canonical script: ~/workspace/kaggle-gpu/generate_video_test_wan21_v2.py — v1 is BROKEN, do not use it):
- Model repo **"Wan-AI/Wan2.1-T2V-1.3B-Diffusers"** (28.9 GB, Apache 2.0). The plain "Wan-AI/Wan2.1-T2V-1.3B" repo has NO model_index.json (diffusers weights reverted Mar 2025) — v1 died in 12 s on a 404.
- **torch.float16, NOT bfloat16** (T4 is Turing, no bf16).
- **enable_sequential_cpu_offload()**, NOT enable_model_cpu_offload() — the latter OOMs in transformer attention ("Tried to allocate 47.98 GiB" on a 14.6 GB T4).
- diffusers **>= 0.32.1** (bare pip install leaves 0.29.0, which has no WanPipeline). Set **HF_HUB_DISABLE_XET=1** (plain HF download stalls otherwise).
- 480x832 portrait, 81 frames, 30 steps, guidance 5.0, seed 42.
- **Cost: ~33 min generation per 5 s clip (39 min total with model load).** An Ep. 3 Short needs 5–6 clips ≈ 3+ h GPU; a 5-min film needs ~30 clips ≈ 16+ h across sessions (12 h session max, idle ~20 min stops it — keep the session alive with a small edit every ~20 min). Quota 30 h/week; ~19.5 h left as of 2026-11-13 (sidebar display is stale — track usage by session time, not the sidebar). HF cache is wiped when the session stops, so every run re-downloads 28.9 GB (~4–5 min). STOP the session immediately when a job finishes.
- Output is 480p — upscale to 720p in assembly; judge the result against the same viewer gate as any other clip (character consistency, style, no garbled text, no extra characters).

## Divide rule — parallelize every build (standing, user decision 2026-11-14)

Divide every video build among MORE agents working in parallel so it takes less time. Independent pieces (script, voice, poster/banner, clips, captions, metadata) each go to their own agent at the same time. Every gate runs its ten reviewers in parallel, then the jury. Only truly dependent steps stay sequential (assembly needs narration + clips; the gate needs the assembled video). Same quality bar and checks, just faster. Parallel reviewers cost the same tokens as sequential ones — only wall-clock time is saved.

## FilmCraft-from-scratch build process — DEFAULT for every scheduled video, ALL schedules (standing, user decision 2026-11-14 ~06:39)

the user approved Letters Part 7 ("that is good video") and ordered this process for EVERY scheduled video, from ALL schedules — the main month schedule, the Letters daily schedule, the Buster & Pip serial, and Green Valley. This is the Part 7 process, proven Sat 2026-11-14: 52 minutes, 19 agents in parallel, QA PASS.

1. **Divide first (Divide Rule).** A coordinator splits the build among parallel agents, each owning one independent piece at the same time: script, cloned voice, poster frame, subscribe banner, clips (one agent per clip or clip set), captions, metadata/publish pack. Only truly dependent steps stay sequential: assembly needs narration + clips; the gate needs the assembled video.
2. **Build from scratch, never reuse.** Every clip, poster and banner is made fresh for this story — no clips reused from earlier parts/films, no reused poster/banner. Character and style locks are repeated verbatim in every clip brief (relative height locked, e.g. "Bruno a head and shoulders taller than Buster"; watercolour-anime style lock; ground level only).
3. **Voice:** the user's cloned voice (Chatterbox Turbo, local), sentence by sentence, Roman Urdu for Urdu lines, always transcribe-checked with Whisper (`--language ur` for Roman Urdu, never forced English) before assembly. His own Voicebox recording, if supplied before a run, is used instead. Narration direction (the user 2026-11-15, from Mino Lee + AniThing): write and deliver the narration for ONE real listener — a specific person, FaceTime energy, calm, like telling a friend a story, never loud or performative. Write the script in speaking tone with pauses and punchline beats marked; the voiceover must sound like a person talking, not reading. **Chatterbox runs must be STAGGERED, never parallel:** each Chatterbox generation holds ~3 GB RAM, and parallel runs on this 6 GB VM OOM-kill each other in rotation (exit 137) — seen 2026-11-15 when three poster-hook agents generated voice at once. One voice generation at a time; the others wait.
4. **Assembly in FilmCraft.** FilmCraft v0.20.1 at `~/workspace/filmcraft/` (`filmcraft-cli` headless). Timeline: poster 0–3 s + story clips + subscribe banner last, captions burned, voice + music mixed, loudness to −14 LUFS. Gotchas (proven): set bitrateMode "crf" + crf 23 (crf alone is IGNORED — default 20 Mbps bloats the file); captions need burnCaptions: true or they stay a separate track; mixed resolutions letterbox, so re-encode clips consistently first. Speed on this VM (~1.5 CPU, no GPU) is ~11 fps render — ffmpeg is ~50x faster for plain joins, so use ffmpeg for a plain join only; use FilmCraft whenever the video needs timeline work (transitions, styled captions, voice/music mix, loudness).
5. **Self-check before delivery.** The coordinator checks the assembled video itself at 10+ timestamps (words vs picture, character height/build/face/clothes across every shot, clip style/quality side by side, voice level in every segment, no silence gaps, no double characters, no sliding feet) and fixes flaws silently — never deliver a flawed version. Then the FULL ten-agent + jury gate runs (parallel reviewers, then jury); upload only jury-PASS videos.
6. **Do NOT use Kaggle, do NOT retry the blocked built-in video generator.** Muse video generation is blocked (lasting 403, country/region). Kaggle was proven (Wan 2.1) then ABANDONED by the user Sat 2026-11-14 ~01:43 ("leave Kaggle") — its session died and all clips were lost. The section below is kept as a record only; it is NOT the build route.

## Build one day ahead — STANDING (user decision 2026-11-14 ~06:54, all scheduled videos, all schedules)

Create every scheduled video AT LEAST ONE DAY BEFORE its upload day. All videos for the coming day must be built and gated the day before, so nothing is delayed. Production runs the day before upload, not the morning of upload day (this supersedes the old same-day-morning production rhythm). The chain after an upload creates the next part's production job for the day BEFORE its upload day, not upload morning. Example: Part 8 uploads Mon 19:30, so Part 8 is built Sun. This does not apply to Viral Daily trend reels — a trend cannot be built a day before it happens.

## Upload route — browser first (user decision 2026-11-14 ~07:01, STANDING, all video uploads)

Upload videos via the BROWSER FIRST, directly. Use connectors after / as fallback if the browser cannot do it. This supersedes the 2026-11-13 "connector first" rule for Instagram Reels (the connector CAN post Reels — it is the fallback, not the first route). the user gave full permission to upload — do not ask him each time. Both Instagram accounts (@usamabkr85 and @animevalleystories) are open in the browser: always switch to the right account and VERIFY the signed-in username before posting; if it is any other account, stop and post nothing. Viral Daily stays browser-only (the connector does not list @usamabkr85).

## Ayushi Gupta tricks that fit brand videos (the user, 2026-11-14)

Source: her reel https://www.instagram.com/reel/Ddo96lHSoOk/ (frame-checked 2026-11-14) + her profile (111 posts, 117,713 followers). She is a beauty/fashion creator; only the tricks below transfer to Anime Valley brand videos. Nothing here changes story, character or style rules.

- **One-word comment prompt, story-tied.** Her best reels get comments 2× their likes with a single-word CTA ("Comment 'Keywords'"). For brand Shorts/reels, ADD a one-word prompt to the caption and the first comment, tied to the story — e.g. "Comment 'ribbon' — what would you tie to the old tree?" The word must be a real answer to the story's question, never random, never a fake reward. The jury must approve the wording; the standing invitation line stays.
- **Proof chips in frame 1 (only when true).** Her hook pairs a big title with real view-count chips (2.6M, 1M, 2.9M). For a Short, a true numeric proof in the poster frame is allowed when the number is real and checkable (e.g. a milestone). Never invent a number.
- **Handle watermark on frames.** A small "@animevalleystories" mark, corner, low opacity, never over the action — so re-shares still credit the brand.
- **Keyword lesson (honest version).** Her "Specific words and phrases" settings trick does NOT push your content to others — that setting only hides posts from your own feed. The real lesson is hers in one line: "Use Relevant Keywords For Your Content" — our AEO/SEO captions already do this; keep the trend's and story's exact keywords in captions and hashtags.
- **Do NOT copy:** her "Follow and comment" double CTA as a daily spam template, comment-for-link shopping CTAs, or any promise of a list/link we do not deliver. Brand captions stay story-first; the one-word prompt is an addition, not the caption.

## Finish honestly

Prove the hardest representative shot before a full batch; inspect actual final artwork, adjacent poses and normal-speed output for crop, anatomy/support/grip, camera, material, captions and consequence. Run checks appropriate to changed areas, retaining valid evidence for unchanged sources. Do not invent visual/listening approval or claim zero errors; record missing modalities and limitations in REVIEW.md.

Deliver HD H.264/AAC MP4 plus the branded Beyondsumi watch/download dashboard and editable source. [Interface branding](references/interface-brand.md) governs pages, not the film's story palette. Show all three editions, with available-file downloads and agent-neutral recreation requests for unmade editions. Verify actual moving pictures and downloads; a poster/timer alone is insufficient. Local URLs require the server; publishing/cloud/GitHub require a separate request. Personal preferences live in [external memory](references/memory.md), project decisions in its concise current record.
