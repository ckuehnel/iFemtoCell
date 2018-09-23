#!/bin/sh

#set -- "${1:-$(</dev/stdin)}" "${@:2}"

if [ $# -lt 1 ] 
then
  echo "Usage: ./Pushover.sh <message>"
else
  msg=$1
  echo [$msg] will be pushed to mobile device

  curl  --silent --insecure \
    --form-string "token=anj8jdfxe5vgjsn3pnt14qjzmfe4ra" \
    --form-string "user=uojfahpyozqtj6gbgccg61e5jngg93" \
    --form-string "message=$msg" \
    https://api.pushover.net/1/messages.json
    echo
fi
