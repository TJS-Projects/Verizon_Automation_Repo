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
MyLogFileName=2DayListScript-"""$CURDATE""".log
#####     TemporaryLog=TempScript-"""$CURDATE""".log
MYLOG=$SCRIPT_PATH/LOGS/"""$MyLogFileName"""
#####     MYtmpLOG=$TEMP_PATH/"""$TemporaryLog"""
MYtmpINPUT_1=$TEMP_PATH/last_discovery_gt_2days_rpt_`date +%Y%m%d`*
MYTmpOUTPUT_1=$TEMP_PATH/Dev_Chkr_2day_out1-"""$CURDATE""".log
MyTmpOUTPUT_2=$TEMP_PATH/Dev_Chkr_2day_out2-"""$CURDATE""".log
MyTmpOUTPUT_3=$SCRIPT_PATH/LOGS/2DaySuspects-"""$CURDATE""".log
MyCleanup_1=$TEMP_PATH/Dev_Chkr_2day_out*
                       Dev_Chkr_2day_out1-
######     MyTmpOUTPUT_3=$TEMP_PATH/Dev_out3_Chkr_2day-"""$CURDATE""".log
#  . $SCRIPT_PATH/FUNCTIONS/FunctionNameGoesHere.sh
. $SCRIPT_PATH/MODULES/SmartsFunctions
# PATH=$PATH:/usr/sbin
MYCOUNT=0
MYINT_3=3
MYINT_7=7

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
