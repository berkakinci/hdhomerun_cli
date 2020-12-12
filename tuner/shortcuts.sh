#!/bin/bash

if [[ "$0" =~ ^[/] ]]; then
    # Already a full path
    FULLPATH=$0
else
    # Relative path
    FULLPATH=`pwd`/$0
fi
FULLPATH=${FULLPATH//\/.\//\/} # Matchsticks...  Replace all "/./" with a "/"
DIRNAME=`dirname $FULLPATH`
PARENTDIRNAME=`dirname $DIRNAME`

COMMAND=`basename $FULLPATH`
TUNER=`basename $DIRNAME`
PROPERTY=${1:-help}
shift

case $TUNER in
    tuner0) TUNER=tuner0;;
    tuner1) TUNER=tuner1;;
    *)      TUNER=tuner0;;
esac


case $PROPERTY in
    help) $PARENTDIRNAME/get "help" | grep "tuner<n>";;
    *)    $PARENTDIRNAME/$COMMAND "/$TUNER/$PROPERTY" "$@";;
esac
