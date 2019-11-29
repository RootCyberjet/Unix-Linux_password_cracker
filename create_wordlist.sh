#****************************************************************
#			NAME - SHIBA BISWAS
#			DESIGNATION - STUDENT
#			EMAIL - shibabiswas1111@gmail.com
#			INDIA
#****************************************************************

#! /bin/bash

echo "----------------------------------------------"
echo "----------------------------------------------"
echo -e "Enter victim's first name : \c"
read fname
echo -e "Enter victim's last name : \c"
read lname
echo -e "Enter victim's date of birth (ddmmyyyy): \c"
read DOB
echo -e "Enter victim's home town name : \c"
read ht
echo -e "Enter victim's mobile number : \c"
read mob
echo -e "Enter victim's email ID : \c"
read email
echo -e "Enter victim's favourite one's name : \c"
read fo
echo -e "Enter victim's nick name : \c"
read nick
echo -e "Enter your requirements : \c"
read req
echo "----------------------------------------------"
echo "----------------------------------------------"
echo -e "Enter minimum length of password : \c"
read minlen
echo -e "Enter maximum length of password : \c"
read maxlen
echo -e "Enter the path where you want to save dictionary file : \c"
read path
echo "----------------------------------------------"

Fname=$(echo "$fname" | tr '[a-z]' '[A-Z]')
Lname=$(echo "$lname" | tr '[a-z]' '[A-Z]')
HT=$(echo "$ht" | tr '[a-z]' '[A-Z]')
EMAIL=$(echo "$email" | tr '[a-z]' '[A-Z]')
FO=$(echo "$fo" | tr '[a-z]' '[A-Z]')
NICK=$(echo "$nick" | tr '[a-z]' '[A-Z]')

DATA="$fname$lname$DOB$ht$mob$email$fo$nick$req$Fname$Lname$HT$EMAIL$FO$NICK"

crunch "$minlen" "$maxlen" "$DATA" -o "$path/dictionary.txt"

exit 0

