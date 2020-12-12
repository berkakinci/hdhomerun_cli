#!/bin/bash

MY_DIR=`dirname $0`
source "$MY_DIR/.config.sh"

COMMAND=`basename $0`
if [[ "$COMMAND" != "discover" ]]; then
    DEVICEID=$HDHR_DEVICE_ID
fi

echo -e "=== $HDHOMERUN_CONFIG $DEVICEID $COMMAND $@"
$HDHOMERUN_CONFIG $DEVICEID $COMMAND "$@"
