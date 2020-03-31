-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `IdCars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` YEAR NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`IdCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `idInvoices` INT NOT NULL,
  `Invoice_number` INT NOT NULL,
  `Date` DATE NULL,
  `Car` VARCHAR(45) NULL,
  `Customer` VARCHAR(45) NULL,
  `Saleperson` VARCHAR(45) NULL,
  PRIMARY KEY (`idInvoices`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `idCustomers` INT NOT NULL,
  `CustomerID` INT NOT NULL,
  `Phone_Number` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Addres` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postal_code` INT NULL,
  `Invoices_idInvoices` INT NOT NULL,
  PRIMARY KEY (`idCustomers`),
  INDEX `fk_Customers_Invoices1_idx` (`Invoices_idInvoices` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Invoices1`
    FOREIGN KEY (`Invoices_idInvoices`)
    REFERENCES `mydb`.`Invoices` (`idInvoices`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `idStalespersons` INT NOT NULL,
  `IDStaff` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`idStalespersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers_has_Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers_has_Cars` (
  `Customers_idCustomers` INT NOT NULL,
  `Cars_IdCars` INT NOT NULL,
  PRIMARY KEY (`Customers_idCustomers`, `Cars_IdCars`),
  INDEX `fk_Customers_has_Cars_Customers_idx` (`Customers_idCustomers` ASC) VISIBLE,
  INDEX `fk_Customers_has_Cars_Cars1_idx` (`Cars_IdCars` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_has_Cars_Customers`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `mydb`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customers_has_Cars_Cars1`
    FOREIGN KEY (`Cars_IdCars`)
    REFERENCES `mydb`.`Cars` (`IdCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons_has_Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons_has_Customers` (
  `Salespersons_idStalespersons` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  PRIMARY KEY (`Salespersons_idStalespersons`, `Customers_idCustomers`),
  INDEX `fk_Salespersons_has_Customers_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  INDEX `fk_Salespersons_has_Customers_Salespersons1_idx` (`Salespersons_idStalespersons` ASC) VISIBLE,
  CONSTRAINT `fk_Salespersons_has_Customers_Salespersons1`
    FOREIGN KEY (`Salespersons_idStalespersons`)
    REFERENCES `mydb`.`Salespersons` (`idStalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salespersons_has_Customers_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `mydb`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (
  `idCars` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `Model` VARCHAR(45) NULL DEFAULT NULL,
  `Year` YEAR NULL DEFAULT NULL,
  `Color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (
  `idCustomers` INT NOT NULL,
  `CustomersID` INT NOT NULL,
  `Phone_Number` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Addres` VARCHAR(45) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `Province` VARCHAR(45) NULL DEFAULT NULL,
  `Country` VARCHAR(45) NULL DEFAULT NULL,
  `Postal_code` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `idInvoices` INT NOT NULL,
  `Invoice_number` INT NOT NULL,
  `Date` DATE NULL DEFAULT NULL,
  `Car` VARCHAR(45) NULL DEFAULT NULL,
  `Customer` VARCHAR(45) NULL DEFAULT NULL,
  `Salesperson` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idInvoices`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salespersons` (
  `idSalespersons` INT NOT NULL,
  `IDStaff` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idSalespersons`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;