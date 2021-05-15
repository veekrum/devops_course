#!/bib/bash

## Install nginx
sudo apt update
sudo apt install nginx -y # On Ubuntu 18.04, Nginx is configured to start running upon installation.

# Install mysql
sudo apt install mysql-server -y 
sudo mysql
# ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
# FLUSH PRIVILEGES;
sudo mysql -p 

# Installing PHP and Configuring Nginx to Use the PHP Processor
sudo apt install php-fpm php-mysql

## configure the nginx
sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/
sudo unlink /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl reload nginx

## Creating php file
sudo cat <<< '<?php phpinfo();' >> /var/www/html/info.php
