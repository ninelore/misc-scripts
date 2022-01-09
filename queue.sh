#!/usr/bin/bash
echo "Start in 3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 1
while true; do
	xdotool key space
	TIME=$[$RANDOM % 60 + 120]
	echo "echo - $TIME"
	sleep $TIME
done

