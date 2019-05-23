#!/bin/bash
args=()
for i in "$@"
do
    args+=("$i")
done

rand=$[$RANDOM % ${#args[@]}]
echo $(date)
echo ${args[$rand]}