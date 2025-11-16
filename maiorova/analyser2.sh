#!/bin/bush
for i in $(ls $1)
do
    echo -e "$1$i"
    for j in $(cat $1$i)
    do
        name=$(echo $j | cut -d ":" -f1)
        age=$(echo $j | cut -d ":" -f2)
        email=$(echo $j | cut -d ":" -f3)
        if [[$email =~ .spbstu.ru$]]
        then
            echo -e "Name:$name"
            echo -e "Age:$age"
            echo -e "Email:$email"
        fi
    done
done
