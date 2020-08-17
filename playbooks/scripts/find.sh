#!/bin/bash
# Script find and  type of files which are N days older
#

if [ $# -ne 3 ]
then
    echo Please Check and Rerun
    echo -------------------------
    echo "$0 Directory FileExtension DaysOld"
    echo $0 /var/log/tomcat "*.log"  30
    exit
fi

DIR=$1
FILEEXT=$2
DAYSOLD=$3

find ${DIR} -type f -name ${FILEEXT} -mtime +${DAYSOLD}
