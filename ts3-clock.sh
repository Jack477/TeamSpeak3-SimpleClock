#!/bin/bash
	
	
	#Serverquery login
	LOGIN='serveradmin'
		
	#serverquery password
	PASSWORD='serverquery_password'
	
	#Channel id
	CID='Your channel id!'
	
	#Your server ID default 1
	SERVER_ID=1
	
	#Host ip with serverquery port
	HOST='127.0.0.1 10011'
	
	#Clock refresh in seconds
	TIME_STEP=1
	
	(
	echo open "$HOST"
	sleep 1
	echo use $SERVER_ID
	sleep 1
	echo login "$LOGIN" "$PASSWORD"
	sleep 1
	while [ true ]; do
	sleep $TIME_STEP
	my_time=$(date | awk '{print $4}')
	echo channeledit cid=$CID channel_name="Time:$my_time"
	done 
	echo quit
	) | telnet
