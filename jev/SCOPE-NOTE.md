# Jev skill — scope note for Muse (the user, 2026-11-05)

- Installed from the official TypeSafe repo: typesafe-ai/skills, cloned to
  ~/workspace/typesafe-jev-skills, SKILL.md copied here as
  ~/workspace/custom-skills/jev/SKILL.md (MIT licence).
- Purpose the user gave: use Jev so token usage is less. How that actually works:
  Jev is a small decision model. It does not write text. It answers narrow typed
  questions (Choice, yes/no Noul, Score, Box) with a probability, and code then
  decides what to do with that answer. Small judgments that would otherwise cost
  a full large-model reply can be sent to Jev instead, which is very cheap.
- Honest limit: installing this SKILL.md alone does NOT automatically cut
  Muse's own token usage in chat. A live Jev call needs code that calls the
  TypeSafe API with a TYPESAFE_API_KEY, kept on the server / in secure storage,
  never in chat. No key has been provided yet, so no live Jev call has been made.
- Use pattern from the skill: Jev judges, code decides. Never ask Jev "what
  should we do next?" — break a decision into atomic judgments, combine them
  in code with thresholds (starting point in the skill: Noul above 0.7 = yes,
  below 0.3 = no, between = unsettled).
- This skill does not replace the ten-agent + jury gate for Anime Valley
  Stories videos, and does not change the anime genre.
