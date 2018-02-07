#!/bin/bash

DIR="$( zenity --file-selection --directory 2>/dev/null )"

FILES=()

while IFS=  read -r -d $'\0'; do
    FILES+=("$REPLY")
done < <( find "$DIR" -not -writable -type f -print0 )

[[ ${#FILES[0]} -eq 0 ]] && { echo "All files have write permissions"; exit 0; }

for f in "${FILES[@]}"; do
  echo -e "Fixing writing permissions for file \e[1m$f\e[0m"
  chmod +w "$f"
done
