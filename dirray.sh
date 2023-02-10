# Script: Ops 201 Class 04 Ops Challenge Solution
# Joshua Phipps
# 2/9/2023
# Purpose: Create directories with arrays


# Creates four directories: dir1, dir2, dir3, dir4
#Put the names of the four directories in an array
#References the array variable to create a new .txt file in each directory

mkdir dir1 dir2 dir3 dir4 

path_array=("./dir1/" "./dir2/" "./dir3/" "./dir4/")

touch "${array[0]}file1.txt"
touch "${array[1]}file1.txt"
touch "${array[2]}file1.txt"
touch "${array[3]}file1.txt"

