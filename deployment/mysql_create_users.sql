use mysql;
FLUSH PRIVILEGES;
-- UPDATE mysql.user set authentication_string = PASSWORD('root') where user = 'root' and host = 'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;