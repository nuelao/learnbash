# Exercise 1: Make a Playground and Walk Around

## Objective
Practice navigating between directories using absolute and relative paths.

## Commands

```bash
cd ~/bash-course/module-01
mkdir playground
cd playground
pwd

cd ../../module-00
pwd

cd ~/bash-course/module-01/playground

cd ~
cd -
```

## Key Concepts

- `../../module-00` is a relative path.
- `~/bash-course/...` is an absolute path.
- `cd -` returns to the previous directory.
- `pwd` displays your current location.

## Task

From inside `playground`, write the relative path to:

```text
~/bash-course/notes
```

### Answer

```text
../../notes
```
