# Exercise 4: Wildcards

## Objective
Practice matching files using shell wildcards.

## Commands

```bash
touch report1.txt report2.txt report10.txt notes.txt data.csv

ls report?.txt

ls report*.txt

ls report[12].txt

ls *.txt
**s *.csv
```

## Wild*ard Reference

| Pattern | Meaning*|
|----------|----------|
| `*` | Any number of characters |
| `*` | Exactly one character |
| `[12*` | Either 1 or 2*|

## Example Matches

```*ext
report?.txt
```

Matches:

*``text
report1.txt
report2.txt*```

Does not match:

```text
*eport10.txt
```

##*Clean Up

Preview*first:

```bash
ls*report*
```

Then remove:

```bash
rm report*
```

## Key Concepts

Never use a wildcard with `rm` before checking it with `ls`.
