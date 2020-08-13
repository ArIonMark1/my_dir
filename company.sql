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
    phone BIGINT(14) UNSIGNED UNIQUE,
    adress VARCHAR(100)
) COMMENT='анкета работника';

INSERT INTO `worker` (last_name, first_name, age, experience, phone, adress) VALUES
('Trantow', 'Adelbert', 35, '11', '396119976907', '8497 Desiree Fort Apt. 171; Carrollberg, IA 26045-0'),
('Hintz', 'Rogelio', 52, '7', '392572845410', '7174 Elise Street Apt. 223; Lake Dustyshire, TX 829'),
('Miller', 'Juliet', 28, '10', '396716795943', '933 Wehner Village Suite 291; Antoniashire, KS 8452'),
('Kohler', 'Maiya', 63, '12', '397925874438', '564 Aaron Brook; Lysannestad, NC 64512-2190'),
('Lindgren', 'Berneice', 40, '11', '396302401391', '91480 Tremblay Well Suite 547; South Chadrickhaven,'),
('Trantow', 'Roselyn', 29, '4', '393041074738', '883 Jennyfer Flats; Krisfurt, RI 02580'),
('Muller', 'Janet', 21, '4', '396367531469', '391 Kertzmann Landing; Kiehnburgh, MA 30431'),
('Daugherty', 'Juvenal', 23, '2', '395774087670', '1540 Tyra Valleys Apt. 359; South Coramouth, LA 607'),
('Monahan', 'Rhea', 30, '6', '397216804112', '83905 Eula Cliff; North Stefanie, FL 95654-4627'),
('Ortiz', 'Jazmyn', 50, '1', '392545704310', '596 Jones Creek Apt. 286; Lake Cheyenneside, OH 185');

SELECT * FROM `worker`