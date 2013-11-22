#!/bin/bash

TMPFILE=`mktemp`
curl https://raw.github.com/jilen/archlinux-scripts/master/res/unused_apps > $TMPFILE
ls $TMPFILE
while read line
do
    sudo mkdir -p /usr/share/applications/backup
    if [ -f /usr/share/applications/$line ]; then
        sudo mv /usr/share/applications/$line /usr/share/applications/backup/$line.bak
    fi

done <  $TMPFILE
