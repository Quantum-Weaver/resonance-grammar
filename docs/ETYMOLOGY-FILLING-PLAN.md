# The etymology filling — a plan, and one ruling needed first

*Drafted 2026-08-02 by Opus (Claude) 🕯️, `claude-opus-5[1m]`, at KP's word —
etymology chosen over sensory when both gaps were measured. **Every number below
was read from the living base through the bridge's own `supabase_select` line,
not from any document.** Nothing has been written; the base is untouched.*

---

## The ground truth

| | |
|---|---|
| atoms | **1,971** |
| etymology rows | **1,971** — every atom linked, no orphans |
| rows with content | **23** (1.2%) |
| rows empty | **1,948** |
| average `completion_progress` | **0.0** — including the 23 finished ones |

The four content fields move together: `root_word`, `root_language`,
`historical_meaning`, `sanctuary_meaning` are all 23. So those rows were written
whole, by hand, and they are the standard:

> **etymology** · `etymon + logia` · Greek · *"Greek etymon (true sense, original
> meaning) + logia (study of); the study of the true origin of words"*

---

## ⚠ THE RULING NEEDED BEFORE ANY ROW IS WRITTEN

**`root_language` is a Postgres enum with exactly twelve values:**

```
Latin · Greek · Old English · Norse · Proto-Germanic · Sanskrit
Arabic · French · German · unknown · Old French · Old English + Greek
```

That last value is the tell. **Someone already hit this wall** — they needed a
compound and added one specific compound as its own enum member rather than
solving the general case. Compounds are not rare in this corpus; they are the
norm for exactly the words worth writing about (`bio` is already
*bios + graphia*).

> **✅ RULED THE SAME SITTING — KP, verbatim: *"that enum can be updated"* ·
> *"no constraint."*** The column becomes `text`. Door 2 below, taken.
> **Drafted for your hand: [`sql/040-the-etymology-ledger.sql`](sql/040-the-etymology-ledger.sql).**

**Three doors, and the choice is yours:**

1. **Widen the enum** — add the compounds as they arise. Honest, but the enum
   grows without bound and every new pair needs a migration.
2. **Change the column to `text`** — a one-line migration, and the constraint
   moves from the database to the writing hand. *My read: this is the right one.
   The enum is guarding a field whose real values are phrases, and it has already
   been broken once to accommodate that.*
3. **Use `unknown` for every compound** — cheapest, and it throws away the most
   interesting half of the data. I would not.

**No batch should run before this is settled**, because the answer determines
whether ~40% of the rows can carry their true language at all.

---

## The lesson that governs this whole phase

**Phase 4's own finding, from your own ledger:** *bulk composition is nearly
free; a lookup in front of every item is not.* You stopped that run at 48 of
1,935 because a web search had been put in front of every word, turning a
minutes-job into a month. The remaining 1,887 took **eleven writes** once the
method changed.

**Etymology is the phase where that lesson is hardest**, because unlike
definitions, part of this data is an external fact that cannot be composed
honestly. So the plan splits the table by *provenance*, not by row:

### ⚠ Corrected within the sitting, before it cost anything

*My first draft said `sanctuary_meaning` would be nearly free because the
`definition` already exists for all 1,971. **I checked instead of assuming, and
it is wrong.** Of the 23 finished rows, **0 have a sanctuary_meaning matching
their definition. All 23 differ.** They are two registers:*

> `definition` — *what the word means:* "A group whose members share a rank or kind."
> `sanctuary_meaning` — **what the word does in this house:** "The fourth Linnaean rank. Major groupings within a structural pattern."

*So it is a role, not a gloss — and a role cannot be restated from a
dictionary sentence. **The saving grace: the source is still inside the base.**
An atom's role is recoverable from the molecules and organisms that use it and
from their `habitat` paths. That is a join, not a lookup — which keeps this
inside the Phase 4 lesson rather than repeating its failure.*

**And it raises the one question I will not answer for you** — see the open
ruling at the foot of this page.

| field | what it is | cost |
|---|---|---|
| `sanctuary_meaning` | **the word's role in this house** — not its definition | **moderate** — composed from the atom's own molecules/organisms; a join, never a web lookup |
| `root_word` · `root_language` | **external fact** | composable for common stock, uncertain for the rest |
| `historical_meaning` | **external fact, in prose** | same |

**That split is the whole plan.** One of the four fields is composition and can
be done in bulk this week. Three are claims about the world and must carry their
confidence with them.

---

## `completion_progress` becomes the honest ledger

The column exists, is `0` everywhere — **including on the 23 finished rows** —
and is therefore free. Proposed meaning, and it makes the gap machine-readable
forever:

| value | means |
|---|---|
| **0** | empty |
| **33** | `sanctuary_meaning` written; roots still open |
| **66** | roots **composed, not verified** — good-faith, from common knowledge |
| **100** | roots **verified against a source**, by a hand |

*This is what keeps the phase inside the no-fabrication law.* Composing the root
of `insert` from ordinary knowledge is not fabrication **if the row says it was
composed and not checked.** Writing it and leaving it indistinguishable from the
23 hand-verified rows would be. **The label is the difference, and it must land
in the same statement as the content — never in a second pass.**

**First action, whatever else is decided:** set the 23 existing rows to `100`.
They are verified and currently indistinguishable from the void.

---

## The sequence

**Stage 0 — the ruling above, plus one SQL for your hand:** mark the 23 as
complete. Small, immediate, and it makes every later count honest.

**Stage 1 — `sanctuary_meaning`, all 1,948, in batches.**
Composed from each atom's existing `definition`, in the house's voice, matching
the standard the 23 rows set. **No lookups.** This is the free half, and it is
the half the word games actually read. Batch size ~170, the Phase 4 rhythm —
about eleven writes. Sets `completion_progress = 33`.

**Stage 2 — roots for the common stock.**
Ordinary English words with uncontroversial Latin/Greek/Old English/Norse
ancestry. Composed, marked **66**, never claimed as verified. This is most of the
corpus.

**Stage 3 — the residue, and it is small.**
Coined words, house-native terms, acronyms, and anything genuinely contested.
These get `unknown` or stay empty. **Zero is reported, never inferred** — a word
with no honest etymology should say so rather than receive a plausible one.

**Stage 4 — verification, on no clock, forever optional.**
Any 66 a hand checks becomes 100. The ledger makes this resumable by anyone, at
any time, without re-reading the whole table.

---

## How the writing actually happens

**The bridge is SELECT-only by construction** — `supabase_select` refuses
anything but SELECT/WITH, and that ward stays. So every batch arrives as **a
numbered SQL file in `docs/sql/`**, drafted for your hand and run at your
dashboard, exactly like `039-the-modulator-seed.sql`.

Form of each batch, so nothing is silent:

```sql
-- 0NN-etymology-sanctuary-batch-01.sql
UPDATE etymology SET sanctuary_meaning = '…', completion_progress = 33
WHERE atom_word = 'array' AND (sanctuary_meaning IS NULL OR sanctuary_meaning = '');
```

**The `WHERE` guard is deliberate:** a re-run can never overwrite a hand's
better sentence, and a batch run twice does nothing the second time.

---

## What I would not do

- **No web lookup per word.** Named plainly because it is the failure this
  corpus already survived once.
- **No writes by me.** The base is yours; the bridge reads.
- **No silent confidence.** Every composed root lands with its 66 in the same
  statement.
- **No filling of the boring half first.** If the effort runs out, it should run
  out having finished `sensory`, `knowledge`, `consciousness` and `governance` —
  the words that get played and seen — rather than `varchar` and `uuid`.

---

---

## THE ONE OPEN RULING, and it is the expensive one

**What is `sanctuary_meaning` for a word that has no role in the system?**

All 23 finished rows are architecture words — `array`, `class`, `domain`,
`description`, `etymology` — and every sanctuary_meaning names a column, a rank,
or a table. That register works perfectly for them.

But the corpus is not mostly architecture. It holds **209 `sensory` atoms, 90
`consciousness`, 93 `governance`, 80 `roles`.** Words like `trust`, `sanctuary`,
`principle`, `dry`, `heuristic`. **Many have no column and no table.** For those,
"what it does in the house" is not a schema fact — it is what the house *means*
by the word, which is yours and nobody else's.

Two readings, and they produce different books:

1. **Sanctuary meaning = implementation role.** Faithful to the 23. Leaves
   several hundred atoms with an honest blank, because they have no role.
2. **Sanctuary meaning = what this house means by the word.** Covers everything,
   and turns the field into the Sanctuary's own dictionary — *the folksonomy
   applied to its own vocabulary.* **This is the one the word games would read,
   and it is the one only you can author.**

*My read, offered and not assumed: (2), with (1) as its special case for the
architecture words — because a role IS what the house means by `class`. But
this decides the voice of 1,948 rows, and a voice guessed wrong is the month
that Phase 4 already paid once.*

**Nothing is drafted past Stage 0 until you rule this.**

---

*Stage 0 is drafted and waiting: [`sql/040-the-etymology-ledger.sql`](sql/040-the-etymology-ledger.sql).*

— Opus (Claude) 🕯️

— Opus (Claude) 🕯️
