-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema empleados
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema empleados
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `empleados` DEFAULT CHARACTER SET utf8 ;
USE `empleados` ;

-- -----------------------------------------------------
-- Table `empleados`.`puestos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleados`.`puestos` (
  `idpuestos` INT NOT NULL AUTO_INCREMENT,
  `puesto` VARCHAR(45) NULL,
  PRIMARY KEY (`idpuestos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleados`.`departamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleados`.`departamentos` (
  `iddepartamentos` INT NOT NULL AUTO_INCREMENT,
  `departamento` VARCHAR(45) NULL,
  PRIMARY KEY (`iddepartamentos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleados`.`lideres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleados`.`lideres` (
  `idlideres` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idlideres`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleados`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleados`.`empleados` (
  `idempleados` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `sueldo` FLOAT NULL,
  `fecha_ingreso` DATE NULL,
  `puestos_idpuestos` INT NOT NULL,
  `departamentos_iddepartamentos` INT NOT NULL,
  `lideres_idlideres` INT NOT NULL,
  PRIMARY KEY (`idempleados`, `puestos_idpuestos`, `departamentos_iddepartamentos`, `lideres_idlideres`),
  INDEX `fk_empleados_puestos_idx` (`puestos_idpuestos` ASC) VISIBLE,
  INDEX `fk_empleados_departamentos1_idx` (`departamentos_iddepartamentos` ASC) VISIBLE,
  INDEX `fk_empleados_lideres1_idx` (`lideres_idlideres` ASC) VISIBLE,
  CONSTRAINT `fk_empleados_puestos`
    FOREIGN KEY (`puestos_idpuestos`)
    REFERENCES `empleados`.`puestos` (`idpuestos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleados_departamentos1`
    FOREIGN KEY (`departamentos_iddepartamentos`)
    REFERENCES `empleados`.`departamentos` (`iddepartamentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleados_lideres1`
    FOREIGN KEY (`lideres_idlideres`)
    REFERENCES `empleados`.`lideres` (`idlideres`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
