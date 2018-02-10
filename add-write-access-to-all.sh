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
#
#
#Instructies voor toekennen van schrijfrechten/Usages
#
#Dubbel klik op add-write-access-to-all.sh en kies "uitvoeren"/Dubbel click add-write-acces-to-all.sh
#De bestandsbeheerder zal openen./The filemanager will open.
#
#Navigeer naar en kies de map waar de rechten aangepast moeten worden./Navigate and select folder to allow write access.
#
#Het wachtwoord venster zal openen./The password window will open.
#Voer het wachtwoord van de gebruiker in./Enter password
#
#Het venster "De rechten zijn aangepast" zal openen./The susses window will open.
#Sluit het venster./Close window.
#Klaar of herhaal voor andere mappen./Finished or start over for other folders.
####;-)
#
# Copyleft 2017 by Oliver van Praag  <oliver_a_t_ovpc_d_o_t_nl> and Ignacio Nunez Hernanz <nacho _a_t_ ownyourbits _d_o_t_ com>
# GPL licensed (see end of file) * Use at your own risk!
# License
#
# This script is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This script is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this script; if not, write to the
# Free Software Foundation, Inc., 59 Temple Place, Suite 330,
# Boston, MA  02111-1307  USA
