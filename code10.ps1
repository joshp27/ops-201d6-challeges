#!/bin/bash

# Script: Ops 201 Class 010 Ops Challenge Solution
# Joshua Phipps
# 2/17/2023
# Purpose: System Process Commands


# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object CPU -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object ProcessName -Descending

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object WSK -Descending | Select-Object -First 5

# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
Start-Process msedge.exe https://owasp.org/www-project-top-ten/

# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.

$i=1
for(;$i -le 10;$i++)
{
    Start-Process msedge.exe https://owasp.org/www-project-top-ten/
}


# Close all Internet Explorer windows.
Stop-Process -Name msedge

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.
Stop-Process -Id 2340 
#I killed the calculator
