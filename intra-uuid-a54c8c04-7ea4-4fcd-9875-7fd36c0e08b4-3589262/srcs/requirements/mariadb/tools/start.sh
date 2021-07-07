[ "$(ls -A /var/lib/mysql/)" ] && echo "Not Empty" || mv mysql_files/* /var/lib/mysql
mysqld_safe
