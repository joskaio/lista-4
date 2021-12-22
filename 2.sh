#!/bin/bash

declare -A d

while read usr url qdwn
do
	d["$usr"]=$(( ${d["$usr"]} + $qdwn ))
done < $1

for usr in ${!d[*]}
do
	echo "$usr ${d[${usr}]}"
done
