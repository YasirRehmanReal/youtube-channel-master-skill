# Installation Guide — YouTube Channel Master Skill

By **Yasir Khan** ([github.com/YasirRehmanReal](https://github.com/YasirRehmanReal)).
Support: WhatsApp [+92 321 8787206](https://wa.me/923218787206).

One clone, one install command — after that, every skill in this repo works
from that one place.

## Requirements

| Requirement | Why | Check |
|---|---|---|
| Python 3.12+ | All skill tools (`hookscore.py`, `title.py`, `synth_kokoro.py`, …) | `python3 --version` |
| ffmpeg | Builds, QA sweeps, Shorts renders | `ffmpeg -version` |
| A TTS voice | Narration (Kokoro `am_michael` is the reference setup — free & local) | — |
| Whisper | Narration verification + word-level subtitle timings | `whisper --help` or `python3 -m whisper --help` |
| Git | Cloning this repo | `git --version` |

Optional: a free YouTube Data API key unlocks deeper competitor data in
`youtube-research-skill`. Nothing else needs a key or a paid service.

## Step 1 — Clone

```bash
git clone https://github.com/YasirRehmanReal/youtube-channel-master-skill.git
cd youtube-channel-master-skill
```

## Step 2 — Install (pick your agent)

### Option A — Claude Code

Skills live in `~/.claude/skills/`. The installer copies the master skill and
all 16 sub-skills there:

```bash
./install.sh ~/.claude/skills
```

Manual equivalent:

```bash
mkdir -p ~/.claude/skills/youtube-channel-master
cp SKILL.md ~/.claude/skills/youtube-channel-master/
cp -r skills/* ~/.claude/skills/
```

Restart Claude Code (or start a new session) so the skills load.

### Option B — Muse

Skills live in `~/workspace/custom-skills/`:

```bash
./install.sh ~/workspace/custom-skills
```

Manual equivalent:

```bash
mkdir -p ~/workspace/custom-skills/youtube-channel-master
cp SKILL.md ~/workspace/custom-skills/youtube-channel-master/
cp -r skills/* ~/workspace/custom-skills/
```

### Option C — Any other skill loader

Point your loader at the cloned folder, or copy `SKILL.md` + `skills/` into
whatever directory it scans. The skills are plain Markdown + Python — no
build step, no dependencies beyond the requirements above.

## Step 3 — First run (walkthrough)

1. **Set up your channel workspace.** Create a folder for your channel's
   working files (scripts, builds, thumbnails, packs) and copy the templates
   in:

   ```bash
   mkdir -p ~/my-channel/{scripts,builds,thumbnails,shorts,audit}
   cp templates/*.md ~/my-channel/
   mv ~/my-channel/MASTER-template.md ~/my-channel/MASTER.md
   ```

2. **Fill in MASTER.md §1** — channel name, niche, target length, publish
   cadence, goal. This file is your system bible; every skill reads it.

3. **Create your voice profile** at `<channel-workspace>/voice.md` — how you
   talk, words you never use, who you're talking to. (No videos yet? The
   `yt-script` skill will help you draft one.)

4. **Pick your voice and measure its pace.** Synthesize ~200 words with your
   TTS, time it, and record words-per-minute in MASTER.md §4. Every script
   size comes from this number.

5. **Run your first command.** Open your agent and say:

   > "Write my next video"

   The master skill will: research candidates → run the live-data topic
   verdict → write hook options → score them with `hookscore.py` → draft the
   script with retention beats → score the title/thumbnail pairing with
   `title.py`. You approve the topic; the gates handle the rest.

6. **Know the two placeholders** used across all skills:
   - `<skills-dir>` = where you installed (e.g. `~/.claude/skills`)
   - `<channel-workspace>` = your channel folder from step 1

## Verifying the install

```bash
# Hook scorer works?
python3 <skills-dir>/yt-script/hookscore.py --hook "You are 17 in 1974. You are dead before Thanksgiving. But why did DNA take 52 years to name him?"

# Title scorer works?
python3 <skills-dir>/yt-package/title.py --title "DNA Named Her Killer 65 Years Later — He Was a Cop" --thumb "FILED IN 1959"
```

Both should print a score and a verdict. If they do, every skill is live.

## Updating

```bash
cd youtube-channel-master-skill && git pull && ./install.sh <your-skills-dir>
```

## Troubleshooting

- **Skill not triggering?** Check the folder name matches the skill name and
  that `SKILL.md` sits directly inside it (not nested one level deeper).
- **Tool path errors?** Skills reference tools as `<skills-dir>/<skill>/<tool>.py`
  — run them with the real path to your install.
- **TTS quota/voice issues?** Keep narration requests ≤2,000 words and verify
  every chunk with Whisper; see `verdict-skills` for the full narration rules.

## Support

WhatsApp: **[+92 321 8787206](https://wa.me/923218787206)** — setup help,
adaptation to your niche, or production questions.
