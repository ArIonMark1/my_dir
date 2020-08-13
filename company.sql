DROP DATABASE IF EXISTS `company`;

CREATE DATABASE IF NOT EXISTS `company`;
USE `company`;

CREATE TABLE IF NOT EXISTS `worker`
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50)  NOT NULL,
    age TINYINT(80) UNSIGNED COMMENT 'нет таких работников кому больше 80, официально',
    experience VARCHAR(50),
    phone BIGINT(14) UNSIGNED,
    adress VARCHAR(50)
) COMMENT='анкета работника';

