#!/bin/zsh
for filename in k omega U
do
    for num in {1..$1}
    do
        echo "outlet${num}
        {
            type zeroGradient;
        }" >> 0/$filename
    done
    echo "}
// ************************************************************************* //
    " >> 0/$filename
done
for num in {1..$1}
do
    echo "outlet${num}
    {
        type calculated;
        value uniform 0;
    }" >> 0/nut
done
echo "}
// ************************************************************************* //
" >> 0/nut
for num in {1..$1}
do
    echo "outlet${num}
    {
        type fixedValue;
        value uniform 0;
    }" >> 0/p
done
echo "}
// ************************************************************************* //
" >> 0/p
