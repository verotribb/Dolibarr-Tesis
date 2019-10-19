@echo off
"C:\Bitnami\dolibarr-10.0.2-0/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\dolibarr-10.0.2-0/mysql\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"C:\Bitnami\dolibarr-10.0.2-0/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\dolibarr-10.0.2-0/mysql\my.ini" -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '%1';"
