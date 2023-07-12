#!/usr/bin/bash

#
#  ____   ____   	Brian Gray
# | __ ) / ___| 	School of Information Technology
# |  _ \| |  _   	Administration & Security
# | |_) | |_| |_ 	Seneca College
# |____(_)____(_)	brian.gray@senecacollege.ca
#                

########################################################
# Author  : Brian Gray
# Date    : 2022-03-20
# 
# Name    : color.sh
#
# Purpose :	Sets environment variables to hold bash
#			escape sequences for colorizing bash output
#			Variables can be used for prompt or 'echo -e' 
# 
# Usage   :	Invoked from .bashrc '. ~/.local/bin/color.sh' 
#
#######################################################


export red="\033[1;31m"
export green="\033[1;32m"
export yellow="\033[1;33m"
export blue="\033[1;34m"
export purple="\033[1;35m"
export cyan="\033[1;36m"
export grey="\033[0;37m"
export reset="\033[m"

