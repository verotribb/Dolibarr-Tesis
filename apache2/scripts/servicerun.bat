@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start dolibarrApache
goto end

:stop

"C:/Bitnami/dolibarr-10.0.2-0/apache2\bin\httpd.exe" -n "dolibarrApache" -k stop

:end
exit
