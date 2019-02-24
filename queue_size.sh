#!/bin/bash
HOSTNAME="${COLLECTD_HOSTNAME:-vipmilter}"
INTERVAL="${COLLECTD_INTERVAL:-60}"


while sleep "$INTERVAL"; do
	for q in maildrop incoming active defer deferred
	    do
            #count=$(find /var/spool/postfix/$q ! -type d -rint | wc -l)
            count=$(find /var/spool/postfix/$q ! -type d | wc -l)
            echo "PUTVAL \"$HOSTNAME/exec-postfix/gauge-$q\" interval=$INTERVAL N:$count"
        done
done
