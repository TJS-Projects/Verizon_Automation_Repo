#!/bin/bash
#
CURDATE=$(date +%Y%m%d%H%M%S)
SCRIPT_PATH=~/SCRIPTS/TjsMYSCRIPTS
TEMP_PATH=/tmp
MyLogFileName=SNMPgetScript-"""$CURDATE""".log
TemporaryLog=TempScript-"""$CURDATE""".log
MYLOG=$SCRIPT_PATH/LOGS/$MyLogFileName
MYtmpLOG=$TEMP_PATH/"""$TemporaryLog"""
My_Known_Comm_Strgs=$SCRIPT_PATH/INPUTS/TestCommStrgs
Input_File_1=$My_Known_Comm_Strgs
RunningFunc=SNMPgetLoop_2
MyOID_Call="sysName.0"
#      IP address of the device to be tested:
 CIPAdd=10.210.180.223       # ARTNVA-TDMGW-001_10.210.180.223
function MyIpVerification(){
echo '===============================================' | tee -a "${MYLOG}"
echo 'You have entered an IP address parameter' | tee -a "${MYLOG}"
echo 'The current CIPAdd = '$CIPAdd | tee -a "${MYLOG}"
echo '===============================================' | tee -a "${MYLOG}"
echo "" | tee -a "${MYLOG}"
echo "" | tee -a "${MYLOG}"
}

function CommunityBanner() {
echo '=================================================' | tee -a "${MYLOG}"
echo '=== BEGINNING TEST OF KNOWN COMMUNITY STRINGS === ' | tee -a "${MYLOG}"
echo "Community String = $Input_1" | tee -a "${MYLOG}"
echo '=================================================' | tee -a "${MYLOG}"
echo "" | tee -a "${MYLOG}"
echo "" | tee -a "${MYLOG}"
}

function OIDCallBanner() {
echo '=================================================' | tee -a "${MYLOG}"
echo '=== BEGINNING TEST OF SYSNAME OID            === ' | tee -a "${MYLOG}"
echo "Object ID = $MyOID_Call" | tee -a "${MYLOG}"
echo '=================================================' | tee -a "${MYLOG}"
echo "" | tee -a "${MYLOG}"
echo "" | tee -a "${MYLOG}"
}


function MyNote_1() {
This set -xv command will give you more insight into the error.
  set -xv
 NOTE: Turned out to be a DOS input file was the problem.
  Did a DOS2UNIX on the file and everything is fine now.
This is what I was seeing in the output:
+ tee -a /home/tjs4abs/SCRIPTS/TjsMYSCRIPTS/LOGS/SNMPgetScript-20200321125841.log
+ echo '1--snmpget -v 2c -c' $'3clip535t4t5\r'
1--snmpget -v 2c -c 3clip535t4t5
+ tee -a /home/tjs4abs/SCRIPTS/TjsMYSCRIPTS/LOGS/SNMPgetScript-20200321125841.log
+ echo '2--snmpget -v 2c -c' $'3clip535t4t5\r' 10.210.180.223
 10.210.180.223c -c 3clip535t4t5
+ tee -a /home/tjs4abs/SCRIPTS/TjsMYSCRIPTS/LOGS/SNMPgetScript-20200321125841.log
+ echo '3--snmpget -v 2c -c' $'3clip535t4t5\r' 10.210.180.223 sysName.0
 10.210.180.223 sysName.0535t4t5
+ snmpget -v 2c -c $'3clip535t4t5\r' 10.210.180.223 sysName.0
+ cat /tmp/TempScript-20200321125841.log
Add this to my Linux Links -- https://www.shellcheck.net/
###################################################################################
}

for Input_1 in $(awk -F: '{print $1}' "$Input_File_1")
do

CommunityBanner
MyIpVerification
OIDCallBanner



echo "1--snmpget -v 2c -c" "$Input_1" | tee -a "${MYLOG}"
echo "2--snmpget -v 2c -c" "${Input_1}" "${CIPAdd}" | tee -a "${MYLOG}"
echo "3--snmpget -v 2c -c" "$Input_1" ${CIPAdd} ${MyOID_Call} | tee -a "${MYLOG}"


# echo "snmpget -v 2c -c ${NEW_VAR_1}"  >> ${MYtmpLOG} 2>&1

snmpget -v 2c -c "${Input_1}" ${CIPAdd} ${MyOID_Call}  >> "${MYtmpLOG}" 2>&1
cat "${MYtmpLOG}"
done
rm "${MYtmpLOG}"




exit

