-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sandbox
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sandbox
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sandbox` DEFAULT CHARACTER SET utf8 ;
USE `sandbox` ;

-- -----------------------------------------------------
-- Table `sandbox`.`type_tinyint`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sandbox`.`type_tinyint` ;

CREATE TABLE IF NOT EXISTS `sandbox`.`type_tinyint` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `col_tinyint` TINYINT NULL,
  `col_tinyint_width1` TINYINT(1) NULL,
  `col_tinyint_unsigned` TINYINT UNSIGNED NULL,
  `col_tinyint_zerofill` TINYINT ZEROFILL NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sandbox`.`type_int`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sandbox`.`type_int` ;

CREATE TABLE IF NOT EXISTS `sandbox`.`type_int` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `col_int` INT NULL,
  `col_int_width1` INT(1) NULL,
  `col_int_unsigned` INT UNSIGNED NULL,
  `col_int_zerofill` INT ZEROFILL NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sandbox`.`type_decimal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sandbox`.`type_decimal` ;

CREATE TABLE IF NOT EXISTS `sandbox`.`type_decimal` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `col_decimal` DECIMAL NULL,
  `col_decimal_ precision1` DECIMAL(1) NULL,
  `col_decimal_ precision1_ scale0` DECIMAL(1,0) NULL,
  `col_decimal_ precision1_ scale1` DECIMAL(1,1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sandbox`.`type_bit`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sandbox`.`type_bit` ;

CREATE TABLE IF NOT EXISTS `sandbox`.`type_bit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `col_bit` BIT NULL,
  `col_bit_range1` BIT(1) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sandbox`.`type_double`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sandbox`.`type_double` ;

CREATE TABLE IF NOT EXISTS `sandbox`.`type_double` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `col_double` DOUBLE NULL,
  `col_double_total1_decimal0` DOUBLE(1,0) NULL,
  `col_double_total1_decimal1` DOUBLE(1,1) NULL,
  `col_double_total2_decimal1` DOUBLE(2,1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sandbox`.`type_int_zerofill`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sandbox`.`type_int_zerofill` ;

CREATE TABLE IF NOT EXISTS `sandbox`.`type_int_zerofill` (
  `id` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `foo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
