Drop DATABASE IF EXISTS COMP3095;
CREATE DATABASE IF NOT EXISTS COMP3095;
USE COMP3095;

DROP USER IF EXISTS  'admin@domain.ca'@localhost;
FLUSH PRIVILEGES ;

CREATE USER 'admin@domain.ca'@'localhost' IDENTIFIED BY 'P@ssword1';
GRANT ALL PRIVILEGES ON comp3095.* TO 'admin@domain.ca'@'localhost';

CREATE TABLE USERS 
( 
	id int(11) AUTO_INCREMENT PRIMARY KEY, 
	firstname varchar(255),
	lastname varchar(255),
	email varchar(255), 
	role varchar(20),
	address varchar(255),
	created timestamp default current_timestamp,
	password varchar(255)	
);

INSERT INTO USERS (firstname, lastname, email, role, address, password )  VALUES ('admin', null, 'admin@isp.net', 'admin', null, 'ce293c8731b8a2e684c891e4eabd3bc5cd75c35c');