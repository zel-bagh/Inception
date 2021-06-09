service mysql start
mysql -u root -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD'"
mysql -u root -e "CREATE DATABASE $DB_NAME; use $DB_NAME"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%'; FLUSH PRIVILEGES;"
#mysql -u root $DB_NAME < /wpdb.sql
