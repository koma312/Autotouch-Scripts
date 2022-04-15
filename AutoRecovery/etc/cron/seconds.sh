#!/bin/sh
lastpid=$(cat /var/root/lastpid 2> /dev/null)
curpid=$(ps ax | egrep '/SpringBoard$' | awk '{print $1}')

if [ "${lastpid}" != "${curpid}" ]; then
   currentmode=$(activator current-mode)
   if [ "${currentmode}" != "lockscreen" -a "${currentmode}" != "springboard" ]; then exit; fi

   echo "${curpid}" > /var/root/lastpid
   OUTPUT=$(ipconfig getifaddr en0)
   tmpVar='http://'
   myScr="$tmpVar$OUTPUT"
   filename=/var/mobile/Library/AutoTouch/Library/recovery.txt
   read -r FIRSTLINE < $filename
   tmpVar=':8080/control/start_playing?path=%2F'
   myURL="$myScr$tmpVar$FIRSTLINE"
   curl "${myURL}"
   
fi