#!/bin/sh
#  2020-02-13 Centralized Logs.
#  -  Created by Thaddeus Spero.
# This is just a place where to consolidate where the logs
#     are located and make it easier to look for errors accross domains.
#
# No magic here the logs are still where they belong.
# All I have done is create a Symbolic Link to each of the logs in this
#     home directory while the actual log will remain in its
#     appropriate Domain Dicrectory.


# Defining Logg file:
#===========================================================================================================
MYDIR=/home/smarts/
MYLOG="""$MYDIR"""Centralized_Logs/Script-output.log
date | tee -a $MYLOG
echo "Bash version ${BASH_VERSION}..." | tee -a $MYLOG
date | tee -a $MYLOG
echo "MYDIR = " $MYDIR | tee -a $MYLOG
echo "MYLOG = " $MYLOG | tee -a $MYLOG
date | tee -a $MYLOG
alias lsa='ls -lsah'

#  ARLMNRVZT code:
#  ===============================================================================================================================

date | tee -a $MYLOG
date | tee -a $MYLOG
date | tee -a $MYLOG


#  BELOW IS THE FUNCTION SECTION:
#  =========================================================================================================
function MySymLinker() {
echo $DomainName
ln -s /data/InCharge95/"""$DomainName"""/local/logs/"""$DomainName"""_en_US_UTF-8.log """$DomainName"""_en_US_UTF-8.log
lsa /data/InCharge95/"""$DomainName"""/local/logs/"""$DomainName"""_en_US_UTF-8.log
}

#  ARLMNRVZB code:
#  ===============================================================================================================================
DomainName=AMPM-VZB-VAL-CANE-1
MySymLinker
DomainName=AMPM-VZB-VAL-CANW-1
MySymLinker
DomainName=AMPM-VZB-VAL-USC-1
MySymLinker
DomainName=AMPM-VZB-VAL-USMA-1
MySymLinker
DomainName=AMPM-VZB-VAL-USMA-2
MySymLinker
DomainName=AMPM-VZB-VAL-USMP-1
MySymLinker
DomainName=AMPM-VZB-VAL-USNC-1
MySymLinker
DomainName=AMPM-VZB-VAL-USNE-1
MySymLinker
DomainName=AMPM-VZB-VAL-USNE-2
MySymLinker
DomainName=AMPM-VZB-VAL-USNW-1
MySymLinker
DomainName=AMPM-VZB-VAL-USSC-1
MySymLinker
DomainName=AMPM-VZB-VAL-USSE-1
MySymLinker
DomainName=AMPM-VZB-VAL-USSW-1
MySymLinker
DomainName=AMPM-VZB-VAL-VOL-1
MySymLinker
DomainName=AMPM-VZB-VAL-VRR-1
MySymLinker

exit

