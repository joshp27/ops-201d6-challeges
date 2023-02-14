# Script: Ops 201 Class 06 Ops Challenge Solution
# Joshua Phipps
# 2/13/2023
# Purpose: Create Conditionals



if [[ -d dir5 ]]; then
    echo "This is Directory 5"
else
    mkdir dir5
fi

path_array=(./dir5/test1.txt ./dir5/test2.txt ./dir5/test3.txt)
for file in "${path_array[@]}"
do
    if [[ -f "$file" ]]; then
        echo "This file exsit" 
else 
    touch $file
fi
done