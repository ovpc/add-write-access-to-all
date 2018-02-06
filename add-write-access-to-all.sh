#!/bin/bash
# Ask the PATH
echo Geef het volledige Linuxpad naar de map, waar je schrijfrechten voor wilt geven 
read varname
echo De map heet $varname Schrijfrechten toekennen.....Je zult om het wachtwoord van coencadbeheer gevraagd worden.
chmod a+w -R $varname
echo schrijfrechten van $varname aangepast
exit
