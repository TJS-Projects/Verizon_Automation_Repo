#!/bin/bash
#
# This script was created to read in a list of devices from the INPUT directory and process commands that have been set.
# Created 03/11/2020 Tjs.
#

# Standard error behavior settings:
# ----------------------------------------------------
# set -e
#  set -u
#   set -o pipefail

#Setting Variables:
# ===================================================
CURDATE=`date +%Y%m%d%H%M%S`
SCRIPT_PATH=~/TjsMYSCRIPTS
TEMP_PATH=/tmp
MyLogFileName=SNMPgetScript-"""$CURDATE""".log
TemporaryLog=TempScript-"""$CURDATE""".log
MYLOG=$SCRIPT_PATH/LOGS/"""$MyLogFileName"""
MYtmpLOG=$TEMP_PATH/"""$TemporaryLog"""
My_ARL_DOMS=$SCRIPT_PATH/INPUTS/ARL_DOM_INPUT
My_RES_DOMS=$SCRIPT_PATH/INPUTS/RES_DOM_INPUT
My_Known_Comm_Strgs=$SCRIPT_PATH/INPUTS/TestCommStrgs
. $SCRIPT_PATH/MODULES/SmartsFunctions
MYCOUNT=0
# MYINT_1=300
# MYINT_2=5
# MYCOUNT=0
#      Set your Function name here:


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@  TWODAY LISTING  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#      Set your Function name here:
RunningFunc=TwoDayListing
#!/opt/sbin/perl
. /opt/sbin/
alias sml='smarts_lookup.pl'

#      Set your input file name here:
My_ARL_2DayList=$SCRIPT_PATH/INPUTS/My_ARL_2DayList
Input_File_1=$My_ARL_2DayList

#      Header for the output this will include the function name from above:
#  Put this inside the Function -- Log_Out_Put

#      Function call:
TwoDayLoop_1


exit
