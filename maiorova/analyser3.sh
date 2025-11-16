#!/bin/bush
for i in $(ls $1)
do
    sover=0
    nesover=0
    echo -e "$1$i:"
    for j in $(cat $1$i)
    do
        age=$(echo $j | cut -d ":" -f2)
        if [[$age -ge 18]]
            then
                sover=$(($sover+1))
        else
            nesover=$(($nesover+1))
        fi    
    done
done
echo -e "Совершеннолетних: $sover"
echo -e "Несовершеннолетних: $nesover"
