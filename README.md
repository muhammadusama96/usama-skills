# usama-skills

A public collection of 19 AI-agent skills, gathered and battle-tested while building
an anime-film brand and a viral-content channel. They cover making animated films,
writing YouTube scripts and metadata, editing talking-head reels, doing SEO/AEO/GEO,
publishing books on KDP, running a daily viral-news account, and reverse-engineering
how viral videos are made.

Everything here is meant to be **used**: copy a skill folder into your agent's skills
directory (Claude Code, Codex, OpenClaw, Muse, or any host that reads `SKILL.md`
files) and follow its `SKILL.md`. Each skill is self-contained — read its own
`SKILL.md` first; it tells you what to load, what it needs, and what it will not do.

> **Credits first:** several skills in this collection were created by other people
> and are included here with their credit intact — see [Credits](#credits). Do not
> remove the credit lines. Usama's own work here is the curation, the adaptations,
> and the `viral-daily` and `ai-creators-lessons` playbooks.

## Skills at a glance

| Skill | What it does | Who it is for | Needs |
|---|---|---|---|
| [ai-creators-lessons](#ai-creators-lessons) | Concrete rules distilled from Nate Herk, Sirio Berati and Jeff Su: reel pacing, character consistency, prompt formula, skill-building loop | Anyone making AI videos or viral reels | Nothing to install (companion: `herk-edit-kit`) |
| [beyond-artist](#beyond-artist) | Art-direct thumbnails, carousels, posters and social posts; Autopilot turns one video link into tested, finished designs | YouTubers / designers | Image generation; Python for the helper scripts |
| [beyond-seo](#beyond-seo) | Website SEO audits, AEO/GEO (answer-engine + generative-engine optimisation), backlink and competitor research | Site owners, SEO work | Python 3; run `scripts/run.py doctor` first |
| [beyond-words](#beyond-words) | Take a book from niche research through writing, covers, KDP publishing and Amazon ads | First-time and existing authors | Python 3; local tools (no paid SaaS required) |
| [colibri](#colibri) | Notes on running the Colibri LLM inference engine locally (pure C, MoE models streamed from disk) | Anyone wanting local, no-cloud LLM inference | 8 GB+ RAM, 22 GB free disk, internet for model download |
| [facebook-instagram](#facebook-instagram) | Post to Facebook Pages and Instagram Business accounts via the official Meta Graph API (MCP server) | Social-media automation | Meta developer app, long-lived Page token, IG Business account ID |
| [herk-edit-kit](#herk-edit-kit) | Turn a talking-head recording into a finished reel/Short/long-form edit: transcript-driven cuts, captions, motion graphics (HyperFrames + GSAP) | Video editors | Node 22+, FFmpeg, Chrome; upstream repo (see below) |
| [jev](#jev) | Integrate TypeSafe's Jev decision model: typed yes/no, choice, score and box answers with calibrated probabilities | Developers replacing LLM prompt-and-parse with typed judgments | TypeSafe API key for live calls |
| [leanvox](#leanvox) | Text-to-speech, speech-to-text, voice cloning and multi-speaker dialogue via the LeanVox API | Narration and voiceover work | `LEANVOX_API_KEY` from api.leanvox.com |
| [oh-story](#oh-story) | Short-story writing, Chinese web-novel style: emotion-first, one core point, strong opening, lingering ending | Short-fiction writers (Chinese) | Nothing to install |
| [rea-video](#rea-video) | Reverse-engineer how a video was made, shot by shot: live / AI / 3D / animation, captions, audio, pacing — plus a remake plan | Anyone copying a competitor's format | ffmpeg, Python ≥ 3.10; a VLM helps, optional |
| [social_publishing_instagram_cover](#social_publishing_instagram_cover) | Fix a published Reel's cover safely: repost with the new cover, verify live, only then delete the original | Instagram publishers | Linked Instagram connector |
| [sumi](#sumi) | Guided local studio for Japanese Sumi-e animated films (Original / Light / Dark styles), story → art → animation → narration → review | Anime / animated-film makers | Image generation, a narration route, ffmpeg |
| [sumi-elevenlabs](#sumi-elevenlabs) | Connect ElevenLabs for Sumi narration: voices, models, cost estimates, saved preferences | Sumi users who narrate with ElevenLabs | ElevenLabs API key (secure storage only) |
| [sumi-svg](#sumi-svg) | Original layered SVG scenes for Sumi when vector art is requested or image generation is unavailable | Sumi users who want vector art | Python 3 (`scripts/check_svg.py`) |
| [sumi-voicebox](#sumi-voicebox) | Set up free local Voicebox narration for Sumi: hardware/model checks, consented voice profiles, export | Sumi users who narrate locally for free | Voicebox app + local speech model |
| [viral-daily](#viral-daily) | Run a viral-content Instagram account: find what's spiking, rea-video the top reel, rebuild it as your own, post straight away | Viral / news-content accounts | Instagram browser session; `rea-video`; ffmpeg |
| [youtube-agent](#youtube-agent) | 11 focused skills for YouTube: scripts, hooks, titles, thumbnails, SEO, Shorts, viral research, audits, retention | YouTubers (scripts + metadata only) | Python 3 only — no signup, no key, **does not upload** |
| [youtube-automation](#youtube-automation) | End-to-end YouTube channel automation OS: onboarding, voices, video composition, SEO metadata, scheduled publishing | Faceless / automated channels | Python 3.10+, FFmpeg with libass, Node 18+, YouTube Data API v3 |

## Skill details

### ai-creators-lessons
Lessons from three AI YouTubers, measured not theorised. Nate Herk: shots 1.1–1.4 s,
first cut 0.6–1.0 s, speech within 0.1 s, every shot must move, every correction
becomes a permanent skill rule, Roast Room standing review panel. Sirio Berati: a
5-image character sheet as the image reference for every clip. Jeff Su: prompt
formula Task / Context / Exemplars / Persona / Format / Tone, plus Intent Check
before big jobs. **Use:** read `SKILL.md` before making a reel or writing a video
prompt. No install, no keys.

### beyond-artist
BeyondArtist v1.1.0 by Beyond Tahir. Think like a designer, create like an artist:
a nine-step workflow (platform → classify → research → angle → handoff → explore →
create → validate → deliver), a persistent Design Memory library, and an Autopilot
that turns one video link into tested, finished designs. **Use:** read `SKILL.md`,
follow the nine steps; `INSTALL.md` covers setup. The 10 MB
`references/library/design-memory-index.json` is the searchable library index and
is included on purpose.

### beyond-seo
BeyondSEO v2.10.0 by Muhammad Tahir Ashraf (Beyond Tahir). Friendly-advisor SEO:
site audits, AEO/GEO playbooks (answer-engine and generative-engine optimisation),
backlink system, competitor and reputation research, all with evidence and no
invented numbers. **Use:** read `SKILL.md`, then `scripts/run.py doctor` in your
environment before crawling. No model tokens or API keys for the native crawler.

### beyond-words
Beyond Words v1.1.0 by Beyond Tahir. A guided journey for authors: pick a niche
(five researched ideas, one per niche), write, edit, design a cover, publish on
KDP (or Lulu), and market with Amazon ads — with saved project memory and local
scripts. Fonts (Oswald, Playfair Display) are OFL-licensed and included.
**Use:** read `SKILL.md`, then run the guide (`scripts/beyondwords.py guide`).
Its own `LICENSE.txt` is kept in the folder.

### colibri
Study notes on Colibri (JustVugg/colibri), a pure-C LLM inference engine that
streams mixture-of-experts weights from disk so huge models can run without a GPU.
**Important:** Colibri is an LLM engine — it is NOT voice cloning and NOT
text-to-speech. **Use:** read `SKILL.md` for setup (`./start-here.sh`), model
choices and honest limits (small models run on a laptop; 284B+ models are
~1 tok/s on CPU and impractical without a big machine).

### facebook-instagram
Facebook & Instagram MCP server (from shifabaloch13) using the official Graph API
v18.0: Page posts, Instagram media containers, insights — drafts first, human
approval, then publish. No browser automation. **Use:** read `SKILL.md` and
`FACEBOOK_GRAPH_API_SETUP.md`; you need a Meta developer app and tokens (see
`SCOPE-NOTE.md` — the example Page/account lines are placeholders; put your own
IDs in, never in a public file). Without tokens the skill cannot post.

### herk-edit-kit
Nate Herk's edit kit: 15 sub-skills (short-form edit, cut silences, cut mistakes,
storytelling, HyperFrames motion graphics, style library, …) that turn a
talking-head recording into a finished edit. **Included here:** `SKILL.md`, the
15 sub-skill folders and `docs/` (the instruction content). **Not vendored:**
the HyperFrames runtime, `node_modules` and `.git` — install the real kit from
the upstream repo <https://github.com/nateherkai/herk-edit-kit> and run
`npm ci && npm run setup && npm test` there. Needs Node 22+, FFmpeg, Chrome.
Paid services (ElevenLabs Scribe, Kie.ai) are optional; free Whisper works.

### jev
Build with TypeSafe: Jev, a System One (decision) model, answers typed questions
(Choice / yes-no / Score / Box in an image) with calibrated probabilities, so
code can decide instead of parsing LLM text. **Use:** read `SKILL.md` for the
patterns. A live call needs a TypeSafe API key kept in secure storage — installing
the skill alone does not cut token usage by itself. MIT licensed (typesafe-ai).

### leanvox
LeanVox TTS/STT API skill: speech generation, transcription, voice cloning and
multi-speaker dialogue. Tiers: Standard $5/1M chars, Pro $10/1M chars (238+
voices + cloning), Max $30/1M chars (instruction-based voice design).
**Use:** set `LEANVOX_API_KEY` (get one at <https://api.leanvox.com>, free $1
signup credit), then use `scripts/tts.sh`, `stt.sh`, `clone.sh`, `dialogue.sh`.

### oh-story
`story-short-write` (zenstory-ai/oh-story-claudecode): short fiction in the
Chinese web-novel tradition — emotion first, one core point per piece, strong
opening, ending with resonance. Written in Chinese; the workflow files
(`story-router.md`) are included. **Use:** follow the phase table in `SKILL.md`
(set the feeling → outline → draft → revise). Only its writing principles are
adapted here; its setup/dashboard scripts are not used.

### rea-video
Reverse-engineer any video, shot by shot (JuneYaooo/rea-video): is each shot
live action, AI video, 3D, animation, screen recording or a still? What captions,
music, SFX and cuts were used? Then a concrete remake plan. **Use:** install
per `references/setup.md` (ffmpeg, Python ≥ 3.10), then
`rea-video decompose <video> -o <out> --lang en`. A VLM (multimodal model) is
recommended for visual review but optional — and every conclusion needs evidence;
"unconfirmed" is a valid answer, never a guess.

### social_publishing_instagram_cover
A safety workflow for changing a published Reel's cover: never delete the
original first; publish a replacement Reel with the new cover attached, verify
it live (cover, video, caption, account), and only delete the original after
confirmation. If the connector is not linked, hold — do not delete.
**Use:** read `SKILL.md` when a Reel cover needs fixing.

### sumi
Beyondsumi · Sumi v1.0.1 by Beyond Tahir: a guided local film studio for
Japanese Sumi-e animated films in three styles (Original / Light / Dark).
Story → direction → original artwork → real-anime video loop (chained clips,
one locked character description, ground-level movement) → narration → review
gates → delivery dashboard. Includes the Green Valley playbook (the production
workflow proven on real films), caption/audio/sync rules, and a ten-agent +
jury upload gate. **Use:** read `SKILL.md`, load only the references your task
needs. Companion skills: `sumi-elevenlabs`, `sumi-svg`, `sumi-voicebox`.
**Note:** the bundled sound-bank audio (~220 MB of WAV) is NOT in this repo —
see [What's not included](#whats-not-included-and-why).

### sumi-elevenlabs
ElevenLabs narration setup for Sumi: connect securely, choose voices/models,
estimate character-based costs, save approved preferences. Setup never
authorises a paid take. **Use:** read `references/setup.md`; keys go in the
OS keychain or environment, never in chat, files or a ZIP.

### sumi-svg
SVG studio for Sumi: original layered vector scenes when vector art is
requested or image generation is unavailable. Self-contained paths/gradients,
no traced frames, no remote assets. **Use:** read `references/workflow.md`
and the selected style guide, prove one complete scene, then batch.
Check with `python3 scripts/check_svg.py artwork.svg`.

### sumi-voicebox
Free local Voicebox narration setup for Sumi (upstream: jamiepine/voicebox):
hardware/model-size checks, consented voice profiles, export. **Use:** read
`references/setup.md`; run `python3 scripts/probe.py` for a read-only status
check. No model is downloaded and no backend is exposed without your choice.

### viral-daily
The playbook for a viral-content Instagram account ("Viral Daily"): check
what's spiking every few hours, rea-video the top competitor reel first, then
rebuild it in the same format with your own images, words and edit — real
footage first, fast cuts, word-by-word captions, AEO/SEO/GEO + hashtags, and
post straight away via the browser. Includes the Ayushi Gupta comment-CTA
tricks and the Geolyth "Last 24 Hours" world-news roundup pattern.
**Use:** read `SKILL.md`; adapt the example account handle (`@usamabkr85`)
and the local paths (`~/workspace/second-instagram/…`) to your own setup.
This account does NOT use the brand ten-agent + jury gate — it has its own
light check.

### youtube-agent
Free MIT pack of 11 skills by Jake Schincariol
(<https://github.com/Jakeschincariol/youtube-agent-skill>): yt-audit,
yt-chapters, yt-comment, yt-edit, yt-package, yt-plan, yt-retention,
yt-script, yt-seo, yt-shorts, yt-viral — scripts, hooks, titles, thumbnails,
descriptions/tags, Shorts ideas, viral research, planning. **Use:** read a
skill's own `SKILL.md` and follow it; the six Python tools run on plain
Python 3 with no extra libraries. **Scope:** scripts and metadata only —
nothing here uploads, schedules or posts.

### youtube-automation
Universal YouTube Automation OS v2.0.0 (Antigravity OS): onboard/model any
channel, 400+ neural voices, dynamic video composition with synced SFX,
rotating subtitles, vidIQ-style SEO metadata, 100-day scheduled publishing.
**Use:** read `SKILL.md` and `SCOPE-NOTE.md`. In the original setup only its
SEO-metadata and subtitle-placement parts are used — its video generation,
faceless presets and autonomous scheduling are intentionally NOT used.
Needs Python 3.10+, FFmpeg with libass, Node 18+, YouTube Data API v3.

## Install

```bash
git clone https://github.com/muhammadusama96/usama-skills.git
# Copy the skill(s) you want into your agent's skills folder, e.g.:
cp -r usama-skills/sumi ~/.claude/skills/        # Claude Code
cp -r usama-skills/youtube-agent ~/.claude/skills/
# …or point your agent at this repo and let it read the SKILL.md directly.
```

Each skill folder is independent — take one, take all, your choice. After
copying, read that skill's `SKILL.md` and follow its own setup steps. Replace
any example account handles, paths (`~/workspace/…`) and placeholder IDs with
your own. Never put API keys, tokens or passwords in a skill file — use your
OS keychain, environment variables, or your agent's secure vault.

## What's not included and why

- **Sumi bundled sound-bank audio (48 WAV files, ~220 MB):** excluded for
  size. The text catalog (`sumi/assets/sound-library/catalog.json`), the
  per-mood `score.json` files, the licences and the generation scripts
  (`generate_sfx.py`, `library.py`, `music.py`) ARE included — the audio can
  be regenerated, or use your own music.
- **herk-edit-kit runtime:** the HyperFrames app, `node_modules/` and `.git`
  (1.5 GB upstream) are not vendored. The 15 sub-skills and docs are included;
  install the runtime from <https://github.com/nateherkai/herk-edit-kit>.
- **Build artifacts:** `__pycache__/`, `*.pyc`, lock files.
- **No credentials, tokens, keys, emails or private account IDs:** none were
  in the source skills, and the staging pass removed the few personal
  identifiers that were (a Kaggle account handle + notebook URL, one Facebook
  Page ID, one display-name fragment). Example IDs in the skills are
  placeholders (`17841400000000000`, `00000000000000000`) — replace with
  your own. If you ever find a real secret in this repo, open an issue and
  it will be removed immediately.

## Credits

- **Beyond Tahir** — `sumi`, `sumi-elevenlabs`, `sumi-svg`, `sumi-voicebox`,
  `beyond-artist`, `beyond-seo`, `beyond-words`. The Beyond Sumi / BeyondSEO /
  BeyondArtist / Beyond Words systems are his work; the adaptations and
  playbooks layered on top are the collector's.
- **Jake Schincariol** — `youtube-agent` (MIT, see its `LICENSE`).
- **JuneYaooo** — `rea-video` (<https://github.com/JuneYaooo/rea-video>).
- **Nate Herk** — `herk-edit-kit` and the Nate Herk lessons in
  `ai-creators-lessons` (<https://github.com/nateherkai/herk-edit-kit>).
- **Sirio Berati, Jeff Su** — lessons in `ai-creators-lessons`.
- **Ayushi Gupta (@shopwithayushi_)** — comment-CTA tricks in `viral-daily`.
- **JustVugg** — `colibri` notes (<https://github.com/JustVugg/colibri>).
- **TypeSafe** — `jev` (MIT).
- **zenstory-ai** — `oh-story` (<https://github.com/zenstory-ai/oh-story-claudecode>).
- **Antigravity OS** — `youtube-automation`.
- **shifabaloch13** — `facebook-instagram` MCP skill.
- **LeanVox** — `leanvox` (API at <https://api.leanvox.com>).
- **jamiepine** — `sumi-voicebox` upstream Voicebox
  (<https://github.com/jamiepine/voicebox>).
- **Muhammad Usama** — collection, `viral-daily` and `ai-creators-lessons`
  playbooks, and the adaptations (Green Valley playbook, FilmCraft process,
  gate rules) inside `sumi` / `viral-daily`.

Usama's own contributions in this repo are MIT licensed (see `LICENSE`).
Third-party skills keep their own licences where they ship one
(`beyond-words/LICENSE.txt`, `youtube-agent/LICENSE`); where a skill ships no
licence file, its original author's credit above stands and the usual rule
applies — credit the creator, don't claim their work as yours.

## Updating

This collection is updated weekly — see `SYNC-NOTE.md` for how the sync
works. If a skill changed upstream, the update pulls the change, re-scrubs
personal details, and updates this README.
