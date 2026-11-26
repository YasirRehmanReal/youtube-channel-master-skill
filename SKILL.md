---
name: youtube-channel-master
description: "Run a complete faceless YouTube channel end to end — topic research and live-data topic decisions, hookscored scripts, title/thumbnail packaging gates, verified TTS narration, 4K builds with full-frame QA, upload packs, Shorts, and a 72-hour CTR/AVD recheck loop that swaps underperforming thumbnails. Use whenever the user wants to start, run, grow, or fix a faceless YouTube channel, asks 'write my next video', 'what should my next video be', 'audit my channel', 'why isn't my CTR working', or wants the whole production pipeline handled."
---

# YouTube Channel Master — run the whole channel

One skill that runs a faceless long-form YouTube channel end to end. It does not
replace the sub-skills — it **orchestrates** them in the right order, with a
verification gate at every step. Every gate is a real tool that runs, not a vibe.

**The one rule that governs everything:** never guess what a tool can measure.
Hooks get scored. Titles get scored. Narration gets transcribed and compared.
Finished videos get swept frame by frame. Performance gets re-checked on a
schedule, and the fixes get implemented — not just reported.

## The pipeline

```
1. RESEARCH      → youtube-research-skill, yt-viral, yt-plan
2. DECIDE        → live-data topic verdict (below)
3. SCRIPT        → yt-script        [GATE: hookscore]
4. PACKAGE       → yt-package       [GATE: title.py]
5. NARRATE       → verdict-skills + video-editing-skill (synth_kokoro.py)
                                        [GATE: full Whisper verification]
6. BUILD         → verdict-skills + video-editing-skill (ffmpeg)
                                        [GATE: full-frame QA sweep]
7. UPLOAD PACK   → yt-seo, yt-chapters  (description, tags, chapters, credits)
8. PUBLISH       → youtube_studio_schedule_check  [GATE: reload read-back]
9. SHORTS        → yt-shorts (3–5 per long video)
10. RECHECK      → yt-audit, yt-retention — every 72h: CTR/AVD vs baseline,
                   swap thumbnails that miss, feed retention drops into the
                   next script
11. REPORT       → daily: what shipped, what's running, what's next
```

## Standing quality rules (non-negotiable)

These were paid for with real mistakes. Do not re-learn them.

1. **Hooks are validated before recording.** Write 3–5 hook options off the 21
   formulas, score them with `hookscore.py`, record only a STRONG hook. The
   first 15 seconds confirm the click, open an unclosable question, and prove
   the payoff exists.
2. **The first 2 minutes must be excellent.** Fast cuts (2–4s), a new fact or
   question every ~30 seconds, no slow stills. The first 1–5 minutes are the
   trailer for the other 30.
3. **Packaging is one unit.** Title + thumbnail are scored together with
   `title.py`. The thumbnail must add what the title lacks (never repeat its
   words), max 3 words, one big real face where possible, readable at 240px.
   Aim ≥95/100 before publish.
4. **Script size comes from measured pace.** Words = target minutes × your
   voice's measured words-per-minute (measure it from finished videos; a TTS
   voice at 1.15× often runs ~175 wpm, not 150). Expand a short script with
   verified material, never padding.
5. **Narration is verified, never trusted.** Every chunk gets a full Whisper
   transcription aligned against the script (pass = coverage ≥0.88, largest
   missing run ≤40 words). TTS engines silently truncate long requests while
   duration checks still pass — keep requests ≤2,000 words. Back up the stems
   (chunk wavs, full narration, word timings, log) somewhere durable.
6. **Reference clips are short, labelled, and transformative.** Real
   source-labelled clips (news, pressers, hearings) play at full volume with
   the narrator completely silent — "islands". Keep them brief so the video
   never reads as reused content; narrate around them, never over them.
7. **Every description carries credits.** Disclaimer + sources + music credit
   in every single description. No exceptions.
8. **Subtitles better than auto-captions.** Burned-in karaoke subtitles from
   real word timings, large and high-contrast, plus a clean SRT uploaded to
   Studio. Render 4K (3840×2160) — TV viewers are a big share of watch time.
9. **Full-frame QA sweep before handover.** Sweep the whole timeline (blank /
   black / frozen / duplicate-frame detection at ~2fps) and eyeball every
   flagged range. Sampling a few shots is not enough — a shipped video once
   carried ~15 seconds of blank frames that every other check missed.
10. **Videos must feel real, not AI.** Real footage and photos first; AI
    stills only as fallback and never anything that looks generated. Keep a
    viewer-feedback log; every "this feels fake" signal gets logged, its cause
    found, and the fix baked into the next build.
11. **Honesty in research.** Never invent a number, a quote, or a source.
    Attribute contested claims ("police say", "prosecutors allege"). Keep a
    DO-NOT-SAY list per video: what is unproven, disputed, or legally unsafe
    to state. If a fact can't be verified from a primary or strong secondary
    source, it doesn't go in the script.

## Topic decisions: live data, not vibes

When choosing the next video, run the verdict method:

1. List 6–10 candidate topics (fresh news pegs first, then evergreen
   high-search topics).
2. For each, check **live YouTube coverage**: how many videos exist, the best
   one's views, whether big channels in the niche have covered it.
3. Score: **proven demand + open lane** wins. A topic with news clips at 300K
   views but no long-form coverage beats a topic nobody has touched and nobody
   is searching for. A topic already owned by a 500K-view video is dead —
   however good the story is.
4. Famous names in fresh news are the strongest lever (the "celebrity pivot"
   lesson): topic drives views more than packaging does.
5. Write the verdict down: winner, runner-up (next video), eliminations with
   reasons. Keep a topics backlog file so no research is ever lost.

## The 72-hour recheck loop

Every 72 hours, for every published long video: pull views, impressions, CTR,
AVD, watch time, traffic sources. Compare to the last audit's baselines.

- **CTR < 1.5% after 3+ days** → build an alt thumbnail (one big real face,
  bright, ≤3 words, `title.py` ≥95, 240px check), swap it, verify after
  reload, record before/after. Never swap the same video twice without 3+
  days of new data.
- **AVD < 20%** → pull the retention curve, find the drop points, and fix the
  pattern in the next script (usually: weak first 30 seconds, or a chapter
  that ends without an open loop).
- Long videos live on **Suggested** traffic — the click (CTR) is the lever,
  not search SEO. Search is a small share; keep titles containing the genre
  words people actually type ("cold case", "solved", "DNA").
- Targets worth chasing: CTR 4–5% (10% is elite), AVD 30%+. One video at
  CTR 4%+ and AVD 30%+ on its first ~1,000 impressions is a breakout
  candidate — cadence is a new ticket every day.

## Daily rhythm

- One long video per day at a fixed publish time.
- 3–5 Shorts per long video, posted 1/day. Shorts are trailers: open with the
  single most shocking documented fact in the first 2 seconds, end on the
  unanswered question with a spoken CTA to the full video. Judge Shorts by
  engaged views + "stayed to watch" %, never raw views. A/B test ~55s vs
  ~2:30 cuts of the same story — retention math punishes length past 2 min.
- A daily report: last 24h done, running now, top new topics, decisions
  needed, next 24h plan. Routine decisions belong to the plan, not to
  waiting for permission; only genuinely new, irreversible, or paid decisions
  go back to the channel owner.

## Sub-skills in this repo

| Skill | Job |
|---|---|
| `yt-script` | Hook options off 21 formulas, scored; full script with retention beats |
| `yt-package` | Title + thumbnail as one unit, scored with `title.py` |
| `yt-edit` | Edit structure, dead-air detection (`deadair.py`) |
| `yt-comment` | Comment triage + replies in the creator's voice |
| `yt-plan` | Content calendar / slate planning |
| `yt-viral` | Viral format analysis (`swipe.py`) |
| `yt-retention` | Retention-curve analysis (`retention.py`) |
| `yt-shorts` | Shorts that survive without the long video |
| `yt-seo` | Descriptions, tags, search-facing text |
| `yt-chapters` | Chapter generation (`chapters.py`) |
| `yt-audit` | Full channel audit: one biggest fix, what's working, what not to do |
| `yt-community` | Community-tab posting system |
| `verdict-skills` | The production standard: sizing, narration, visuals, pacing, handover |
| `video-editing-skill` | ffmpeg bench + Kokoro TTS batch pipeline (`synth_kokoro.py`) |
| `youtube-research-skill` | Competitor/topic research methods + data tools |
| `youtube_studio_schedule_check` | Schedule verification: reload read-back, timezone conversion |

## Requirements

- Python 3.12+, ffmpeg
- A TTS voice (Kokoro `am_michael` recommended; any consistent voice works)
- Whisper (for narration verification + word timings)
- Free stock sources: Pexels / Pixabay / Wikimedia / Library of Congress
- Music: NCS / YouTube Audio Library / CC-BY tracks only — never noise beds

## How to use

Say what you want in plain words; the master skill routes to the right
sub-skill and runs the gates:

- "Write my next video" → topic verdict → script → hookscore gate
- "Audit my channel" → yt-audit verdict (one biggest fix)
- "Why isn't my CTR working?" → packaging audit + thumbnail swaps
- "Make Shorts from this video" → yt-shorts, 1/day queue
- "Run the channel" → the full daily rhythm above

Every run ends with the gate: **ship it, or change it?** — answered by the
tools' scores, not by opinion.
