#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Joshua Phipps
# 2/22/2023
# Purpose: Domain Analyzer


#Take a user input string. Presumably the string is a domain name such as Google.com.

#Run whois against a user input string.
whois cnn.com
#Run dig against the user input string.
dig cnn.com
#Run host against the user input string.
host cnn.com
#Run nslookup against the user input string.
nslookup cnn.com

function myfunction (){
    whois cnn.com >> Domain_Analyzer.txt
    dig cnn.com >> Domain_Analyzer.txt
    host cnn.com >> Domain_Analyzer.txt
    nslookup cnn.com >> Domain_Analyzer.txt
}
myfunction

"${EDITOR:-vi}" Domain Analyzer.txt