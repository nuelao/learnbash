# Exercise 3: Remove Things Safely

## Objective
Learn safe deletion practices.

## Commands

```bash
touch scrap1.txt scrap2.txt

ls scrap*

rm scrap1.txt

rmdir drafts
```

## Expected Result

The final command should fail because:

```text
Directory not empty
```

The `drafts` directory still contains:

```text
plan.txt
```

## Clean Up

```bash
rm drafts/plan.txt

rmdir drafts
```

## Key Concepts

- `rm` removes files.
- `rmdir` removes empty directories only.
- Always inspect before deleting.
