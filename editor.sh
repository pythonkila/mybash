#! /bin/bash 

if [ "$EDITOR" = "" ]; then
	EDITOR=vi
fi

echo $EDITOR

[ -z "$teditor" ] && teditor=vim && echo "$teditor"
