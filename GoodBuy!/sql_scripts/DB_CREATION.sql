DROP DATABASE IF EXISTS goodBuy_db;
CREATE DATABASE goodBuy_db;
USE goodBuy_db;

CREATE TABLE `goodbuy_db`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `imageURL` VARCHAR(150) NOT NULL,
  `description` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(90) NOT NULL,
  `pass` varchar (200) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `imgPerfil` varchar(90),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `goodbuy_db`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `updated_at` DATETIME,
  `created_at` DATETIME,
  PRIMARY KEY (`id`));


INSERT INTO products values (DEFAULT, now(), now(), 'Iphone 11 Pro Max', 1199.99, './images/apple-iphone-11promax.jpg', "Iphone 11 Pro Max");