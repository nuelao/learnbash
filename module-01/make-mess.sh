#!/usr/bin/env bash

# make-mess.sh: builds a practice folder of fake logs for Module 1.
# Safe: it only writes inside ~/bash-course/module-01/messy-logs

set -eu

base="$HOME/bash-course/module-01/messy-logs"

# Make the folders
mkdir -p "$base"/{app,web,db,old,tmp}

# Random log levels (INFO is common, ERROR is rare)
levels=(INFO INFO INFO WARN ERROR)

# Three days of logs for each of three services
for day in 01 02 03; do
    for svc in app web db; do
        f="$base/$svc/$svc-2026-10-$day.log"

        : > "$f"

        for n in 1 2 3 4 5 6 7 8; do
            lvl=${levels[RANDOM % 5]}
            echo "2026-10-$day 0$n:15:00 $svc $lvl message-$n" >> "$f"
        done
    done
done

# Some junk to clean up
touch "$base"/tmp/{junk1,junk2,junk3}.tmp

echo "ignore me" > "$base/old/readme.OLD"

cp "$base/app/app-2026-10-01.log" \
   "$base/old/app-2026-10-01.log.bak"

echo "Messy folder ready: $base"
