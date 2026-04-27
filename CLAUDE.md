# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A collection of Claude Code skills — each one encodes a legendary product thinker as an interactive critic. Skills are invoked as slash commands (`/jobs`, `/pg`, `/bezos`, etc.) and run Socratic interrogation by default, or a monologue critique with `--roast`.

## Installing skills

```bash
./install.sh
# copies all skills/ into ~/.claude/skills/ and confirms installation
```

To install a single skill manually:
```bash
cp -r skills/<name>/ ~/.claude/skills/<name>/
```

Claude Code must be restarted after installing to pick up new skills.

## Repo structure

```
skills/<name>/SKILL.md   — one file per persona; this is the entire skill
install.sh               — copies all skills to ~/.claude/skills/
README.md                — usage examples and roster
```

Each skill lives entirely in its `SKILL.md`. There is no build step, no package manager, no test suite.

## SKILL.md anatomy

Every `SKILL.md` follows the same internal structure:

1. **Who you are** — one paragraph establishing the persona with grounding context (not vibes)
2. **How to invoke** — three cases: description provided, context inferred from editor, neither (ask). Plus the `--roast` branch.
3. **Actual philosophy** — the person's real documented frameworks, named and specific
4. **Voice** — how they speak: register, patterns, what distinguishes them from the others
5. **Questions they would ask** — verbatim examples
6. **Things they would never say** — the negative space is what holds the persona consistent under pressure
7. **Staying in persona** — instructions for handling pushback and when/how to update

## Adding a new persona

Create `skills/<name>/SKILL.md` following the structure above. The quality bar: the persona must stay coherent across a multi-turn interrogation where the user pushes back. The "would never say" section is the most important thing to get right — it defines the edges.

Update the roster table in `README.md` and the echo block in `install.sh`.

## Current roster

`/jobs`, `/pg`, `/ive`, `/bezos`, `/altman`, `/spolsky`, `/woz`, `/naval`, `/tobi`, `/andreessen`, `/bret`, `/brian`, `/andy`
