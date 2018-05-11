#!/bin/zsh
let "out_num = $1"
let "simple_time = $2"
for outlet_num in {1..${out_num}}
do
    postProcess -func "flowRatePatch(name=outlet${outlet_num})" -time ${simple_time} | sed -n "40p" >> result
done

    postProcess -func "flowRatePatch(name=inlet)" -time ${simple_time} | sed -n "40p" >> result
