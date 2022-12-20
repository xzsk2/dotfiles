#!/bin/bash

artist=$(playerctl -p %any metadata 2> /dev/null |grep xesam:artist|head -n 1| sed 's/.* xesam:artist *//ig')
title=$(playerctl -p %any metadata 2> /dev/null |grep xesam:title | sed 's/.* xesam:title *//ig')
stat=$(playerctl -p %any status 2> /dev/null)
artist_maxlength=16
title_maxlength=32

artist_length=$(echo $artist | wc -m)
title_length=$(echo $title | wc -m)


if [ "$artist_length" -gt $artist_maxlength ]
then
	artist_truncated=$(echo "$artist"| cut -c -"$artist_maxlength")
	artist_truncated=$(echo "$artist_truncated...")
else
	artist_truncated=$artist
fi

if [ "$title_length" -gt $title_maxlength ]
then
	title_truncated=$(echo "$title"| cut -c -"$title_maxlength")
	title_truncated=$(echo "$title_truncated...")
else
	title_truncated=$title
fi

if [ "$1" == "-s" ]
then
case "$stat" in
	"Playing")
		echo ""
		;;
	"Paused")
		echo ""
		;;
	*)
		echo ""
		;;
esac
exit
fi


case "$stat" in
	"Playing"|"Paused")
		if [ "$artist_truncated" = "" ]
		then
			echo "$title_truncated"
		fi
		echo "$title_truncated - $artist_truncated"
		;;
	*)
		echo ""
		;;
esac

