apt -y install nginx
mv default /etc/nginx/sites-available/
sed -i 's@PATH@'"$CERTS"'@g' /etc/nginx/sites-available/default
nginx -g 'daemon off;'