#!/bin/zsh
let "out_num = $1"
file=$2
data_name=$3
data_result=$4
echo "\n" >> ${data_result}
echo "# name: ${data_name}" >> ${data_result}
echo "# type: matrix" >> ${data_result}
echo "# rows: 1" >> ${data_result}
echo "# columns: ${out_num}" >> ${data_result}
for num in {1..${out_num}}
do
    cat ${file} | sed -n "${num}p" | xargs $WIDE_SHELL/openFoam/read.sh >> ${data_result}
done
