# Script: Ops 201 Class 07 Ops Challenge Solution
# Joshua Phipps
# 2/14/2023
# Purpose: System Info


# CPU
#sudo lshw | grep "CPU"

# RAM
 #sudo lshw | grep -A 4 "*-memory"

 #Network
  #sudo lshw | grep -A 15 "*-network"

  #Display
  #sudo lshw | grep -A 12 "*-display" | grep -v "logical name:\| version:"

  
CPU() {
    sudo lshw | grep "CPU"
}

RAM() {
    sudo lshw | grep -A 4 "*-memory"
}
 

echo "1- CPU";
echo "2- RAM";
echo "Make Selection 1 or 2"
read selection

if [[ $selection == 1 ]]; then
    CPU
elif [[ $selection == 2 ]]; then
    RAM
fi

Network() {
    sudo lshw | grep -A 15 "*-network"
}

Display() {
    sudo lshw | grep -A 12 "*-display" | grep -v "logical name:\| version:"
}
 

echo "3- Network";
echo "4- Display";
echo "Make Selection 3 or 4"
read selection


if [[ $selection == 3 ]]; then
    Network
elif [[ $selection == 4 ]]; then
    Display
fi
