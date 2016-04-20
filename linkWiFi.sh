#!/bin/bash
name=`iw dev |grep Interface|sed s/Interface//g |sed s/\ //g`
tmpFile=".ipLink.~.bak"
echo $name
ip link set $name up

iw $name link

iw $name scan |grep SSID > $tmpFile

cat $tmpFile -n

read -p "Please Choose Wifi Line  " wifiLine
echo $wifiLine
wifiName=`cat $tmpFile -n |grep "$wifiLine" |sed s/[[:space:]]//g|grep "${wifiLine}SSID"|sed s/"${wifiLine}SSID:"//g | head -1`
echo $wifiName
read -p "Please Enter WifiPwd   " wifiPwd
echo $wifiPwd
`wpa_supplicant -B -i $name -c<(wpa_passphrase $wifiName ""$wifiPwd)`

dhclient $name

ip addr show $name

rm -f $tmpFile 
