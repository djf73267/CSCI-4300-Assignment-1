
DROP DATABASE IF EXISTS `usr`;
CREATE DATABASE `usr` DEFAULT CHARACTER SET utf8mb4;
USE usr;


DROP TABLE IF EXISTS acc;
CREATE TABLE acc(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(16) NOT NULL UNIQUE,
    pass VARCHAR(16) NOT NULL
) ENGINE=InnoDB;

INSERT INTO acc(username, pass) VALUES('Kylie','706818');
SELECT * FROM acc;


DROP TABLE IF EXISTS prof;
CREATE TABLE prof(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	frst VARCHAR(16) NOT NULL,
    lst VARCHAR(16) NOT NULL,
    email VARCHAR(32) NOT NULL,
    dob VARCHAR(8) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE ppp(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

show databases;