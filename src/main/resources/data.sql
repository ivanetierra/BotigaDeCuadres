-- MySQL Workbench Forward Engineering



-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema whitecollar
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema whitecollar
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `whitecollar`;
USE `whitecollar` ;

-- -----------------------------------------------------
-- Table `whitecollar`.`shop`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `whitecollar`.`shop` (
  `idShop` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `maxCapacity` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idShop`)
  );



-- -----------------------------------------------------
-- Table `whitecollar`.`collar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `whitecollar`.`collar` (
  `idCollar` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `author` VARCHAR(45) NULL DEFAULT NULL,
  `price` DECIMAL(10,0) NULL DEFAULT NULL,
  `entryDate` DATE NULL DEFAULT NULL,
  `Shop_idShop` INT(11) NOT NULL,
   PRIMARY KEY (`idCollar`),

  CONSTRAINT `fk_Collar_Shop`
    FOREIGN KEY (`Shop_idShop`)
    REFERENCES `whitecollar`.`shop` (`idShop`)
    );


