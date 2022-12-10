-- Example database setup for docker
-- DROP DATABASE IF EXISTS `mydatabase`;
-- CREATE DATABASE IF NOT EXISTS `mydatabase`;
-- GRANT ALL PRIVILEGES ON mydatabase.* TO 'username'@'%';
-- SET GLOBAL max_allowed_packet=1073741824;
-- USE `mydatabase`;

-- Allow username access to mysql
GRANT ALL ON *.* TO 'username'@'%';