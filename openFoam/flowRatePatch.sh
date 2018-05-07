#!/bin/zsh
let "simple_time = $1"
for outlet_num in {1..12}
do
    postProcess -func "flowRatePatch(name=outlet${outlet_num})" -time ${simple_time} | sed -n "40p" >> result
done

    postProcess -func "flowRatePatch(name=inlet)" -time ${simple_time} | sed -n "40p" >> result
