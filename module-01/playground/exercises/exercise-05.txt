# Exercise 5: The Space Trap

## Objective
Understand how spaces affect command arguments.

## Commands

```bash
mkdir my reports

ls
```

## What Happened?

The shell interpreted the command as:

```bash
mkdir my
mkdir reports
```

Result:

```text
my/
reports/
```

## Remove Them

```bash
rmdir my reports
```

## Correct Usage

```bash
mkdir "my reports"

ls

rmdir "my reports"

mkdir my-reports
```

## Key Concepts

Quoted names:

```bash
"my reports"
```

Recommended naming style:

```text
my-reports
```

Avoid spaces whenever possible.
