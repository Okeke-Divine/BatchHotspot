@echo off
cls
title BatchHotspot - ODVE
color b
echo ****************************************************
echo *************** BatchHotspot - ODVE ****************
echo ****************************************************

echo Welcome to BatchHotspot by ODVE!
echo ------------------

REM input network name
:enter_network_name
set /p network_name= Network name:

REM network name validation
if "%network_name%"=="" (
	echo Please enter a network name
	goto enter_network_name
)

echo Network name set to %network_name%
echo ------------------

REM input network password
:enter_network_password 
set /p network_password= Network Password:

REM password validation
if "%network_password%"=="" (
	echo Please enter a password {8 characters}	
	goto enter_network_password
)

echo Network password set to %network_password%
echo ------------------


echo "Network staring in 5 seconds"
timeout 5

netsh wlan set hos ssid= %network_name%
netsh wlan set hos key= %network_password%
netsh wlan set hos mode=allow
netsh wlan start hos

echo ------------------
echo Your network has started successfully, enjoy!
echo ------------------

echo ****************************************************
echo *************** BatchHotspot - ODVE ****************
echo ****************************************************