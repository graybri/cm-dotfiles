#!/bin/bash
#
#  ____   ____   	Brian Gray
# | __ ) / ___| 	School of Information Technology
# |  _ \| |  _   	Administration & Security
# | |_) | |_| |_ 	Seneca College
# |____(_)____(_)	brian.gray@senecacollege.ca
#                

########################################################
# Author  : Brian Gray
# Date    : 2022-09-11
# 
# Name    : tray.sh
#
# Purpose :	Reload i3status tray items 
#           Load PanGPA tray icon for Global Protect VPN
#
# Usage   : Called from ~/.config/i3/config	 
#
#######################################################

pkill -f nm-applet
pkill -f PanGPA

nm-applet --indicator &
PanGPA start &


