-- Create databases
CREATE DATABASE IF NOT EXISTS main DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS account DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS orders DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

-- Create users for local connections
CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY 'password';

-- Grant privileges
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

-- For compatibility with Docker networking if needed
CREATE USER IF NOT EXISTS 'admin'@'%' IDENTIFIED BY 'password';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;