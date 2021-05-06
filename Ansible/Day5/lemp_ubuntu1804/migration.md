## Create new user and grant all previleges
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost' IDENTIFIED BY 'password';

## Create a ecommerce database
CREATE DATABASE ecommerce;
use ecommerce;

## Create products table in ecommerce database
CREATE TABLE products (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
price VARCHAR(50) NOT NULL
)

## Seed the products table
INSERT INTO products (name, price) VALUES ("Washing Machine", "94000");
INSERT INTO products (name, price) VALUES ("Iron", "10000");
INSERT INTO products (name, price) VALUES ("Vacuum Cleaner", "15000");
INSERT INTO products (name, price) VALUES ("LED TV LG 34''", "78000");
INSERT INTO products (name, price) VALUES ("LED TV Samsung 34''", "65000");


nginx -> php -> mysql
