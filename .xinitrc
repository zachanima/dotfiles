#!/bin/sh

setxkbmap -option ctrl:swapcaps
xrdb -load ~/.Xdefaults &
urxvtd &
xset -b
xset r rate 200
~/.fehbg
xbindkeys

#export XMODIFIERS=@im=SCIM
#export GTK_IM_MODULE="scim"
#export QT_IM_MODULE="scim"

scim -d

while true
do
	while true
	do
		# Format AC status, percentage and time left.
		AC=`acpi -b | cut -d" " -f3`
		LEFT=`acpi -b | cut -d" " -f4 | cut -d"," -f1`
		TIME=`acpi -b | cut -d" " -f5 | cut -b1-5`

		# Determine the current state of the battery.
		if [ $AC = "Full," ]; then
			AC=""
		elif [ $AC = "Unknown," ]; then
			AC=""
		elif [ $AC = "Charging," ]; then
			AC="+"
		else
			AC="-"
		fi
		
		# Add whitespace after time (for aesthetics).
		if [ $TIME != "" ]; then
			TIME="$TIME "
		fi

		# Only show battery status if it is not full.
		if [ $AC != "" ]; then
			BATTERY="[ $TIME$AC $LEFT ] "
		else
			BATTERY=""
		fi

		echo $BATTERY`date +"[ %a %d %b ] [ %R ]"`
	sleep 30
	done | exec dwm > /dev/null
done
