#!/bin/bash

echo 'Setting up ping log...'
echo 'What interval should i ping with?'
read -r interval
while true; do
	FILE=ping.log
	if test "$FILE"; then
		echo 'Found ping.log, will now proceed to check internet and log it'
		while true; do
			echo '----------------------------------------' >> ping.log
			echo 'Pinging 8.8.8.8...'
			date >> ping.log
			ping -c 4 8.8.8.8 >> ping.log
			echo "Pausing for $interval seconds"
			sleep $interval
		done
	else
		echo 'Couldnt find ping.log, creating it now...'
		touch ping.log
	fi
done
