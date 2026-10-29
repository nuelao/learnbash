# Exercise 7: Build and Copy a Project Skeleton

## Objective
Create a project structure and back it up.

## Commands

```bash
mkdir -p project/{src,docs,tests}

touch project/src/main.txt
touch project/docs/readme.txt

tree project

cp -r project project-backup

tree
```

## Key Concepts

### Brace Expansion

```bash
project/{src,docs,tests}
```

Creates:

```text
project/
├── src
├── docs
└── tests
```

### Recursive Copy

```bash
cp -r project project-backup
```

Copies an entire directory and its contents.

Without `-r`:

```bash
cp project project-backup
```

fails because `project` is a directory.

## Task

Preview:

```bash
tree project-backup
```

Delete safely:

```bash
rm -r project-backup
```

Verify:

```bash
ls
```
