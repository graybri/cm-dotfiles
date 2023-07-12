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
# Date    : 2022-05-31
# 
# Name    : headset.sh
#
# Purpose :	Switch current audio ouput device(sink) to
#           headset
# 
#
#
# Usage   :	Called by mod-shift-s in i3
#
#######################################################

# Get sink id
SINK=$(pactl list short sinks | grep "Logitech_USB" | awk '{print $1}')

# Change default sink
pactl set-default-sink $SINK



