#!/bin/bash

sn1=NBCE-
sn3=-M
sn2=$(system_profiler SPHardwareDataType |grep "Serial" |awk '{print substr ($0,36,7)}' |rev)

sn=$sn1$sn2$sn3$1
echo $sn

scutil --set ComputerName $sn
scutil --set LocalHostName $sn

sudo jamf recon
