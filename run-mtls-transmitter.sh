#!/usr/bin/env bash

set -uex 

CWD=$(dirname $BASH_SOURCE[0])


i=0
for var in "$@"
do
  PORT=$(( 8080 + i ))
  i=$(( i + 1 ))
  ${CWD}/mkls-transmitter --port $PORT --cert /cert/client.pem --key /cert/client-key.pem -url $var &
done

fg

  

