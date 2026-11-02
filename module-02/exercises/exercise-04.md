# Exercise 4: Exit Codes

## Objective

Understand how commands indicate success or failure.

## Commands

Check a successful command:

```bash
ls
echo $?
```

Check a failing command:

```bash
ls does-not-exist
echo $?
```

## Key Concepts

Every command returns an exit code:

```text
0 = Success
Non-zero = Failure
```

Examples:

```bash
echo $?
```

Displays the exit status of the previous command.

## Example Output

Successful command:

```text
0
```

Failed command:

```text
2
```

(Exact value may vary.)
