#!/bin/bash

PROPERTIES_PATH=/root/.sip-communicator/sip-communicator.properties

if [ "x$PRIVATE_IP" != "x" ] && [ "x$PUBLIC_IP" != "x" ]; then
	echo "org.jitsi.videobridge.NAT_HARVESTER_PRIVATE_ADDRESS=$PRIVATE_IP" >> "$PROPERTIES_PATH"
	echo "org.jitsi.videobridge.NAT_HARVESTER_PUBLIC_ADDRESS=$PUBLIC_IP" >> "$PROPERTIES_PATH"

	echo "NAT set. Local: $PRIVATE_IP, Public: $PUBLIC_IP"	
fi

exec /opt/jitsi-videobridge/jvb.sh $* 
