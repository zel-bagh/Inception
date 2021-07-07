service mysql start
mysql -u root -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD'"
mysql -u root -e "CREATE DATABASE $DB_NAME; use $DB_NAME"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%';"
mysql -u root $DB_NAME < /wpdb.sql
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASS';FLUSH PRIVILEGES;"
mkdir mysql_files
mv /var/lib/mysql/* /mysql_files

