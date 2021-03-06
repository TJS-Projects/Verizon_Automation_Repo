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
CURDATE=$(date +%Y%m%d%H%M%S)
SHRTDATE=$(date +%Y%m%d)
SCRIPT_PATH=/opt/sbin
TEMP_PATH=/tmp
MyLogFileName=2DayListScript-"""$CURDATE""".log
#####     TemporaryLog=TempScript-"""$CURDATE""".log
MYLOG=$SCRIPT_PATH/BASH_LOGS/"""$MyLogFileName"""
#####     MYtmpLOG=$TEMP_PATH/"""$TemporaryLog"""
MYtmpINPUT_1=$TEMP_PATH/last_discovery_gt_2days_rpt_`date +%Y%m%d`*
MYTmpOUTPUT_1=$TEMP_PATH/Dev_Chkr_2day_out1-"""$CURDATE""".log
MyTmpOUTPUT_2=$TEMP_PATH/Dev_Chkr_2day_out2-"""$CURDATE""".log
MyTmpOUTPUT_3=$SCRIPT_PATH/BASH_LOGS/2DaySuspects-"""$CURDATE""".log
MyCleanup_1=$TEMP_PATH/Dev_Chkr_2day_out*
######     MyTmpOUTPUT_3=$TEMP_PATH/Dev_out3_Chkr_2day-"""$CURDATE""".log
#  . $SCRIPT_PATH/FUNCTIONS/FunctionNameGoesHere.sh
. $SCRIPT_PATH/BASH_MODULES/SmartsFunctions
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
#!/bin/bash
if "$HOSTNAME === arlmnrdb"
     then
        ARL_LD_GT_2Day_FULL-Mail
        ARL_LD_GT_2Day_Suspects-Mail
elif "$HOSTNAME === remnrdb" 
     then
        RES_LD_GT_2Day_FULL-Mail
        RES_LD_GT_2Day_Suspects-Mail
else
	MAIL_ERROR_FUNC-Mail
fi

exit


# Log cleanup statement:
#       find /tmp -maxdepth 1 -mtime +1 -name '2DaySuspects-*' -exec rm {} \;
# crontab -e additions:
#       Run interogation and Send LastDiscovery GT 2 Days FULL detail and SUSPECTS report - sent at 9:35
#       35 09 * * * /opt/sbin/2DayReport.sh >> /data/log/2DayReport.log 2>&1



# Log cleanup statement:
# 	find /tmp -maxdepth 1 -mtime +1 -name '2DaySuspects-*' -exec rm {} \;
# crontab -e additions:
#	Run interogation and Send LastDiscovery GT 2 Days FULL detail and SUSPECTS report - sent at 9:35
#       35 09 * * * /opt/sbin/last_discovery_gt_2days_rpt.bash >> /data/log/last_discovery_gt_2days_rtp.log 2>&1



