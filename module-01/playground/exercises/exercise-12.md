# Exercise 12: Mini Log Analyser

## Objective

Build a simple log-analysis pipeline using multiple commands.

## Create Log File

```bash
printf "2026-10-28 09:00:01 INFO server started\n2026-10-28 09:00:05 WARN disk 80 percent\n2026-10-28 09:01:10 ERROR db timeout\n2026-10-28 09:02:00 INFO user login\n2026-10-28 09:03:30 ERROR db timeout\n2026-10-28 09:04:00 ERROR disk full\n" > mini.log
```

## Commands

```bash
cat mini.log

grep ERROR mini.log

grep -c ERROR mini.log

grep ERROR mini.log | cut -d " " -f 4

grep ERROR mini.log | cut -d " " -f 4- | sort | uniq -c | sort -rn
```

## Pipeline Breakdown

### Find Errors

```bash
grep ERROR mini.log
```

Shows only ERROR entries.

### Count Errors

```bash
grep -c ERROR mini.log
```

Returns the number of ERROR lines.

### Extract the Error Type

```bash
grep ERROR mini.log | cut -d " " -f 4
```

Output:

```text
db
db
disk
```

### Count Error Messages

```bash
grep ERROR mini.log | cut -d " " -f 4- | sort | uniq -c | sort -rn
```

Output:

```text
2 db timeout
1 disk full
```

## Pipeline Explained

```bash
grep ERROR mini.log
```

Keep only ERROR lines.

↓

```bash
cut -d " " -f 4-
```

Remove date, time, and log level.

↓

```bash
sort
```

Group identical messages.

↓

```bash
uniq -c
```

Count occurrences.

↓

```bash
sort -rn
```

Show most common errors first.

## Challenge

Count how many entries exist for each log level:

```text
INFO
WARN
ERROR
```

Hint:

```bash
cut -d " " -f 3
```
