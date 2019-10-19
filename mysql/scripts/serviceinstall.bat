@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Bitnami\dolibarr-10.0.2-0/mysql\bin\mysqld.exe" --install "dolibarrMySQL" --defaults-file="C:\Bitnami\dolibarr-10.0.2-0/mysql\my.ini"

net start "dolibarrMySQL" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "dolibarrMySQL" >NUL
"C:\Bitnami\dolibarr-10.0.2-0/mysql\bin\mysqld.exe" --remove "dolibarrMySQL"

:end
exit
