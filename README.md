# founders

A collection of Claude Code skills that invoke legendary product thinkers as interactive critics while you build. Not AI impersonations. Not vibe-based inspiration. Each persona encodes the person's actual documented philosophy — their frameworks, their blindspots, their voice — and interrogates your work with it.

Default mode is Socratic. They ask questions. They don't let you off the hook. Append `--roast` for a monologue. Type `--verdict` mid-conversation to get a final verdict and end the dialogue.

---

## Roster

| Command | Persona | Lens |
|---|---|---|
| `/jobs` | Steve Jobs | Simplicity, taste, and the courage to remove things |
| `/pg` | Paul Graham | Is this actually true, or is it conventional wisdom? |
| `/ive` | Jony Ive | Does this feel inevitable? Does it communicate care? |
| `/bezos` | Jeff Bezos | Working backwards from the customer — with discipline |
| `/altman` | Sam Altman | Calibrating ambition and compounding at scale |
| `/spolsky` | Joel Spolsky | Developer empathy, leaky abstractions, the real user |
| `/woz` | Steve Wozniak | Elegance at the hardware level — is this the simplest possible thing? |
| `/naval` | Naval Ravikant | Leverage, specific knowledge, and the flywheel vs. treadmill test |
| `/tobi` | Tobi Lütke | Systems thinking, platform leverage, does this compound? |
| `/andreessen` | Marc Andreessen | Is this a real market? Is the timing right? What's the structural advantage? |
| `/bret` | Bret Victor | Does this interface make the invisible visible? Does it help users think? |
| `/brian` | Brian Chesky | 11-star experience framework, craft at scale |
| `/andy` | Andy Grove | Outputs, bottlenecks, and whether this will actually get done |

---

## Which one to use

| Use | When you want to... |
|---|---|
| `/jobs` | Audit what to cut — should this exist in its current form? |
| `/pg` | Test whether your idea is actually true, or just sounds true |
| `/ive` | Ask whether the design communicates care and feels inevitable |
| `/bezos` | Work backwards from the customer with operational discipline |
| `/altman` | Calibrate ambition — is this genuinely big, or are you playing it small? |
| `/spolsky` | Pressure-test the real developer or user experience |
| `/woz` | Ask if the technical implementation is as simple as it could be |
| `/naval` | Evaluate the leverage structure — treadmill or flywheel? |
| `/tobi` | Think in systems — does this compound, or just accumulate? |
| `/andreessen` | Challenge the market thesis — right time, right size, real advantage? |
| `/bret` | Ask whether the interface makes the invisible visible |
| `/brian` | Walk through the experience moment-by-moment |
| `/andy` | Get execution discipline — outputs, bottlenecks, who owns it |

When the choices overlap:

**`/jobs` vs `/ive` vs `/brian`** — Jobs asks what to remove. Ive asks whether what remains communicates care. Brian asks whether each moment earns the next one. Use `/jobs` to question existence, `/ive` to question form, `/brian` to question sequence.

**`/pg` vs `/altman` vs `/naval`** — PG tests whether the underlying claim is actually true. Altman stress-tests your ambition and finds the strategic weak link. Naval stress-tests the leverage structure — does this produce compounding value, or is it a treadmill? Use `/pg` for assumptions, `/altman` for scale, `/naval` for business model.

---

## Install

### Option 1: Run the install script

```bash
git clone https://github.com/orcus108/founders.git
cd founders
./install.sh
```

### Option 2: Manual

```bash
git clone https://github.com/orcus108/founders.git
cp -r founders/skills/* ~/.claude/skills/
```

Each skill folder contains a `SKILL.md` file that Claude Code reads when you invoke the slash command.

---

## Usage

### Socratic mode (default)

The persona interrogates your work. One question at a time. It won't let you off the hook with vague answers.

```
/jobs
# reads your current editor context and starts interrogating it

/pg Here's my startup idea: a Slack bot that summarizes meetings
# interrogates the specific description

/bezos
# reads open files and asks about the customer
```

### Roast mode

The persona delivers a single uninterrupted monologue critique in their voice. No back-and-forth.

```
/jobs --roast
/pg --roast Here's my startup idea: a Slack bot that summarizes meetings
/ive --roast
/woz --roast
```

### Ending the dialogue

The Socratic interrogation runs until you stop it. When you're ready for a verdict, type `--verdict` and the persona delivers a final summary — what's strong, what's broken, what to do — then stops.

```
--verdict
```

---

## Examples

### `/jobs`
> **Jobs:** You said this handles "content management." What does that mean? Can you say it in one sentence without that phrase?

> *User: It lets you organize and publish blog posts.*

> **Jobs:** So it's a blogging tool. Why doesn't it look like one?

---

### `/pg --roast`
> The idea that people want "better meeting summaries" is an assumption dressed as a problem. What they actually want is to not have the meeting. You've built a painkiller for a symptom of a disease that you're not treating — and that you're actually enabling. The people who will pay for this are the same people who are generating the meetings that other people hate. You're optimizing the wrong side of the transaction. The better version of this idea is much more uncomfortable to build.

---

### `/bezos`
> **Bezos:** Before we talk about features — who is the customer? Not "users" or "teams." A specific person with a specific job to be done. Who is it?

---

### `/woz`
> **Woz:** Okay so this calls an external API for every render. How many chips is that? How much of that round trip is actually doing work versus overhead? I want to understand what the machine is doing before we talk about what the interface is doing.

---

### `/bret`
> **Victor:** When the user makes a change here, when do they see the effect? Is it immediate or do they have to run something first?

> *User: They run a preview.*

> **Victor:** So they're editing a description of the thing, not the thing itself. What would it take to remove that indirection?

---

### `/naval`
> **Naval:** Is this a treadmill or a flywheel? If you stopped working on it tomorrow, does it still produce value in six months?

---

### `/andreessen`
> **Andreessen:** The market for this in 2019 was $200M. What's changed that makes it $2B now? Something has to have changed, or you're entering the same market with the same constraints.

---

### `/tobi`
> **Tobi:** You said this simplifies the deployment process. Where does the complexity go? It doesn't disappear — it moves. Where did you put it?

---

## Philosophy

These are not chatbots that sound like famous people. They're encodings of specific intellectual frameworks that these people actually developed and documented — in essays, interviews, talks, and the products they built. The goal is to apply those frameworks to your work and find the places where your thinking hasn't been stress-tested.

The Socratic mode is the default because interrogation is more useful than monologue. A question you can't answer is worth more than a critique you can explain away.

---

## Contributing

To add a persona: create `skills/<name>/SKILL.md` following the structure of the existing skills. The file should encode the person's actual philosophy with specific frameworks, example questions they would ask, and things they would never say. Voice consistency under pressure is the quality bar — the persona shouldn't break when the user pushes back.
