
$SOURCE_DIR=split-path -parent $MyInvocation.MyCommand.Definition
$ZABBIX_DIR="C:\Program Files (x86)\Zabbix Agent"

New-Item -Path $ZABBIX_DIR				 -Name zabbix_agentd.d   -ItemType directory	-ErrorAction Ignore
New-Item -Path $ZABBIX_DIR\scripts\agentd		 -Name msqlix		 -ItemType directory	-ErrorAction Ignore
Copy-Item -Path $SOURCE_DIR\msqlix\scripts 	 	 -Recurse -Destination $ZABBIX_DIR\scripts\agentd\msqlix\ -Container -ErrorAction Ignore
Copy-Item -Path $SOURCE_DIR\msqlix\sql			 -Recurse -Destination $ZABBIX_DIR\scripts\agentd\msqlix\ -Container -ErrorAction Ignore
Copy-Item -Path $SOURCE_DIR\msqlix\msqlix.ps1		 -Recurse -Destination $ZABBIX_DIR\scripts\agentd\msqlix\msqlix.ps1 -Container -ErrorAction Ignore
Copy-Item -Path $SOURCE_DIR\msqlix\zabbix_agentd.conf	 -Recurse -Destination $ZABBIX_DIR\zabbix_agentd.d\msqlix.conf -Container -ErrorAction Ignore
