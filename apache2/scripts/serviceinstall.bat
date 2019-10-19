@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:/Bitnami/dolibarr-10.0.2-0/apache2\bin\httpd.exe" -k install -n "dolibarrApache" -f "C:/Bitnami/dolibarr-10.0.2-0/apache2\conf\httpd.conf"

net start dolibarrApache >NUL
goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop dolibarrApache >NUL
"C:/Bitnami/dolibarr-10.0.2-0/apache2\bin\httpd.exe" -k uninstall -n "dolibarrApache"

:end
exit
