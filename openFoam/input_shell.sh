#!/bin/zsh
file=$1
data_name=$2
data_result=$3
echo "\n" >> ${data_result}
echo "# name: ${data_name}" >> ${data_result}
echo "# type: matrix" >> ${data_result}
echo "# rows: 1" >> ${data_result}
echo "# columns: 12" >> ${data_result}
for num in {1..12}
do
    cat ${file} | sed -n "${num}p" | xargs $WIDE_SHELL/openFoam/read.sh >> ${data_result}
done
