> **HISTORICAL — SUPERSEDED (merge note, 2026-11-14).** This file still describes
> the built-in video-generator chained-clip method as the working method. That
> generator is BLOCKED (lasting 403, country/region) and Kaggle was ABANDONED by
> the user 2026-11-14. The current default is the **FilmCraft-from-scratch Part 7
> process** — see the merged skill root `SKILL.md`, Track 1. This file is kept
> whole as the record of what was proven; do not follow it as the build route.

# Real-anime video loop — DEFAULT, Green Valley, 2026-10-31

This is the DEFAULT animation route in the Sumi skill, by the user's
decision on 2026-10-31 ("do it as a default"), written from what actually
worked in "The Girl from the Green Valley" (1-minute version, intervals 1-2).
For new films with character movement, use this route first. The older
Sumi image/pose workflow is now the fallback, used only when the user
explicitly asks for it. Never use payment, a paid sign-in, or public
sharing without a separate approval.

## When to use this route

Use it by default for character movement. Do not start with still
pictures with a camera zoom, or with pose cycles: cycling still
drawings, even with mouth-only edits, reads as glitchy, with sliding feet,
a walk repeating every half second, and hair/clothes/background frozen.
Use continuous video clips instead, and keep the story, the unnamed girl
rule, the supplied voice, and captions synced to the actual voice.

## What worked in loop 2 / loop 3

- 6 video clips, 10 seconds each, chained in story order = 60 seconds,
  1280x720, 24 fps, H.264/AAC.
- Clip order for the first minute: Ayaan alone (village path, hillside
  path, balcony), then the unnamed girl alone (meadow walk with basket,
  clouds, meadow ending). No boy-and-girl-together scene before they meet.
- Narration only in this minute, so no character lip-syncs the narration.
  Narrator prose must never be put on a character's mouth.
- Voice: supplied Voicebox audios at their planned slots (interval 01 at
  0 s, interval 02 at 30 s). Captions follow actual voice timing at line
  level, not fixed 10-second lines, and not word-by-word when no word
  timings exist. Example timing used: interval 01 lines 0-5.69, 5.69-15.73,
  15.73-21.76 s; interval 02 lines 30-34.84, 34.84-38.60, 38.60-46.12 s;
  no caption in the music-only gaps.
- Music: Sumi "Tender Connection", looped, faded in/out, sidechain-ducked
  under voice, so voice is clearly louder than music-only gaps.
- Assembly: re-encode every clip individually to 1280x720, 24 fps, 10 s
  BEFORE concatenating. A direct concat of mixed resolutions truncated
  an earlier build to 39.776 s.

## Character lock — the rule that made loop 2 pass

Write ONE locked description per character and repeat it verbatim in
every clip prompt, and chain clips from the first clip's snapshot
(`resume_from_snapshot_id` from clip 1 onward) instead of generating
6 independent clips.

Example only, not defaults for other stories — Green Valley:
- Ayaan: messy dark hair tied in a small topknot with a light cloth tie,
  blue patterned open robe over grey, dark trousers, sandals, woven backpack.
- Girl (unnamed throughout): black hair tied low with a green cloth,
  green patched robe with blue patches, brown sash, woven basket of
  wildflowers.

After each clip, visually check its frames against the locked reference.
If face, hair, clothes, or style changed, REJECT that clip and retry
within the budget. Do not splice mismatched characters together and
call it one film.

## Style lock — the rule that made loop 3 pass

Loop 2 passed identity but failed style uniformity: Ayaan drifted from
watercolour-anime in clip 1 to more realistic in clips 2-3, while the
girl stayed watercolour-anime. The user named this exact flaw:
"the man is looking too real as compared to girl."

Fix, used in loop 3: specify the style in every prompt as painted
watercolour-anime with soft brush / flat anime colours, and explicitly
forbid photorealistic / live-action look, realistic skin texture, and
photographic lighting. Check each new clip against a girl-clip frame.
If a character looks realistic, reject it, even if his face and clothes
match. Reuse good clips unchanged; regenerate only the bad ones.
Loop 3 reused the girl's clips 4-6 and regenerated only Ayaan's clips 1-3.

## Framing and motion rules

- Ground-level backgrounds only for walking characters. Never put a
  walking character over an aerial / top-down village scene — he looks
  giant walking over a map of houses.
- Prompt for travelling walk across a ground plane, feet planting,
  camera following or static — not walking in place while the camera pans.
- Hair, robes, flowers, clouds, stream and trees must move; a frozen
  background breaks the real-anime check even if the character moves.
- No double characters, no giant figure over an aerial background,
  no paper box lines, no face panel, no pose-cycle sheets in this route.

## Limits that must be stated honestly

- Built-in video generation limit observed here: 6 videos per user
  message, including videos made by subagents. A user approval for
  "up to 20" does not override that per-message limit. Plan within 6,
  reuse good clips, and do not promise 20 in one round.
- Free GitHub tools were evaluated and found NOT feasible on this VM
  at the time: no GPU (`nvidia-smi` not found), 7.7 GB RAM with only
  ~400 MB free. Wan2.2 / LTX-Video, ComfyUI video models and ToonCrafter
  need GPU/VRAM; OpenToonz needs hand-drawing and does not generate
  motion from a still; RIFE only interpolates existing motion. Check
  GPU and free RAM before proposing a GitHub tool, and do not claim
  it will work until it is tested here.
- A paid/hosted character-consistent video model was NOT approved.
  Payment or sign-in needs separate approval first.

## Viewer gate — check before delivery, do not deliver on spec alone

A version passes only if ALL are true, checked from frame samples
(at least 5, 15, 25, 35, 45, 55 s) and ffprobe, not just by file existence:
- Same characters, same face/hair/clothes/style, in every clip.
- Continuous walking with feet planting and travelling, plus moving
  hair/clothes/clouds/stream.
- Story order correct, no double characters, no aerial-background scale
  break, no paper lines, no face panel.
- Captions match actual voice timing, no caption in music gaps,
  voice clear and louder than music-only gaps, 60 s, 1280x720, 24 fps.
- If any item fails, hold the film, fix it in the loop, and do not
  deliver it as "real anime". Do not describe it as flawless if a
  known caveat remains (for example, foot planting checked at 1 fps
  samples, not certified frame-by-frame).

## Failure modes from loop 1, to avoid repeating

- Different people between clips (girl turned realistic, different
  boy/girl in one clip, different boy later) — fixed by character lock
  and chained snapshots.
- Story-order error (boy and girl together before the meeting) —
  fixed by strict clip order.
- Walking in place / camera pan, feet not travelling — fixed by
  travelling-walk prompts and ground-level framing.
- Style drift (one character realistic, the other anime) — fixed by
  style lock and rejection of realistic clips.
- Captioned reference frames contaminate new clips (Buster & Pip Ep. 2,
  2026-11-10): the Design-A reference frame was grabbed from a finished
  file and carries a burned-in caption, and clips generated from it open
  with garbled caption-like text baked in (clip3v4 and cutaway-v2 both
  do). Generate face-critical clips from TEXT ONLY, never from a frame
  that has captions burned in; if a reference image must be used, use a
  clean frame with no caption text on it.
