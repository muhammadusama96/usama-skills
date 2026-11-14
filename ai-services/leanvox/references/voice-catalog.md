# LeanVox Voice Catalog

238+ curated voices organized by category. Use with `model: "pro"`.

## Categories

### Podcast
Best for conversational content, interviews, shows.
- `podcast_conversational_female` — Warm, natural female host
- `podcast_casual_male` — Relaxed, friendly male host
- `podcast_witty_host_f` — Sharp, engaging female
- `podcast_witty_host_m` — Quick, humorous male

### Narrative
Best for audiobooks, storytelling, long-form content.
- `narrative_warm_storyteller_f` — Inviting female narrator
- `narrative_warm_storyteller_m` — Deep, warm male narrator
- `narrative_dramatic_f` — Theatrical female voice
- `narrative_dramatic_m` — Theatrical male voice

### Corporate
Best for presentations, training, IVR.
- `corporate_professional_f` — Clear, authoritative female
- `corporate_professional_m` — Clear, authoritative male
- `corporate_friendly_f` — Approachable female
- `corporate_friendly_m` — Approachable male

### Character
Best for games, animation, creative projects.
- `character_hero_m` — Bold, confident male
- `character_villain_m` — Dark, menacing male
- `character_sidekick_f` — Energetic, upbeat female

### News
Best for bulletins, reports, announcements.
- `news_anchor_f` — Professional female anchor
- `news_anchor_m` — Professional male anchor

## Standard Tier Voices
These work with `model: "standard"` (cheapest):
- `af_heart` — Default female
- `am_michael` — Default male

## Voice Selection Guide

| Use Case | Recommended Voice | Tier |
|----------|------------------|------|
| Quick notification | `af_heart` | Standard |
| Podcast intro | `podcast_conversational_female` | Pro |
| Audiobook narration | `narrative_warm_storyteller_f` | Pro |
| Corporate training | `corporate_professional_m` | Pro |
| Creative/custom | Use `voice_instructions` param | Max |

## Browsing
Use `GET /v1/voices/curated` for the full list with preview audio URLs.
Filter by `category`, `gender`, or `tags` in your application.
