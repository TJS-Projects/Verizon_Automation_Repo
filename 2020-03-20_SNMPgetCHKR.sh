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

# MYINTERVAL=2
# MYLOG=$SCRIPT_PATH=/LOGS/test.shell.script-${CURDATE}.log
# MYLOG=$SCRIPT_PATH=/LOGS/test.shell.script-20110517.log
MYLOG=$SCRIPT_PATH/LOGS/"""$MyLogFileName"""
MYtmpLOG=$TEMP_PATH/"""$TemporaryLog"""
My_ARL_DOMS=$SCRIPT_PATH/INPUTS/ARL_DOM_INPUT
My_RES_DOMS=$SCRIPT_PATH/INPUTS/RES_DOM_INPUT
#    My_Known_Comm_Strgs=$SCRIPT_PATH/INPUTS/My_Strings
My_Known_Comm_Strgs=$SCRIPT_PATH/INPUTS/TestCommStrgs
#  . $SCRIPT_PATH/FUNCTIONS/FunctionNameGoesHere.sh
#            . $SCRIPT_PATH/MODULES/SmartsFunctions
# PATH=$PATH:/usr/sbin
MYCOUNT=0
# MYINT_1=300
# MYINT_2=5
# MYCOUNT=0
#      Set your Function name here:
RunningFunc=SNMPgetLoop_2
MyOID_Call="sysName.0"
#      IP address of the device to be tested:
 CIPAdd=10.210.180.223       # ARTNVA-TDMGW-001_10.210.180.223
# CIPAdd=10.210.17.110        # ARTNVA-TDMGW-002_10.210.17.110
# CIPAdd=152.210.21.70        # ARTNVA-TDMGW-003_152.210.21.70
# CIPAdd=153.39.123.38        # Juniper-PTX10K_153.39.123.38
# CIPAdd=106.40.22.108        # Qwilt - Qw7250_106.40.22.108

#      Set your input file name here:
Input_File_1=$My_Known_Comm_Strgs



function MyIpVerification(){
echo '===============================================' | tee -a ${MYLOG}
echo 'You have entered an IP address parameter' | tee -a ${MYLOG}
echo 'The current CIPAdd = '$CIPAdd | tee -a ${MYLOG}
echo '===============================================' | tee -a ${MYLOG}
echo "" | tee -a ${MYLOG}
echo "" | tee -a ${MYLOG}
}

function CommunityBanner() {
echo '=================================================' | tee -a ${MYLOG}
echo '=== BEGINNING TEST OF KNOWN COMMUNITY STRINGS === ' | tee -a ${MYLOG}
echo "Community String = $Input_1" | tee -a ${MYLOG}
echo '=================================================' | tee -a ${MYLOG}
echo "" | tee -a ${MYLOG}
echo "" | tee -a ${MYLOG}
}

function OIDCallBanner() {
echo '=================================================' | tee -a ${MYLOG}
echo '=== BEGINNING TEST OF SYSNAME OID            === ' | tee -a ${MYLOG}
echo "Object ID = $MyOID_Call" | tee -a ${MYLOG}
echo '=================================================' | tee -a ${MYLOG}
echo "" | tee -a ${MYLOG}
echo "" | tee -a ${MYLOG}
}

i=1
for Input_1 in `awk -F: '{print $1}' $Input_File_1`
do

CommunityBanner
MyIpVerification
OIDCallBanner

# NEW_VAR_1="$CIPAdd $MyOID_Call"
# NEW_VAR_2="$Input_1 $NEW_VAR_2"
# echo $NEW_VAR_1
# echo $NEW_VAR_2

# echo "snmpget -v 2c -c" $Input_1 | tee -a ${MYtmpLOG}

New_String_1=("snmpget -v 2c -c " $Input_1)
echo $New_String_1 $CIPAdd 


# echo "snmpget -v 2c -c ${NEW_VAR_1}"  >> ${MYtmpLOG} 2>&1

# snmpget -v 2c -c ${Input_1} ${CIPAdd} ${MyOID_Call}  >> ${MYtmpLOG} 2>&1
cat ${MYtmpLOG}
done
rm ${MYtmpLOG}







exit

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@  SNMP Get LISTING  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#      Set your Function name here:
RunningFunc=SNMPgetLoop_2
MyOID_Call="sysName.0"
#      IP address of the device to be tested:
 CIPAdd=(10.210.180.223)       # ARTNVA-TDMGW-001_10.210.180.223
# CIPAdd=10.210.17.110        # ARTNVA-TDMGW-002_10.210.17.110
# CIPAdd=152.210.21.70        # ARTNVA-TDMGW-003_152.210.21.70
# CIPAdd=153.39.123.38        # Juniper-PTX10K_153.39.123.38
# CIPAdd=106.40.22.108        # Qwilt - Qw7250_106.40.22.108
 
#      Set your input file name here:
Input_File_1=$My_Known_Comm_Strgs

#      Header for the output this will include the function name from above:
Log_Out_Put

#      Function call:
SNMPgetLoop_2

# exiting out so it does not continue below!!!
exit


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@  DOMAIN LISTING  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#      Set your Function name here:
RunningFunc=MyLoop_1

#      Set your input file name here:
Input_File_1=$My_ARL_DOMS

#      Header for the output this will include the function name from above:
Log_Out_Put

#      Function call:
MyLoop_1











