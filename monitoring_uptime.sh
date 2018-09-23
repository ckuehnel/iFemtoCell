#!/bin/sh

uptime > /user/UPT
MSG=`cat /user/UPT`
echo -n Uptime:
echo "$MSG"

# Send data as Pushover message
curl --silent --insecure \
     --form-string "token=anj8jdfxe5vgjsn3pnt14qjzmfe4ra" \
     --form-string "user=uojfahpyozqtj6gbgccg61e5jngg93" \
     --form-string "message=$MSG" \
     https://api.pushover.net/1/messages.json
echo