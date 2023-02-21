# Script: Ops 201 Class 11 Ops Challenge Solution
# Joshua Phipps
# 2/21/2023
# Purpose:  Powershell IP Analysis Overview


$ip_output = ipconfig /all > "network_report.txt"

Function myfunc {
    $ip_output
}

myfunc
