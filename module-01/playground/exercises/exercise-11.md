# Exercise 11: Count and Rank

## Objective

Use `sort`, `uniq`, and `grep` to analyse data.

## Create Test Data

```bash
printf "apple\nbanana\napple\ncherry\nbanana\napple\n" > fruit.txt
```

## Commands

```bash
sort fruit.txt

sort fruit.txt | uniq

sort fruit.txt | uniq -c

sort fruit.txt | uniq -c | sort -rn

grep apple fruit.txt

grep -c apple fruit.txt

grep -v apple fruit.txt

grep -i APPLE fruit.txt
```

## Explanation

### Sort Values

```bash
sort fruit.txt
```

Groups identical lines together.

### Remove Duplicates

```bash
sort fruit.txt | uniq
```

Displays unique values.

### Count Occurrences

```bash
sort fruit.txt | uniq -c
```

Output:

```text
3 apple
2 banana
1 cherry
```

### Rank by Frequency

```bash
sort fruit.txt | uniq -c | sort -rn
```

Sorts counts from highest to lowest.

### Search

```bash
grep apple fruit.txt
```

Shows matching lines.

### Count Matches

```bash
grep -c apple fruit.txt
```

Returns:

```text
3
```

### Exclude Matches

```bash
grep -v apple fruit.txt
```

Shows all lines except those containing "apple".

### Ignore Case

```bash
grep -i APPLE fruit.txt
```

Matches regardless of case.

## Important Note

```bash
uniq
```

only works correctly when identical lines are adjacent.

Usually:

```bash
sort file | uniq
```

comes before using `uniq`.
