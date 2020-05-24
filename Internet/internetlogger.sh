#!/bin/bash

echo 'Checking if ping.log exists...'
while true; do
	FILE=ping.log
	if test "$FILE"; then
		echo 'Found ping.log, will now proceed to check internet and log it'
		while true; do
			echo '----------------------------------------' >> ping.log
			echo 'Pinging 8.8.8.8...'
			date >> ping.log
			ping -c 4 8.8.8.8 >> ping.log
			echo 'Pausing for 10 seconds'
			sleep 10
		done
	else
		echo 'Couldnt find ping.log, creating it now...'
		touch ping.log
	fi
done
