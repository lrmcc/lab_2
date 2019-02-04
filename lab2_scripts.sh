#!/bin/bash
#Author: Luke McConell
#Date: 1/31/2019

# #1 Accept regex and file name from user with prompt
echo "Enter a regular expresion"
read regExpr
echo "Enter a file name"
read fileName

# #2 feed the users regex ($regExpr) into grep and run into users choosen file.
grep $regExpr $fileName

# #3 the following is grep commands which will:
# #3.1 count number of phone numbers in regex_practice.txt
echo "Number of Phone Numbers"
grep -cE "[0-9]{3}-[0-9]{3}-[0-9]{4}" $fileName

# #3.2 count number of emails in regex_practice.txt
echo "Number of Email addresses"
grep -cE "@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}" $fileName
#grep -cE "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" $fileName

# #3.3 List all phone numbers with 303 area code and store results in phone_results.txt
echo "Gathered all (303) area code phone numbers and stored them in phone_results.txt"
grep -E "303-[0-9]{3}-[0-9]{4}" regex_practice.txt >> phone_results.txt

# #3.4 List all emails from geocities.com and store results in email_results.txt
echo "Gathered all geocities.com email addresses and stored them in email_results.txt"
grep -E "@geocities+\.[A-Za-z]{2,6}" regex_practice.txt >> email_results.txt

# #3.5 List all lines that match a command-line regex and store results in command_results.txt
echo "Gathered all lines that match user's command-line input and stored them in command_results.txt"
grep "$regExpr" regex_practice.txt >> command_results.txt
