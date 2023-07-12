#!/bin/bash
#  _                     _     
# | |__   _____  __  ___| |__  
# | '_ \ / _ \ \/ / / __| '_ \ 
# | |_) | (_) >  < _\__ \ | | |
# |_.__/ \___/_/\_(_)___/_| |_|
#                              

#################################################################
# Author  : Brian Gray
# Date    : 2022-04-15
# 
# Name    : box.sh
#
# Purpose :	Creates 4 functions to display a text message
#           in a box using white, red, green, or yellow text
#           Functions box(), rbox(), ybox() gbox()
#
# Usage   : sourced from .basrc ". ~/.local/bin/box.sh"
#           used to create functions
#           
#           box "message"
#           rbox "message"
#           ybox "message"
#           gbox "message"
#
#           Requires ~/.local/bin/color.sh to set color variables 	 
#
##################################################################

# Call color.sh to set color environment variables
if [ -f ~/.local/bin/color.sh ]
	then
	. ~/.local/bin/color.sh
fi

function box() {
	title="| $1 |"
	edge=$(echo "$title" | sed 's/./#/g')
	echo "$edge"
	echo -e "$title"
	echo "$edge"
}

function rbox() {
	echo -n -e "${red}"
	box "$1"
	echo -n -e "${reset}"
}

function ybox() {
	echo -n -e "${yellow}"
	box "$1"
	echo -n -e "${reset}"
}

function gbox() {
	echo -n -e "${green}"
	box "$1"
	echo -n -e "${reset}"
}

export -f box rbox ybox gbox
