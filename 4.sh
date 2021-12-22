#!/bin/bash

sed -E 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b/**!CENSU--RADO!!**/g' "$1" > "censor.txt"
echo "$(< censor.txt)" > "$1"
cat censor.txt
