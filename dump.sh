#!/bin/bash

source .config.sh

echo -e "\n========== Help - Usage ==========="
$HDHOMERUN_CONFIG

echo -e "\n========== Discover ==========="
$HDHOMERUN_CONFIG discover

echo -e "\n========== Help - Nodes ==========="
$HDHOMERUN_CONFIG $HDHR_DEVICE_ID get help

while  read F; do
    F=${F//<n>/0}
    F=${F// <*/}
    F=${F// \"*/}
    echo " +===== $F ====="
    $HDHOMERUN_CONFIG $HDHR_DEVICE_ID get $
done <<< `$HDHOMERUN_CONFIG $HDHR_DEVICE_ID get help`
