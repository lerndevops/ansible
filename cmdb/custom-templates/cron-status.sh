#!/bin/bash

cs=`sudo service cron status | grep Active | awk '{print $2,$3}'`
cat <<EOF
{
    "cron_status" : "$cs"
}
EOF
