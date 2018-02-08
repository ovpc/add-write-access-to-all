#!/bin/bash

gksudo -lk -- bash -c '
DIR="$( zenity --file-selection --directory 2>/dev/null )"

FILES=()

while IFS=  read -r -d $'\''\0'\''; do
    FILES+=("$REPLY")
done < <( find "$DIR" -type f ! -perm -ugo+w -print0 )

[[ ${#FILES[0]} -eq 0 ]] && { zenity --info --text "All files have write permissions" 2>/dev/null; exit 0; }

for f in "${FILES[@]}"; do
  echo -e "Fixing writing permissions for file \e[1m$f\e[0m"
  chmod ugo+w "$f"
done
'
