#!/usr/bin/env bash


# Script to set motd text for student display

echo -n "Enter motd: "
read message
clear
figlet -f slant "ULI101" -w 10000 | lolcat 
echo $message | cowsay | lolcat

