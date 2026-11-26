# BUILD REPORT — V<N> (<Topic>)

- **Output:** `<video-file>.mp4` — <duration>, 3840×2160 (4K) 30fps, <bytes>, MD5 `<md5>`
- **Loudness:** −16.0 LUFS, true peak <value> dBTP
- **Segments:** <count> (~<cuts>/min) · **Chapters:** <count>
- **Subtitles:** `<video>.srt` — <cue count> cues, 0 overlaps
- **Thumbnail:** `<thumbnail>.png` — "<TEXT>", title.py <score>/100, 240px PASS
- **Music:** '<Track>' by <Composer> (<licence>), ~12 dB under narration, silent in islands
- **Date:** <YYYY-MM-DD>

## QA

- **Full-frame sweep:** <frames> frames at 2fps — <PASS: zero blank/black/
  uniform/frozen runs | defects found + fixed: …>
- **Silence check:** no silence >3s outside islands
- **Island sync:** each reference clip verified against audio (clip voice
  audible, narrator silent) + a frame eyeballed inside each island
- **Defects fixed during build:** <list, or "none">

## Known gaps (honest list)

- <Clip that couldn't be fetched — covered with stills>
- <Anything deliberately left as-is, and why>

## Backup

- Master + SRT + chapters + this report backed up to <location>, MD5-verified.
  (Files ≳1 GB may need splitting for some upload routes — note parts here.)
