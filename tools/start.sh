#!/bin/bash

ARGS=
PROPS=

VB_PROPERTIES=/root/.sip-communicator/sip-communicator.properties

while [ "$#" -ne 0 ]; do
    ARG=$1
    shift
    if [[ "$ARG" =~ ^--x-.*= ]]; then
      PROPS="$PROPS\n${ARG:4}"
    else
      ARGS="$ARGS $ARG"
    fi
done

if [ ! -z "$PROPS" ]; then
  echo -e "Setting videobridge properties:$PROPS"
  mkdir -p $(dirname "$VB_PROPERTIES")
  echo -e  "$PROPS" > "$VB_PROPERTIES"
fi

exec /opt/jitsi-videobridge/jvb.sh $ARGS
