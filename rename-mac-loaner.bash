#!/bin/bash
sn1=NUUCIT-LOAN
sn3=-M
sn=$sn1$1$sn3$2
echo $sn

scutil --set ComputerName $sn
scutil --set LocalHostName $sn

sudo jamf recon
