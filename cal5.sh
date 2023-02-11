# Script: Ops 201 Class 05 Ops Challenge Solution
# Joshua Phipps
# 2/10/2023
# Purpose: Loops



# loop on array member
NAMES=(Robert Kris Eli Sarah)
for N in ${NAMES[@]} ; do
  echo "My name is $N"
done

# loop on command output results
for f in $( ls prog.sh /etc/localtime ) ; do
  echo "File is: $f"
done






#Main

userpid() {
    ps aux
}

kill() {
    kill -9 39954
}
 

echo "1- List all PID";
echo "2- Kill this file";
echo "Make Selection 1 or 2"
read selection

if [[ $selection == 1 ]]; then
    userpid
elif [[ $selection == 2 ]]; then
    kill
fi



#End