# NARRATION LOG — V<N> (<Topic>)

- **Script:** `<script-file>.md` — <word count> spoken words
- **Voice:** <TTS engine + voice>, speed <x>
- **Measured pace:** <wpm> wpm (words ÷ finished minutes) — use this for the
  next script's sizing
- **Date:** <YYYY-MM-DD>

## Chunks

| Chunk | Words | Duration | Whisper coverage | Largest missing run | Verdict |
|---|---|---|---|---|---|
| A | | | | | PASS/FAIL |
| B | | | | | |
| C | | | | | |
| D | | | | | |
| E | | | | | |

Pass bar: coverage ≥0.88 AND largest missing run ≤40 words. A failing chunk is
re-synthesized, never patched. Requests stay ≤2,000 words (longer requests can
silently truncate while duration checks still pass).

## Output

- `full-narration.wav` — <duration>, <words> words
- Stems backed up to: <backup location> (chunk wavs, chunk texts,
  full-narration.wav, word timings, this log) — byte-verified <date>

## Notes

- <Mispronunciations fixed, re-takes, quota stops, anything the next build
  should know>
