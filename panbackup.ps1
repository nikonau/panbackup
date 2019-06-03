# Title:  CIT - Palo Alto Networks - xml api backup
# Author:  nikonau
# Date:    17/9/15
# Updated: 06/05/19
# Desc:    This script pulls the running-config in xml format off the PAN using the xml api key for the local user 'netmgmt'
# Desc:    Date is also appended to the filename - the xml format is standard Palo Alto configuration.
# Desc:    As of 06/05/19 this script backs up all SMT PA firewall config every day at 11:00pm.

#Set powershell to use TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

#Backup Hostname1 firewall
$source1 = "https://hostname1/api/?type=export&category=configuration&key=<yourapikey>"
$date1 = get-date -format yyyyMMdd ; $host1 = "C:\panbackup\hostname1-running-config-"+$date1+".xml"

#Backup Hostname2 Firewall
$source2 = "https://hostname2/api/?type=export&category=configuration&key=<yourapikey>"
$date2 = get-date -format yyyyMMdd ; $host2 = "C:\panbackup\hostname2-running-config-"+$date2+".xml"

#Backup Hostname3 Firewall
$source3 = "https://hostname3/api/?type=export&category=configuration&key=<yourapikey>"
$date3 = get-date -format yyyyMMdd ; $host3 = "C:\panbackup\hostname3-running-config-"+$date3+".xml"

#Backup Hostname4 Firewall
$source4 = "https://hostname4/api/?type=export&category=configuration&key=<yourapikey>"
$date4 = get-date -format yyyyMMdd ; $host4 = "C:\panbackup\hostname4-running-config-"+$date4+".xml"

#Invoke-WebRequest $source -OutFile $destination hostname1
Invoke-RestMethod -Uri $source1 -OutFile $host1

#Invoke-WebRequest $source -OutFile $destination hostname2
Invoke-RestMethod -Uri $source2 -OutFile $host2

#Invoke-WebRequest $source -OutFile $destination hostname3
Invoke-RestMethod -Uri $source3 -OutFile $host3

#Invoke-WebRequest $source -OutFile $destination hostname4
Invoke-RestMethod -Uri $source4 -OutFile $host4
