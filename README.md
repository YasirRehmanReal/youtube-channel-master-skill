<div align="center">

# 🎬 YouTube Channel Master Skill

**One skill that runs your whole faceless YouTube channel** — research, topic
decisions, hookscored scripts, packaging gates, verified narration, 4K builds
with frame-by-frame QA, upload packs, Shorts, and a 72-hour performance loop
that fixes what the data says is broken.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/Skills-17-blue.svg)](#whats-inside)
[![Python](https://img.shields.io/badge/Python-3.12+-green.svg)](#requirements)
[![ffmpeg](https://img.shields.io/badge/ffmpeg-required-orange.svg)](#requirements)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](#contributing)

Built by **[Yasir Khan](https://github.com/YasirRehmanReal)** from a real,
running faceless channel's production system.

</div>

---

Every rule in here was paid for with a real mistake — a blank-frame defect
that shipped, a TTS chunk that silently truncated, a schedule that stored the
wrong time. The gates exist so you never pay for them again.

## The pipeline

```
┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐
│ RESEARCH │─▶│  DECIDE  │─▶│  SCRIPT  │─▶│ PACKAGE  │─▶│ NARRATE  │─▶│  BUILD   │
└──────────┘  └──────────┘  └──────────┘  └──────────┘  └──────────┘  └──────────┘
                 live-data   hookscore    title.py     Whisper      QA sweep
                  verdict      gate        gate        verify        gate
┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐
│ PUBLISH  │─▶│  SHORTS  │─▶│ RECHECK  │─▶│  REPORT  │
└──────────┘  └──────────┘  └──────────┘  └──────────┘
  reload       1/day        every 72h:    daily:
  read-back    trailer      CTR/AVD vs    shipped /
  gate         formula      baseline,     running /
                            swap thumbs   next
```

**No step trusts the previous one.** Hooks are scored before recording.
Titles are scored before publish. Narration is transcribed and diffed against
the script. Finished videos are swept frame by frame. Schedules are read back
after reload. Performance is re-checked every 72 hours — and the fixes are
*implemented*, not just reported.

## What's inside

| Skill | What it does |
|---|---|
| **youtube-channel-master** (root) | The orchestrator: full pipeline, quality rules, topic verdicts, recheck loop |
| `yt-script` | Hook options off 21 formulas, scored with `hookscore.py`; full spoken script with retention beats |
| `yt-package` | Title + thumbnail as ONE unit, linted/scored with `title.py` |
| `yt-edit` | Edit structure + dead-air detection (`deadair.py`) |
| `yt-comment` | Comment triage (questions / corrections / praise / bait) + replies in your voice |
| `yt-plan` | Content slate & calendar planning |
| `yt-viral` | Viral format teardown (`swipe.py`) |
| `yt-retention` | Reads Studio retention exports, finds where viewers leave (`retention.py`) |
| `yt-shorts` | Shorts that survive without the long video: turn, loop point, 2-second hook text |
| `yt-seo` | Descriptions & tags aimed at the query a real person types |
| `yt-chapters` | Chapter generation from the script (`chapters.py`) |
| `yt-audit` | Channel audit that ends in ONE biggest fix — not a list of 40 |
| `yt-community` | Community-tab system: verified facts, one CTA each, launch warm-ups |
| `verdict-skills` | The production standard: sizing from measured pace, narration rules, pacing (~3s cuts, hard cuts, no whoosh), music, handover |
| `video-editing-skill` | ffmpeg edit bench + Kokoro TTS batch pipeline (`synth_kokoro.py`) |
| `youtube-research-skill` | Competitor & topic research methods, algorithm/analytics guides |
| `youtube_studio_schedule_check` | The schedule contract: channel-switcher check, timezone conversion, reload read-back |

Plus `templates/` — upload pack, channel system bible (MASTER.md skeleton),
topics backlog, viewer-feedback log, narration log, build report.

## Requirements

- **Python 3.12+** and **ffmpeg** (the tools are plain Python + ffmpeg)
- **A TTS voice** — Kokoro (`am_michael`) is the reference setup; any
  consistent voice works
- **Whisper** — for narration verification and word-level subtitle timings
- Free stock: Pexels / Pixabay / Wikimedia / Library of Congress
- Music: NCS / YouTube Audio Library / CC-BY — real tracks only, never noise

## Install

```bash
git clone https://github.com/YasirRehmanReal/youtube-channel-master-skill.git
cd youtube-channel-master-skill
./install.sh            # auto-detects Claude Code (~/.claude/skills) or Muse
```

Full step-by-step for Claude Code and Muse, plus the first-run
walkthrough: **[INSTALL.md](INSTALL.md)**.

## Quickstart

Say it in plain words:

- **"Write my next video"** → live-data topic verdict, then a script whose
  hook passed `hookscore.py`
- **"Audit my channel"** → one biggest fix, three things working, what NOT
  to do yet
- **"Why isn't my CTR working?"** → packaging audit; thumbnails under 1.5%
  CTR get swapped, with before/after numbers
- **"Make Shorts from this video"** → 3–5 Shorts, one a day, each ending on
  the unanswered question
- **"Run the channel"** → the daily rhythm: research, production, publish
  cadence, rechecks, report

## The honest gates

These run for real — that's the whole point:

- **`hookscore.py`** — scores hooks on specificity, address, stakes,
  curiosity, brevity. A low score means look again; a high score is never a
  promise.
- **`title.py`** — title/thumbnail pairing: truncation at 60/40 chars,
  word overlap, concrete figures over adjectives.
- **Whisper verification** — every narration chunk transcribed and aligned
  (pass ≥0.88 coverage). Catches the silent-truncation failure mode that
  duration checks miss.
- **Full-frame QA sweep** — blank/black/frozen frame detection across the
  entire timeline before handover.
- **Reload read-back** — every schedule, description, and thumbnail verified
  after reload, because Studio fails silently.

## Quality rules (the short version)

1. Hooks validated before recording; first 2 minutes excellent
2. Title + thumbnail scored as one unit; thumbnail adds, never repeats
3. Script sized from *measured* narration pace, not assumptions
4. Reference clips short, source-labelled, narrator silent inside them
5. Disclaimer + sources + music credits in **every** description
6. Karaoke subtitles from real word timings; 4K renders
7. Full-frame QA sweep before any video ships
8. Videos must feel real, not AI — log every viewer signal, fix the cause
9. Never invent a fact; keep a DO-NOT-SAY list per video
10. Recheck every 72h; implement the fix, don't just report it

## FAQ

**Does this work for niches other than true crime?**
Yes. The pipeline (research → decide → script → package → narrate → build →
publish → recheck) is niche-agnostic. The production standard was tuned on
long-form documentary-style videos; adjust the imagery rules in
`verdict-skills` for your niche.

**Do I need a YouTube API key?**
No. Research skills work from public data; publishing goes through Studio
with the read-back contract in `youtube_studio_schedule_check`. If you have
an API key, `youtube-research-skill` can use it for deeper competitor data.

**Which TTS should I use?**
Kokoro (`am_michael`, speed 1.15) is the reference setup — free, local, and
consistent. Any voice works as long as you measure its pace and verify every
chunk with Whisper.

**What do `<skills-dir>` and `<channel-workspace>` mean in the skills?**
Placeholders: wherever you installed the skills, and your channel's working
folder (scripts, builds, thumbnails). Set them once in your head; every skill
uses the same two.

**Can it really run the channel by itself?**
It runs the *system*: research, production, scheduling checks, rechecks,
reports. You keep the genuinely human calls — new-topic direction, anything
irreversible or paid. Routine decisions follow the plan.

## Support

- ⭐ **Star this repo** — it helps other creators find the system.
- 💬 **WhatsApp support:** **[+92 321 8787206](https://wa.me/923218787206)** — setup help, adapting the system to your niche, or paid production help.
- 🐛 **Bugs & ideas:** open a GitHub issue.

## Contributing

Issues and PRs welcome — especially new gates, better scoring tools, and
lessons paid for the hard way. Keep the rule: never guess what a tool can
measure.

## License & attribution

MIT — see [`LICENSE`](LICENSE). This repo combines original work by
**Yasir Khan** ([@YasirRehmanReal](https://github.com/YasirRehmanReal):
`verdict-skills`, `video-editing-skill`, `youtube-research-skill`,
`yt-community`, the master skill, templates) with the `yt-*` skills derived
from [jakeschincariol/youtube-agent-skill](https://github.com/jakeschincariol/youtube-agent-skill)
(MIT). Full attribution in [`NOTICE.md`](NOTICE.md); vendored components keep
their own licenses in their folders.

---

<div align="center">

*If this saves your channel from one blank-frame ship or one dead hook,
a ⭐ is appreciated.*

**[Yasir Khan](https://github.com/YasirRehmanReal)** · youtube-channel-master-skill

</div>
