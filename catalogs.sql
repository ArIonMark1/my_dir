DROP DATABASE IF EXISTS `catalogs`;

CREATE DATABASE IF NOT EXISTS `catalogs`;
USE `catalogs`;

DROP TABLE IF EXISTS `CATALOGS`;

CREATE TABLE IF NOT EXISTS `CATALOGS`
(
    ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(100)
);

INSERT INTO `CATALOGS`(NAME) VALUES
('processors'),
('motherboards'),
('videocards'),
('hard disks'),
('RAM');


DROP TABLE IF EXISTS `products`;
CREATE TABLE IF EXISTS `products`
(
    id SERIAL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    description TEXT,
    price DECIMAL (11,2),
    catalog_id INT UNSIGNED,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    KEY index_of_catalog_id(catalog_id)
);


DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users`
(
    ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(30),
    birthday_at DATE
);

INSERT INTO `users`(NAME, birthday_at) VALUES
('Genadiy', '1990-10-05'),
('Natalia', '1984-11-12'),
('Alexander', '1985-05-20'),
('Sergey', '1988-02-14'),
('Ivan', '1998-01-12'),
('Maria', '1992-08-29');

SHOW TABLES;
SELECT * FROM `CATALOGS`;
SELECT * FROM `users`;
