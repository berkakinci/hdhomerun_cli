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

PROPERTY=`basename $FULLPATH`
TUNER=`basename $DIRNAME`

if [[ $# -gt 0 ]]; then
    COMMAND=set
else
    COMMAND=get
fi
#echo -e "'$COMMAND'\n'$TUNER'\n'$PROPERTY'\n'$@'"

$DIRNAME/$COMMAND $PROPERTY "$@"
