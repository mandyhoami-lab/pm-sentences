# PM Sentences Task (KS16)

Prospective memory sentences task built in PsychoPy.

## Attribution

Task files by Morys-Carter & Fredman Stein (2016), also described in Fredman Stein et al. (2018). Shared by the authors via the PsychoPy forum. No license was stated with the files.

## Try it online

A browser version runs at https://mandyhoami-lab.github.io/pm-sentences/ — same 90 sentences, same 1–7 rating, same 6 hidden targets, same `\` / `T` keys. It is a recreation of the PsychoPy task for running the study online, not the original experiment file. Data is saved only as a CSV download at the end; nothing is uploaded.

## Files

- `pm_sentences_ks16.psyexp` — the PsychoPy experiment (built in PsychoPy 1.83). Updated so the task runs without a researcher present: the PM instructions are now a routine in the experiment (`pm_instructions`, shown after the rating instructions), and the "tell the researcher" line and the researcher-only group letter are removed.
- `food.xlsx`, `vehicles.xlsx` — target sentence lists (food / vehicle cues)
- `fillers.xlsx`, `filler blocks uneven.xlsx` — filler sentences
- `food and vehicles cues.xlsx` — cue list
- `docs/index.html` — the online version (served by GitHub Pages)

## How it works

90 sentences, rated 1–7 for valence (1 very negative, 7 very positive, 4 neutral). 6 target sentences are hidden among them — food or vehicle sentences, assigned randomly per participant. When a target appears, the participant presses `\` or `T` as well as rating it. First target appears around trial 10–14, then roughly every 10–14 trials.

## What it measures

Per-trial data: sentence, target (0/1), valence, group (food/vehicle), the participant's rating key and rating RT, whether a PM key was pressed, and PM response time (`Target_RT`). From that: PM hits (of 6), PM false alarms, mean PM RT, ongoing-task accuracy (rating vs the normative rating) and rating RT.

## Running the PsychoPy version

Open `pm_sentences_ks16.psyexp` in PsychoPy Builder and run. Participant data saves to `data/`, which is git-ignored.
