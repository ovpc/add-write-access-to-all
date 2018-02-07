#!/bin/bash
# Ask the PATH
#echo Geef het volledige Linuxpad naar de map, waar je schrijfrechten voor wilt geven 
#varname_
#gtk_window_set_transient_for()
inputStr=$(zenity --entry --title=”Set Direcory” --text=”Enter full PATH”) 
#
echo "Making Directory $inputStr writable to all .....You may be asked for your password."
chmod a+w -R $inputStr
echo  Directory $inputStr is now writable
exit

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
