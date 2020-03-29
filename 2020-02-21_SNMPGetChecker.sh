#!/bin/bash
#   2020-02-21 SNMPGetChecker
#   -   will check an ip to see if any response is recieved
#         from any of the currently known community strings.
#   -  Created by Thaddeus Spero.
#  You will need to enter a CIPAdd parameter unless you have already set this prior.
#   This script will check for this variable and display it first then continue down
#   through the list of known community strings.
#  NOTE: for now I will just be setting the CIPAdd variable inside the script!!

# Define Variables and Logging:
#===========================================================================================================

MYDIR=/home/smarts/
MYLOG="""$MYDIR"""Centralized_Logs/SNMPGetChecker-output.log
TMPTESTLOG=/tmp/MyTmpTest.log

date | tee $MYLOG
echo "Bash version ${BASH_VERSION}..." | tee -a $MYLOG

date | tee -a $MYLOG
echo "MYDIR = " $MYDIR | tee -a $MYLOG
echo "MYLOG = " $MYLOG | tee -a $MYLOG

date | tee -a $MYLOG; echo "" | tee -a $MYLOG; echo "" | tee -a $MYLOG; echo "" | tee -a $MYLOG
alias lsa='ls -lsah'

## CIPAdd=207.22.134.190
## echo 'The current CIPAdd = '$CIPAdd | tee -a $MYLOG

#   Flags code to grab the IP address:
#  You can use the -u option to enter an IP address.
#    example:
#      ./2020-02-21_SNMPGetChecker.sh -u "207.22.129.126"
#
#  OR comment out the getopts code and uncomment the 2 lines below
#    with a IP address of your choice.
#
## CIPAdd=207.22.134.190
## echo 'The current CIPAdd = '$CIPAdd | tee -a $MYLOG
#
#  =======================================================================================================
while getopts u:d:p:f: option
do
case "${option}"
in
u) USER=${OPTARG};;
d) DATE=${OPTARG};;
p) PRODUCT=${OPTARG};;
f) FORMAT=${OPTARG};;
esac
done

# converting the USER input to my variable CIPAdd:
#=======================================================
CIPAdd=$USER
CSNMPkey=1vBfKVyOPGlpcuhcX8je2T

function MySNMPgetchkr() {
snmpget -v 2c -c """$CSNMPkey""" """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG
date >> $MYLOG
echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c """$CSNMPkey""" " | tee -a $MYLOG
}
echo '==============================================='
echo 'You have entered an IP address parameter'
echo 'The current CIPAdd = '$CIPAdd | tee -a $MYLOG
echo '==============================================='; echo "" | tee -a $MYLOG; echo "" | tee -a $MYLOG

echo '================================================='
echo '=== BEGINNING TEST OF KNOWN COMMUNITY STRINGS === '
echo '================================================='; echo "" | tee -a $MYLOG; echo "" | tee -a $MYLOG






exit

date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 1vBfKVyOPGlpcuhcX8je2T " | tee -a $MYLOG
snmpget -v 2c -c 1vBfKVyOPGlpcuhcX8je2T """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 22ZXX3JA2jKtyVV6yWSLmh" | tee -a $MYLOG
snmpget -v 2c -c 22ZXX3JA2jKtyVV6yWSLmh """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 25zw9XGpnjfKKhWmVPOoM2 " | tee -a $MYLOG
snmpget -v 2c -c 25zw9XGpnjfKKhWmVPOoM2 """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 2ASL9zKhkSgJJwie53VEhk " | tee -a $MYLOG
snmpget -v 2c -c 2ASL9zKhkSgJJwie53VEhk """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 39eO8rlYqKIiZwvKxYPoOd " | tee -a $MYLOG
snmpget -v 2c -c 39eO8rlYqKIiZwvKxYPoOd """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 3clip535t4t5 " | tee -a $MYLOG
snmpget -v 2c -c 3clip535t4t5 """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 4JQC7Dse7BJ20tBOBl276T " | tee -a $MYLOG
snmpget -v 2c -c 4JQC7Dse7BJ20tBOBl276T """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 5GiLmDNKrWWhh2t2wpWx3l " | tee -a $MYLOG
snmpget -v 2c -c 5GiLmDNKrWWhh2t2wpWx3l """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 5cs666uxfRlGRvxg8Lbr3A " | tee -a $MYLOG
snmpget -v 2c -c 5cs666uxfRlGRvxg8Lbr3A """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 69CeUFZvbOvfjJ4DneodMl " | tee -a $MYLOG
snmpget -v 2c -c 69CeUFZvbOvfjJ4DneodMl """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 6fEh9RTjHtaJClSR0usuCT " | tee -a $MYLOG
snmpget -v 2c -c 6fEh9RTjHtaJClSR0usuCT """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 6pgBhsbvsYDBIiOgrGcJk5 " | tee -a $MYLOG
snmpget -v 2c -c 6pgBhsbvsYDBIiOgrGcJk5 """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 9M1ZYsbL " | tee -a $MYLOG
snmpget -v 2c -c 9M1ZYsbL """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c 9kv3CX74 " | tee -a $MYLOG
snmpget -v 2c -c 9kv3CX74 """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c Gr1usSr0 " | tee -a $MYLOG
snmpget -v 2c -c Gr1usSr0 """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c Gr1usSr0@advantage " | tee -a $MYLOG
snmpget -v 2c -c Gr1usSr0@advantage """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c Gr1usSr0@business " | tee -a $MYLOG
snmpget -v 2c -c Gr1usSr0@business """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c R9pv32vk " | tee -a $MYLOG
snmpget -v 2c -c R9pv32vk """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c cam1t! " | tee -a $MYLOG
snmpget -v 2c -c cam1t! """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c jYr2tXf1 " | tee -a $MYLOG
snmpget -v 2c -c jYr2tXf1 """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c vzhealth " | tee -a $MYLOG
snmpget -v 2c -c vzhealth """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c walrus " | tee -a $MYLOG
snmpget -v 2c -c walrus """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c walrus@VOL " | tee -a $MYLOG
snmpget -v 2c -c walrus@VOL """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c walrus@analyzer " | tee -a $MYLOG
snmpget -v 2c -c walrus@analyzer """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c walrus@atm-cross-connect " | tee -a $MYLOG
snmpget -v 2c -c walrus@atm-cross-connect """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c walrus@default " | tee -a $MYLOG
snmpget -v 2c -c walrus@default """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG;date >> $MYLOG;echo '=================================================' | tee -a $MYLOG;echo "TESTING snmpget -v 2c -c walrus@test " | tee -a $MYLOG
snmpget -v 2c -c walrus@test-dhcp """$CIPAdd""" sysName.0 >> $MYLOG 2>&1
echo "" | tee -a $MYLOG; echo "" | tee -a $MYLOG

echo '=============================================='
echo '===   BEGINNING CAT OUTPUT OF TESTING     === '
echo '=============================================='; echo "" | tee -a $MYLOG; echo "" | tee -a $MYLOG
cat $MYLOG

exit

