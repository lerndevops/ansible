#!/bin/bash

#---------------------------------------------------------------------------------------------------
# Purpose of this script is to purge (delete) dumps like heap, core, javacore, Snap
#---------------------------------------------------------------------------------------------------

DIRECTORY=/home/wasprofile
if [ -d "$DIRECTORY" ]; then
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name heapdump.*.phd -exec rm -f {} \;
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name core.*.dmp -exec rm -f {} \;
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name javacore.*.txt -exec rm -f {} \;
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name Snap.*.trc -exec rm -f {} \;
fi

DIRECTORY=/home/wasext
if [ -d "$DIRECTORY" ]; then
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name heapdump.*.phd -exec rm -f {} \;
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name core.*.dmp -exec rm -f {} \;
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name javacore.*.txt -exec rm -f {} \;
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name Snap.*.trc -exec rm -f {} \;
fi

DIRECTORY=/tmp
if [ -d "$DIRECTORY" ]; then
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name heapdump.*.phd -exec rm -f {} \;
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name core.*.dmp -exec rm -f {} \;
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name javacore.*.txt -exec rm -f {} \;
   find -L $DIRECTORY -maxdepth 3 -mtime +7 -type f -name Snap.*.trc -exec rm -f {} \;
fi
