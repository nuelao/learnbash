# Exercise 10: Installing Your Own Command

## Objective

Make a script runnable from anywhere.

## Create a Personal Scripts Folder

```bash
mkdir -p ~/bin
```

## Create a Script

```bash
nano greet.sh
```

Contents:

```bash
#!/usr/bin/env bash

echo "Hello $1, welcome to the terminal"
```

Make executable:

```bash
chmod +x greet.sh
```

Move it:

```bash
mv greet.sh ~/bin/
```

## Add ~/bin to PATH

Temporary:

```bash
export PATH="$HOME/bin:$PATH"
```

Permanent:

```bash
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## Run from Anywhere

```bash
greet.sh Emmanuel
```

Output:

```text
Hello Emmanuel, welcome to the terminal
```

## Key Concepts

```bash
PATH
```

A list of directories Bash searches for commands.

```bash
~/bin
```

Personal folder for custom scripts.

```bash
which greet.sh
```

Shows where Bash found the command.

## Takeaway

Once `~/bin` is on your PATH:

- Any executable script placed in `~/bin` can be run from anywhere.
- You only need to add `~/bin` to PATH once.
