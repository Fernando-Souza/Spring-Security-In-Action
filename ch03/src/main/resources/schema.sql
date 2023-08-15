CREATE SCHEMA IF NOT EXISTS Spring;
CREATE TABLE IF NOT EXISTS `Spring`.`Users` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `username` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `enabled` INT NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS  `Spring`.`Authorities` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `username` VARCHAR(45) NOT NULL,
    `authority` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
    
);