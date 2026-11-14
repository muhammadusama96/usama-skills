> **HISTORICAL — SUPERSEDED (merge note, 2026-11-14).** This file still describes
> the built-in video-generator chained-clip method as the working method. That
> generator is BLOCKED (lasting 403, country/region) and Kaggle was ABANDONED by
> the user 2026-11-14. The current default is the **FilmCraft-from-scratch Part 7
> process** — see the merged skill root `SKILL.md`, Track 1. This file is kept
> whole as the record of what was proven; do not follow it as the build route.

# Green Valley Playbook — compiled knowledge for making this kind of video

Purpose: so the next story film like "The Girl from the Green Valley"
is made in one straight run from this playbook, without repeating the
trouble of October 29-31, 2026. For a new film with character movement,
follow this playbook FIRST, before the older Sumi image/pose workflow.
That older workflow is the fallback only if the user explicitly asks
for it. This playbook is the default, by the user's decision 2026-10-31,
confirmed 2026-11-01: "compile it and add it to the beyond Sumi skill
so next time we will make this kind of videos you will only use that
information and create it."

It builds on, and does not replace, the shorter
[real-anime video loop](real-anime-video-loop.md). Read both before a
new film. Original Sumi instructions in SKILL.md are kept; where this
playbook and an older Sumi rule conflict for a moving story film,
this playbook wins, because it is what actually passed the user's check.

## 0. The user, in one paragraph

- the user, short messages, plain language, no small talk. Short, plain,
  concrete answers; expand only when asked.
- When he pastes a course discussion prompt, draft in the first person
  as if he is answering. That is separate from film work.
- He has a Windows PC, no PC is paired with Muse. Never imply pairing
  exists. Voicebox runs on his Windows PC, not on this Linux VM.
- Chat file transfer is unreliable for him in both directions, even
  for one audio file or a zip. Large films must go by Muse storage
  download link, with expiry stated, and anyone with the link can
  open it until expiry.
- He will judge a film himself, plainly. If a version fails, do not
  defend it and do not make him the tester for the next flawed version.
  Check it yourself first, loop silently until it passes, and disclose
  any remaining flaw honestly instead of calling it perfect.

## 1. What kind of video this is

- A gentle story film, 1 minute for a test, 5 minutes for a full film
  — but 5 minutes is a TARGET, not an exact length (see section 12:
  if the voice and script need more pictures, add them and let the
  film run longer).
  Example: "The Girl from the Green Valley" — Ayaan visits his aunt's
  hillside house in a green mountain village, meets an unnamed young
  woman in the meadow, goes out every day, first talk at the stream,
  waterfall, sunset, old tree, notebook and pine cone farewell, bus
  leaving, promise to return.
- Constraints that must survive every version, without reintroducing
  dropped details: the girl is left completely unnamed, in story,
  captions, prompts and filenames, in every version and every language.
  Do not name her, do not guess a name for her.
- Output spec for the good versions: 1280x720, 24 fps, H.264/AAC MP4.
  Do not change fps to fake smoothness — see section 3.

## 2. Do NOT start with these — they all failed, with reasons

1. Still pictures with a slow camera zoom (ffmpeg zoompan).
   Result: 4-picture film, 20-picture film, 60 fps and 180 fps versions.
   They are still pictures, not movement. Raising fps only smooths
   the camera zoom, it does not move characters. the user said the 24 fps
   film "did not move like real anime". Do not offer fps as a fix.
2. Walk sheets / pose cycles.
   A sheet returns 18 boxed poses, not 24, even when asked for 24.
   Cutting them (grid 6x3, central crop of each cell, paper
   colour-keyed) leaves thin paper box lines, and cycling them gives
   a walk repeating every half second with sliding feet, and a
   head/body/hair/clothes frozen except the changed part.
   A face-swap portrait panel for dialogue is NOT acceptable:
   a talk test must show the full body in the scene, with only the
   mouth moving, not whole faces swapping.
   Even the proper redo — mouth-only edits of one base scene,
   continuous walk with no standing pose — was rejected as
   "not real". Cycling still drawings, however clean, does not
   meet the bar for real anime movement.
3. Independent video clips, each generated on its own.
   Loop 1 failed this way: motion inside each clip was continuous,
   but characters and style changed between clips (girl turned
   realistic, different boy/girl in one clip, different boy later),
   one clip broke story order, and walking was mostly in-place /
   camera pan. Do not splice independent clips and call it one film.
4. Aerial / top-down backgrounds for a walking character.
   Ayaan walking huge across a top-down village looks like he is
   walking over a map of houses. Use ground-level backgrounds only
   for walking.
5. Scene pictures that already contain large characters as walk
   backgrounds. That gives double characters at two scales.
   Use backgrounds with no large characters for walk scenes.
6. Fixed 10-second caption lines.
   Captions must follow actual voice timing, not the clock. See
   section 5. A caption change in the middle of a picture, or a
   caption during a music-only gap, is a failure.

## 3. The method that worked — chained video clips

Use built-in video generation, chained, not independent:

- 10 seconds per clip, 6 clips per minute, 30 clips for 5 minutes.
- Chain every clip from the previous clip's snapshot
  (`resume_from_snapshot_id` from clip 1 onward). This is what
  locked identity in loop 2, where independent clips in loop 1 failed.
- If a chained-resume call fails with an invalid resume id, do NOT
  retry that exact request in the same cycle. Generate that beat
  independently, with the full locked descriptions, and report
  that it was independent. In minute 5, that failure is why the
  pine-cone handing shot was missing at first, until a fresh
  independent handing clip was made in the fix round.
- HARD LIMIT, observed: 6 video generations per user message,
  including videos made by subagents. A user approval for "up to 20"
  does not override it. Plan in rounds of 6 clips = 1 minute.
  A 5-minute film therefore takes 5 rounds: minute 1, then 2, 3,
  4, 5. Reuse good minutes unchanged; regenerate only bad clips.
  Do not promise 20 clips in one round, and do not claim a film
  is complete when only some minutes are done.
- Free GitHub tools were evaluated and are NOT a shortcut here:
  no GPU on this VM (`nvidia-smi` not found), 7.7 GB RAM with only
  ~400 MB free. Wan2.2 / LTX-Video, ComfyUI video and ToonCrafter
  need GPU/VRAM; OpenToonz needs hand-drawing; RIFE only
  interpolates existing motion. Check GPU and free RAM before
  proposing a GitHub tool. Paid/hosted character-consistent video
  needs separate approval — never pay or sign in without it.

## 4. Character lock and style lock — do these before any clip

Write ONE locked description per character and repeat it verbatim
in every clip prompt, for every minute of the film.

Example only, not defaults for other stories — Green Valley:
- Ayaan: messy dark hair tied in a small topknot with a light cloth
  tie, blue patterned open robe over grey, dark trousers, sandals,
  woven backpack.
- Girl (unnamed): black hair tied low with a green cloth, green
  patched robe with blue patches, brown sash, woven basket of
  wildflowers.

For a new story, write the same kind of lock first: face, hair and
tie/cloth, robe and colours, trousers/sash, shoes, signature prop.
Then never change it mid-film.

Style lock, in every prompt: painted watercolour-anime, soft brush,
flat anime colours. Explicitly forbid photorealistic / live-action
look, realistic skin texture, and photographic lighting. Also
explicitly forbid readable text, writing, signs and letters in the
frame — the generator invents wrong-script text (Part 2, 2026-11-05:
Devanagari text appeared on the bus). No text, no watermark.
After each clip, check its frames against a reference frame of the
other character. If a character looks realistic, reject the clip,
even if face and clothes match. This was loop 3's fix: loop 2
passed identity but Ayaan drifted from watercolour-anime in clip 1
to more realistic in clips 2-3, while the girl stayed anime.
the user named it exactly: "the man is looking too real as compared
to girl." Loop 3 remade only Ayaan's clips 1-3 in anime style and
reused the girl's clips unchanged. Reuse good clips; regenerate
only the bad ones.

Framing and motion, in every prompt:
- Ground-level only. Travelling walk across a ground plane, feet
  planting, camera following or static — not walking in place
  while the camera pans.
- Hair, robes, flowers, clouds, stream and trees must move.
  A frozen background breaks the check even if the character moves.
- Story order kept, in the clip order of the script. No
  boy-and-girl-together scene before they meet. No double
  characters, no paper lines, no face panels.

Character and animation consistency — added 2026-11-09, after the
user caught two flaws the jury missed in jury-PASS files:
- LOCK RELATIVE HEIGHT in every character description, not just
  looks: state each character's height compared to the others
  (e.g. "the girl is nearly as tall as Ayaan, her head reaches his
  chin, a young woman, not a child"). Absolute size changes with
  camera distance, so the check must compare characters standing
  together in the same shot. In Part 2 Short 1 the girl was nearly
  Ayaan's height in one shot, child-sized with her head at his
  shoulder in the next, then nearly his height again.
- CHECK CLIPS AGAINST EACH OTHER, not just against a reference
  frame: pull one frame from every clip and lay them side by side.
  Same rendering style, same line weight, same texture, same
  character design across all clips. In Buster & Pip ep. 1 some
  clips were flat watercolour cartoon and others near-photorealistic
  (Pip a realistic bird in clips 3–4, a simple cartoon bird in
  clips 1 and 5) — each clip alone looked fine, the mismatch only
  showed side by side. Any clip that looks like a different cartoon
  is a blocking FAIL: regenerate it with a stronger style lock.
  Both checks are mandatory in the gate (Section 10) for every
  film and Short before delivery.
- COMPARE THE FACE, not just palette and style: lay the same
  character's face side by side across clips — eyes, muzzle, head
  tuft, ears. Buster & Pip ep. 2 (2026-11-09): every clip was
  flat watercolour and every Buster was a brown dog, so the
  builder's style check passed — but the face changed design
  three times (flat watercolour → orange Disney-style close-up
  with lashed eyes and spiky tuft → light-tan big-eyed puppy →
  medium-brown dog with smaller eyes), and the gate caught it.
  A clip that keeps the palette but changes the face is still a
  blocking FAIL. Regenerate with a reference frame of the locked
  design (e.g. an early frame of the good clip) fed to the
  generator, and re-check the faces side by side.
- Video budget note: a build run can generate at most 6 videos.
  If a gate fails and clip regenerations are needed, they go in a
  follow-up job with a fresh budget — do not try to squeeze them
  into the same run, and do not schedule an upload for the
  gate-failed file.

## 5. Voice, captions and music — the exact workflow that worked

Voice source — TWO approved routes, in this order:
1. the user's own Voicebox recording, made on his Windows PC, if he
   sends it. Do not replace a supplied recording with anything else.
   If chat upload fails, the working route was SwissTransfer: he
   pastes a link, Muse downloads the files with a browser task, no
   sign-in, no password guessing.
2. the user's CLONED voice (approved by him 2026-11-05, after he
   listened to the test and said it sounds good): generated locally
   with Chatterbox Turbo 350M, MIT licence, local only, no cloud,
   no API key, from a clean 5–10 s sample of his own voice only.
   Setup: venv at ~/workspace/voice-clone-local/venv, script
   ~/workspace/voice-clone-local/generate_test.py, reference
   ~/workspace/films/voice-clone-test/usama-voice-sample-8s.wav.
   Only his own voice, with his permission, for his own films —
   never anyone else's voice, never a cloud voice service.
   NEVER use a cloud TTS/cloning service (LeanVox, Fish Audio,
   ElevenLabs) for his voice — he rejected that route.

Cloned-voice rules (learned making Part 2, 2026-11-05):
- Generate the narration FIRST, before any video clip, in
  sentence chunks, in story order. The real voice durations then
  drive the clip timing (see section 11) — never the other way
  round.
- Generation runs at ~20x real time: ~200 s of narration takes
  roughly 65–70 minutes in one loaded session. Run it in the
  background and allow that time.
- The raw clone is quiet: boost it +6 dB at assembly (Part 2
  measured voice windows −22 to −24 dB after the boost, music
  tails −38 to −39 dB, peak −2.7 dB, no clipping).
- If the user sends his own Voicebox audio before a run, use his real
  recording instead of the clone. Never finalize a music-only
  version as the final film while voice is still possible.

Split: 10 intervals, roughly 30 seconds each, about 600 words total
for 5 minutes. Name files interval-01 through interval-10, one
preset voice, WAV, in order. Word counts for Green Valley:
65, 60, 64, 62, 60, 68, 69, 56, 67, 29.

Actual Voicebox durations are NOT 30 seconds each. Verified:
01 = 21.76 s, 02 = 16.12 s, 03 = 20.72 s, 04 = 19.48 s,
05 = 18.66 s, 06 = 19.96 s, 07 = 22.62 s, 08 = 15.84 s,
09 = 21.34 s, 10 = 9.06 s. Total speech 185.56 s, not 300 s.
Place each interval at its planned 30-second slot (0, 30, 60,
90, 120, 150, 180, 210, 240, 270 s). Music fills the gaps.
Do not bunch voice at the start, and do not rush or pad voice.

Captions: line-level sync by word count within each interval's
real duration, NOT fixed 10-second lines, and NOT word-by-word
when no word timings exist — say so plainly. No caption in
music-only gaps. Example, minute 1: interval 01 lines
0-5.69, 5.69-15.73, 15.73-21.76 s; interval 02 lines
30-34.84, 34.84-38.60, 38.60-46.12 s; no caption 21.76-30 s
or 46.12-60 s. Apply the same word-count method to every
interval, and record the caption file per minute.

Burning captions into a vertical video (lesson 2026-11-13, Nvidia
reel): do NOT use the ffmpeg `subtitles` filter with an SRT — it
converts to ASS at the default 384x288 PlayRes, so a FontSize of 42
renders ~4.4x too big, fills the frame and overflows the edges.
Write an .ass file instead with PlayResX/PlayResY set to the video
size (720x1280 for a Reel) and the style FontSize in real pixels
(44 at 720 wide), then burn with the `ass` filter. Check the result
with frames at several timestamps before calling it done — the
first render of this reel failed exactly this way and was caught
by the frame check. Also: a `$` inside a drawtext string in a
double-quoted shell command is eaten by bash (`$500` became `00`) —
escape it as `\$` or the title loses its first characters.

Music: Sumi bundled "Tender Connection"
(`~/workspace/custom-skills/sumi/assets/sound-library/bundled-bank/music/tender/preview.wav`,
28.667 s, looped, faded in/out), sidechain-ducked under voice
(ffmpeg filter on this system is `sidechaincompress`, not
`sidechaincompressor`). Voice must be clearly louder than
music-only gaps. Check levels, for example voice ~-20 dB
versus music gaps ~-30 to -40 dB in the good minutes.

Narration vs dialogue, and lip-sync — state this honestly
every time it matters:
- Narration intervals (minute 1, intervals 1-2) must NOT be
  lip-synced onto a character's mouth. Characters walk, look
  and stop while narration plays over them.
- Dialogue intervals are genuine speaking passages only, for
  example interval 5's stone line ("Not that stone — that one
  is loose. Step here."), interval 8's line ("I came here to
  visit my aunt, but I kept coming back every day because
  of you."), and interval 9's promise ("Then come back next
  summer… The mountains will still be here. And so will I.").
  Show the speaker full body in the scene, mouth moving as
  generic anime talking. Do NOT claim exact phoneme lip-sync:
  the video tool does not take audio for lip-sync, so mouth
  movement is generic, not word-perfect. A medium scene shot
  is acceptable; a face panel is not.

## 6. Minute-by-minute structure that worked for 5 minutes

Minute 1 (0-60 s, intervals 1-2, loop 3): Ayaan village path,
hillside path, balcony with tea, girl meadow walk with basket,
girl looking at clouds, wide meadow ending.
Minute 2 (60-120 s, intervals 3-4): girl smiling, Ayaan watching
from a distance, milk from neighbour's house, water from spring,
little shop, road past meadow/stream/red-roof rose house,
hello from far, shy smile and nod.
Minute 3 (120-180 s, intervals 5-6): stream stones, first talk,
girl showing flowers/birds/paths, hidden waterfall, sunset spot,
old tree reading.
Minute 4 (180-240 s, intervals 7-8): quiet valley without her,
stream, gold evening, walk to old tree, notebook with pressed
wildflower given, Ayaan speaking quietly.
Minute 5 (240-300 s, intervals 9-10): quiet then same smile,
pine cone given, promise spoken, bus leaving, pine cone held
tight, closing valley, promise to return. Music fills the long
tail after interval 10 ends at 279.06 s, to 300 s.

Minute 5 fix, learn it: the first minute 5 assembly had no
explicit handing shot and bus/pine visuals ~10-15 s late
versus voice. The fix was one independent handing clip and
reordering to smile / handing / bus / pine held / wave (in
the music gap after 39.06 s of the minute, so no caption
contradicts it) / closing valley. After the fix, pine held
was exact (visual 30-40 s of the minute against caption
30-36.87 s) and bus was much closer (visual 20-30 s against
caption 14.65-21.34 s, then music gap). Handing runs just
after its caption line — disclose that trade-off, do not
claim it as word-perfect. Clip boundaries at 10 seconds
will never line up exactly with every caption line; keep
visuals in story order and as close as the 10-second grid
allows, and say so.

## 7. Assembly, checking, and delivery — in this order

Assembly per minute, then for the full film:
- Re-encode every clip individually to 1280x720, 24 fps, 10 s
  BEFORE concatenating. A direct concat of mixed resolutions
  truncated an earlier build to 39.776 s.
- Join minutes in order, each already containing its own
  voice, music and captions. Do not re-time voices or captions
  at join time, and do not add visible AI labels, watermarks,
  or new text to the MP4.
- ffmpeg filter outputs used twice need an explicit `asplit`:
  if one labelled stream feeds two filters (e.g. narration to
  both sidechaincompress and amix), the second consumer silently
  gets nothing and the voice vanishes from the mix — the build
  succeeds and the file plays with music only. Buster & Pip ep.
  2 (2026-11-09): first build lost all story narration this way;
  fixed with `asplit=2` and a rebuild. Always verify voice is
  present in every story second of the finished file (per-second
  RMS), never trust a clean ffmpeg exit code.
- Verify with ffprobe: duration, size, 1280x720, 24 fps,
  H.264/AAC. For a full film: 300.000 s, 7,200 frames.
- Verify generated clips with ACCURATE seek: `ffmpeg -ss`
  AFTER `-i`, never before it — fast/keyframe seek (`-ss`
  before `-i`) can return a frame ~1 s off and hide a mid-clip
  turn. Buster & Pip ep. 2 round 2 (2026-11-09): the builder's
  fast-seek frames missed Buster turning to camera at raw-clip
  ~3.9–4.7 s, so a Disney front face shipped in the "clean"
  beat-6 window; the jury caught it with accurate-seek frames
  and scene-cut detection. Sample a face-critical clip at
  ≤0.5 s intervals across the WHOLE clip, plus scene-cut
  detection, before assembly.
- NEVER stitch "clean windows" from different generations for
  a face-critical beat: the morph moves to the cut points and
  the beat becomes three different dogs. Generate ONE
  consistent clip, in profile/three-quarter view where the
  design holds. Front-facing generation drifts to a Disney
  face (tuft, eyebrows, big round eyes) even with those
  features explicitly excluded — if a front face appears
  ANYWHERE in a raw clip, the clip is unusable, not trimmable.
- Check a new clip's opening frames for story-breaking props:
  a hanging basket/nest under a market awning reads as a second
  nest (ep. 2 round 2, beat-4 opening).
- Check frames, at least at 5, 15, 25, 35, 45, 55 s per minute,
  and for a full film at 5, 65, 125, 185, 245, 275, 295 s,
  plus the minute-5 beats at 265 s (bus, music gap, no caption)
  and 275 s (pine held, pine caption).

Viewer gate — deliver ONLY if all pass, and do not deliver
a version that fails it for the user to test:
- Same characters, same face/hair/clothes/style, in every clip.
- Continuous motion, travelling walk, moving hair/clothes/
  clouds/stream, background not frozen.
- Story order correct, no double characters, no giant figure
  over an aerial background, no paper lines, no face panel.
- Captions match actual voice timing, no caption in music gaps,
  voice clear, music ducked.
- Specs verified as above.
- If any item fails, hold the film, fix it in the loop, and
  do not deliver it as "real anime". Disclose any remaining
  caveat (for example, foot planting checked from clip frames,
  not certified for all 7,200 frames; dialogue as generic
  anime talking, not phoneme lip-sync). Do not call a version
  flawless or perfect when a known caveat remains.

Delivery, learned the hard way:
- Chat attachments fail for the user for large files, in both
  directions. Use a Muse storage download link for large films.
- Muse storage size limit, observed: files around 94 MB succeed,
  134 MB fails with HTTP 413 Payload Too Large. A 300-second
  film at default encoding was 134 MB, so compress before
  uploading: re-encode with CRF 28 (1280x720, 24 fps, AAC 128k)
  gave 77 MB, 300.0 s, frame at 275 s checked sharp. Always
  check a compressed frame for sharpness before delivering it.
- State the link expiry in Riyadh time, and state that anyone
  with the link can open it until expiry.
- Upload approvals can time out while the user is offline
  (approval_expired, then timed out after ~30 minutes), with
  nothing uploaded. If that happens, do not claim a link exists.
  The film file stays ready; a fresh upload needs him online
  to approve it. Do not keep retrying timed-out uploads
  silently.

## 8. Working silently, and auto-starting the next minute

When the user says "carry on, don't bother me until it is like
real anime", or "auto start the next, don't ask again":
- Work in background rounds, 6 clips per round, and do not
  message him with intermediate flawed versions.
- After a minute passes, auto-start the next minute, then
  the join, then the check, without asking him to say
  "continue" each time, until the full film is checked and
  ready to deliver.
- When he asks "are you doing the job?", answer honestly
  with the minute-by-minute status and the one blocker,
  for example the per-round video limit, not with a promise
  of a time you cannot guarantee.

## 9. Publishing for money — separate from making the film

Making a good film does not by itself earn money, and this
playbook does not promise earnings:
- No Facebook or Instagram account was connected to Muse
  (checked 2026-11-01), and YouTube has no direct upload
  connector — YouTube is via YouTube Studio in the browser
  after sign-in.
- New accounts need the user's own email/phone verification.
  Guide him step by step (choose one name/handle everywhere,
  YouTube channel, Facebook Page not just a personal profile,
  Instagram Professional/Creator linked to that Page via
  Accounts Centre, 2-factor authentication, never buy followers),
  and do not create or verify accounts alone for him.
- Monetization needs platform eligibility first (followers /
  subscribers, watch time, approved monetization account) —
  a new account with one video does not earn on day one.
- Before publishing for money, check whether the music is
  cleared for commercial use. Sumi "Tender Connection" was
  used for the film itself; that is not, by itself, proof
  it is cleared for monetized public posting. If in doubt,
  swap it for a cleared track before publishing, and do not
  publish exact post copy without the user's approval of
  that copy, account, audience and time, per the social
  publishing rules.
- Format for publishing: full horizontal film for YouTube
  long-form and Facebook video; short vertical clips for
  Instagram Reels / Facebook Reels / YouTube Shorts, not
  the full horizontal film pasted into Reels.

## 10. Four-reviewer voice-sync gate — added 2026-11-03, mandatory every time

The single-agent viewer gate in earlier sections is no longer enough. Before delivery, four independent reviewers must check the film (voice-to-video sync, caption timing, character/story order, audio), each reporting PASS/FAIL per minute with timestamps. See the "Four-reviewer voice-sync gate" section in SKILL.md for the strict voice-matching rules. Any FAIL blocks delivery; fix it and re-run all four reviewers on the fixed version.

Character and animation consistency — added 2026-11-09, after the
user caught two flaws the jury missed: the character/story-order
reviewer MUST compare the same character across every shot (relative
height to the other characters, build, face, clothes) and MUST compare
every clip's rendering style and quality against every other clip,
side by side. A character who changes size, or a clip that looks like
a different cartoon, is a blocking FAIL. Full lesson and lock wording
in Section 4 and in SKILL.md.

## 11. Audio-video sync check — added 2026-11-05 after Part 2 mismatch, MANDATORY

What went wrong in Green Valley Part 2 (2026-11-05): the user watched the
finished film and said the video and audio do not match — and he was right,
even though the build's own review had claimed sync PASS. The diagnosis,
measured from the actual film (full record:
`films/green-valley/part2/full/SYNC-FIX.md`):

- The AUDIO was correct. Cross-correlation of the final film's audio
  against each narration interval wav showed every interval landing
  within 0.15 s of its intended 30 s slot (normalised correlation
  ~0.98). The narration was never shifted; the captions were also
  correct, because captions and voice are both timed from the same
  narration manifest.
- The VIDEO was wrong. The 30 clips were generated in plain story
  order, one story beat per 10-second clip, with NO anchoring of each
  clip to the narration playing during that clip's 10 seconds. The
  narration runs in 30-second slots with 10–13 s music gaps in
  minutes 1–2 (intervals only ~17–20 s long inside a 30 s slot), so
  the narration's beats land LATER than the video's beats. The video
  therefore ran ahead of the voice — by up to ~50 s in minutes 1–2
  (balcony shown at 31.5 s while the aunt narration played; red-roof
  house shown at 55 s while its narration comes at ~102 s; the girl
  already standing with Ayaan at 115 s while the reunion narration
  comes at ~133 s). Later intervals fill their slots almost fully
  (interval 7: 24.0 s, interval 10: 29.7 s of 30 s), so the drift
  shrank back to ~0–8 s by minutes 4–5 — which is why the second
  half of the film looked fine and the first half did not.
- Why the gate missed it: the build ran only ONE agent's four
  self-review passes (the token-saving rule was used to skip the
  mandatory four-reviewer gate for a full film). That self-review
  checked (a) captions against voice timing — correct, because both
  come from the same manifest, so they agree with each other even
  when the picture is wrong; and (b) frames against STORY ORDER —
  the clips are in story order, so the sequence looks right as
  stills. It never checked (c) the spoken words against the picture
  AT THE SAME TIMESTAMP. That is the check that catches this failure.

THE RULE — the gate must verify spoken words against the picture,
at many timestamps, from the actual audio and the actual frames:
- At least 10 timestamps spread across the whole film (not only the
  second half, and not only the beats that already look right).
- At each timestamp, identify the words actually being spoken at that
  second — from the real audio (cross-correlate the interval wavs
  against the film audio, or transcribe it) — and look at the frame
  at that same second, and ask: does this picture show what those
  words describe? A later story beat must never appear while an
  earlier narration is still playing.
- Caption timestamps alone are NOT enough. Captions are timed from
  the same manifest as the voice, so caption-vs-voice agreement
  proves nothing about the picture. A gate that only checks captions
  against voice will pass a film whose pictures are 50 seconds early.
- The token-saving rule NEVER overrides this gate for a full film.
  A single agent's self-review is not a substitute for the mandatory
  four-reviewer gate on a full film. If tokens are short, shrink
  something else — never this check.

THE ASSEMBLY RULE that prevents it — verify interval-to-clip
alignment BEFORE the full join:
- Before assembling, build a window-to-clip table: one row per
  10-second window, listing (1) the narration playing in that
  window (sentences and their real times, from the manifest), and
  (2) the clip whose picture shows what that narration describes.
  Check every row. A clip may only go in a window whose narration
  it illustrates; a music-gap window may only hold a neutral
  landscape/transition clip, never a story beat from later in the
  film.
- If a window's narration has no matching clip, do NOT place a
  wrong-beat clip there. Regenerate a clip for that beat, or hold
  the film and disclose the exact mismatch (window, words, picture
  shown) instead of delivering it.
- After the join, run the two separate checks: (1) audio check —
  cross-correlate each interval wav against the film audio and
  confirm every interval lands within ~0.2 s of its slot;
  (2) picture check — the 10+ timestamp words-vs-picture check
  above, from the actual frames. Record both in REVIEW.md.
- Fixing a mismatch does NOT mean re-timing the audio. In Part 2
  the audio was right and the video was wrong, so the fix was to
  re-sequence the video clips to the narration and reuse the
  original audio track verbatim (script:
  `films/green-valley/part2/fix_sync.sh`; fixed file:
  `… - SYNC-FIXED.mp4`). Shifting correct audio to match wrong
  pictures would have broken the ending instead. Diagnose first,
  from the real audio and frames, then fix whichever side is wrong.

  TEMPO MATCHING — added 2026-11-05, user decision: narration and
  video must match each other exactly — the scenes must be the exact
  scenes the narration describes, at the moment it describes them.
  To get that exact match, adjust the tempo on whichever side needs
  it: slow the narration down if it is running ahead of the
  pictures; slow the video down if the pictures are passing too
  fast for the words; speed the video up if it is lagging behind
  the words; speed the voice up a LITTLE if it is slightly behind
  — only a little, so the voice still sounds natural and like
  the user, never chipmunk-fast. Any of these is allowed; the exact
  match is the goal, and no side is untouchable. Do not stretch the
  voice so far that it sounds wrong, and do not stretch the video
  so far that movement looks frozen or rushed — small tempo changes
  only, and re-check the 10+ timestamp words-vs-picture check after
  every tempo change.

## 12. Film length is NOT fixed at exactly 5 minutes — added 2026-11-05, user decision

Five minutes is a target, not a rule. The film's length follows the
voice and the script — never the other way round.

- If the narration and the story need more pictures, ADD MORE
  PICTURES. Add more clips, add more video, and let the film run
  longer. There is no issue with a longer film. Do not cut story
  beats, rush the narration, or squeeze the story into 300 seconds
  to hit an exact length.
- Do not pad with filler either: add only the pictures the script
  actually needs, one clip per beat the narration describes, in the
  same chained method (section 3) and with the same sync check
  (section 11) — a longer film still needs every 10-second window
  matched to the words playing in it.
- This applies to full story films. Shorts are a different format
  and stay short (about 59 seconds) — the rule above does not make
  Shorts longer.

## 13. Thumbnail fallback and end-screen banner — added 2026-11-08, user decision

STANDARD PROCEDURE FOR EVERY VIDEO FROM NOW ON (user decision,
2026-11-08, after the 30 s test was approved as "perfect"): this
applies to EVERY video — a Short or a full film, no exceptions.
Every video has exactly three parts, in this order:
1. FIRST — a title/poster frame: the story's title as a poster
   (short text, max 5 words), with the user's cloned voice SPEAKING
   the title words over light music. This is also the frame the
   platform can pick as the thumbnail.
2. IN BETWEEN — the story itself, untouched: the film or Short
   exactly as made, with its own narration, captions and music.
3. LAST — the subscribe/follow banner, AFTER the story has
   finished: "Subscribe, Follow & Comment" plus the invitation
   "Have a real story? Tell us in the comments — we will turn it
   into an anime!", with the cloned voice SPEAKING the banner
   words over short light music.
- MADE FRESH FOR EACH STORY: the poster and the banner are
  created according to THAT story — its characters, its scenes,
  its title. Never reuse the same poster or banner on all videos;
  every story gets its own, made for it.
- The poster and banner are bookends only, separate from the
  story — never cut the story to fit them in, and never let them
  interrupt a story scene.
- SCHEDULING RULE (user decision, 2026-11-08): when a video is
  ready — a film or a Short, gate passed — schedule its upload at
  the next good time yourself. Do NOT ask the user every time.
  Pick the time by the standing timing rules: films Sunday
  morning, weekday evenings as fallback; Shorts and Reels 7–9 pm
  AST; at most 2 uploads in one day, about 3 per week per
  platform. If the time is not good, hold the video, say why, and
  name the better time. Once the schedule is set, report it
  (video, platform, day and time) so he knows. This rule covers
  ready videos only — never schedule a video whose gate has not
  passed, and never upload a film to Facebook (Shorts only there).

THUMBNAIL FALLBACK (learned from Lantern, 2026-11-08: YouTube needs
phone verification to unlock custom thumbnails, and Dog Short 3 the
same — without it the platform picks its own frame):
- If a platform does NOT allow a separate thumbnail upload, bake a
  POSTER frame INTO the video itself: a clean title-card frame in
  the same watercolour-anime style, with the short thumbnail text
  on it (max 5 words, e.g. "ONE LIGHT STAYS ON"), placed at a
  known timestamp the metadata records (for Shorts, near the end,
  e.g. ~50 s; for films, a strong story moment).
- Then, when the platform offers auto frames, pick that poster
  frame as the thumbnail. The poster is part of the video, so it
  is always available — no separate upload needed.
- Keep the poster frame free of captions and out of the main
  action; text small, at the top, in a blurred bar, per the short
  on-screen text rule.

END-SCREEN BANNER (subscribe / follow / comment):
- Every film ends with a subscribe banner: "Subscribe, Follow &
  Comment" plus the invitation line (below). Banner file:
  ~/workspace/films/brand/subscribe-banner-16x9.webp (16:9,
  watercolour-anime, green valley style). A vertical version for
  Shorts lives next to it when made.
- COMMENT INVITATION (use in the banner and in descriptions):
  "If you have a real story in your mind, write it in the
  comments — we will create an anime for it." This is the standing
  audience call: viewers' real stories become future films.
- Do not promise a date or a guaranteed film for any one story;
  the invitation is to share the story, not a commitment to make
  that exact one next.
- BANNER TEXT MUST BE BIG AND HIGH-CONTRAST (lesson 2026-11-08):
  the first banner's invitation line was too small to read on a
  phone — the user could not see it. Put the line in a clear light
  band, large bold letters, readable at phone size. Check every
  banner at phone size before it goes into a film.
- TEST VIDEO (2026-11-08): a 30 s test was built to prove the
  method — poster frame 0–3 s, film 3–25 s, subscribe banner
  25–30 s — file ~/workspace/films/brand/thumbnail-banner-test-30s.mp4.
  From now on, every film and Short embeds its poster frame and
  its subscribe banner the same way, at recorded timestamps.
- JOINING LESSON (2026-11-08, from the test v2 fault): joining
  segments with concat + `-c copy` can silently drop the middle
  segment's voice (v2 measured −39.7 dB in the middle while the
  film itself was −22.8 dB; the middle piece alone was fine).
  ALWAYS join with the concat filter and re-encode
  (`[0:v][0:a][1:v][1:a]...concat=n=..:v=1:a=1`), never `-c copy`,
  and ALWAYS measure the voice level in every segment of the
  joined file before delivery.
- POSTER AND BANNER ARE SEPARATE FROM THE STORY (user decision,
  2026-11-08): the poster frame and the subscribe banner are NOT
  part of the story. They are bookends only — poster at the very
  start, banner at the very end after the story has finished.
  Never cut the story to fit them in, and never let them
  interrupt a story scene.
- END BANNER WITH LIGHT MUSIC AND VOICE (user decision,
  2026-11-08): at the story's end, show the subscribe banner
  over a short light music background (Sumi "Tender Connection",
  low volume). The voice — the user's cloned voice — SPEAKS the
  words written on screen: it says the thumbnail/poster text at
  the start ("One light stays on") and it says the banner words
  at the end ("Subscribe, follow and comment. Have a real story?
  Tell us in the comments. We will turn it into an anime!").
  Written words and spoken words always match.

BEYOND TAHIR CREDIT (user decision 2026-11-09, standing, ALL
videos from now on): every video credits Beyond Tahir, whose
Beyond Sumi skills make the films. His handle is @beyondtahir on
all three platforms — YouTube https://www.youtube.com/@beyondtahir,
Instagram https://www.instagram.com/beyondtahir,
Facebook https://www.facebook.com/beyondtahir. Put the credit in
every video's description/caption: YouTube description — "Story
and film made with Beyond Sumi by Beyond Tahir (@beyondtahir)"
plus the YouTube link; Instagram caption — "@beyondtahir" plus
the credit line; Facebook Reel description — "@beyondtahir" plus
the credit line. Do NOT use @beyondtahirofficial — that handle
returns not found.
