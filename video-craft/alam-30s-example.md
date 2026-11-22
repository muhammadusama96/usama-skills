# Worked example — M. M. Alam, 30-second cinematic clip (2026-11-22)

Jay Chaudhry's method applied to one moment: Squadron Leader Muhammad
Mahmood Alam's minute over Sargodha, September 1965 — the subject of Jay's
own ALAM trailer. Built 2026-11-22 as the first Jay-style clip. Method
only; the full narration script and build log stay local
(`~/workspace/jay-style-clips/alam-30s/`).

## The method in one paragraph

One moment, emotion first. The feeling is named before any frame: awe and
pride — small against the sky, then lifted by what one pilot did in a single
minute. The whole 30 seconds is that one minute, built as one "what if".
The hook lands inside the first 2 seconds ("Five jets. One minute. One
pilot."), and every shot is directed with camera / lens / cut questions,
not prompts alone.

## Build (30 s, 1080x1920, 30 fps)

- **6 shots × 5 seconds, locked before building:**

  | Shot | Time | Image | Camera / lens | Cut |
  | --- | --- | --- | --- | --- |
  | 1 | 0:00–0:05 | Dawn sky, Sabres on the runway | Locked-off wide, low angle, slow push-in; 24mm, warm dawn grade | Hard cut in on "Five jets." |
  | 2 | 0:05–0:10 | Alam in the cockpit, calm | Static close-up, eye level; 85mm portrait, shallow depth | Cut on "September 1965" |
  | 3 | 0:10–0:15 | Sabre climbing into the sun, five Hunters above | Low tracking tilt up; 135mm, sun flare, silhouettes | Match cut as the Sabre crosses the sun |
  | 4 | 0:15–0:20 | Dogfight, tracer fire, one Hunter falling | Handheld-feel tracking, whip-pan; 50mm, high contrast | Cut on the tracer burst |
  | 5 | 0:20–0:25 | Sabre banking away alone, empty sky | Slow wide pull-back; 35mm, sun backlight, stillness | Hard cut — stillness after speed |
  | 6 | 0:25–0:30 | Black title card: FIVE JETS. ONE MINUTE. / ACE IN A DAY. | Static card, clean typography | Hold to black |

- **Voice:** the user's Chatterbox cloned voice, 8 chunks, Whisper-checked,
  sped up 8% (atempo 1.08) to fit 30 s. Calm cinematic narrator, ~150 wpm,
  71 words. No music bed (none available); narration-only.
- **Motion:** 5 ZSky image-to-video clips (5.0 s each) + the black title
  card built in ffmpeg (ZSky's sixth shot was empty sky and was replaced).
  Every ZSky creation hidden from Explore; clips downloaded promptly
  (free clips are deleted after 7 days).
- **Captions:** burned via ASS, 5 short cues in the safe area, each under
  6 words, each synced to its narration beat: FIVE JETS. ONE MINUTE. /
  SEPTEMBER 1965. SARGODHA. / FIVE HUNTERS ABOVE HIM. / UNDER SIXTY
  SECONDS. / THE SKY BELONGED TO HIM. / ACE IN A DAY.
- **Finish:** −14.74 LUFS, true peak −1.44 dB; audio present in every 5 s
  segment. Final file 30.000 s, 5.06 MB.

## Fact-check (nothing invented)

Every factual claim traces to verified facts only: September 1965, over
Sargodha, F-86 Sabre, five Indian Hawker Hunter jets, shot down in under
a minute, "ace in a day". Not used: no squadron number, no kill times, no
invented dialogue, no other dates or aircraft. "The sky belonged to him"
is rhetorical framing, not a factual claim.

## Honest gaps (what to fix next time)

- Whisper heard "Anwar" once in the long September-1965 sentence (the same
  name renders correctly as "Mahmood" later — most likely a Whisper
  artifact) and the closing "Ace in a day" as "Peace in a day" (a re-roll
  was worse and was discarded). The on-screen captions and title card
  carry the correct text, so the lines land on screen either way.
- Shot 3 shows two Sabres climbing (AI duplication); shot 4's falling jet
  carries Pakistani roundels (AI artifact) — visible only on freeze-frame.
