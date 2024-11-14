-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema prova2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema prova2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prova2` DEFAULT CHARACTER SET utf8mb4 ;
USE `prova2` ;

-- -----------------------------------------------------
-- Table `prova2`.`aeronaves`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prova2`.`aeronaves` (
  `modelo` VARCHAR(300) NOT NULL,
  `capacidade` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`modelo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '-- Inserir uma aeronave\\nINSERT INTO Aeronaves (modelo, capacidade) VALUES (\'Boeing 737\', 180);\\n';


-- -----------------------------------------------------
-- Table `prova2`.`assentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prova2`.`assentos` (
  `numerodoassento` INT(11) NOT NULL,
  `tipodeassento` VARCHAR(45) NOT NULL,
  `POSIÇAO` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`numerodoassento`, `tipodeassento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `prova2`.`passageiros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prova2`.`passageiros` (
`id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(300) NOT NULL,
  `cpf` VARCHAR(45) NULL DEFAULT NULL,
  `endereço` VARCHAR(45) NULL DEFAULT NULL,
  `idade` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '-- Inserir um passageiro\\nINSERT INTO Passageiros (nome, documento_identidade) VALUES (\'Matheus T. Ottus\', \'123456789\');';


-- -----------------------------------------------------
-- Table `prova2`.`reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prova2`.`reservas` (
  `nomedopassageiro` VARCHAR(300) NOT NULL,
  `reservadopassageiro` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`nomedopassageiro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `prova2`.`voos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prova2`.`voos` (
  `numerodovoo` INT(11) NOT NULL,
  `paraondevaiovoo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`numerodovoo`, `paraondevaiovoo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
insert into assentos (numerodoassento, tipodeassento,POSIÇAO) values (4,'reclinavel','B3')
INSERT INTO Passageiros (nome, cpf, endereço, idade ) VALUES ('Matheus T. Ottus', '123456789', 'rua senai',22);
INSERT INTO Aeronaves (modelo, capacidade) VALUES ('Boeing 737', 180);
INSERT INTO voos (numerodovoo, paraondevaiovoo) values ('180', 'buenos aires')
INSERT INTO Reservas (nomedopassageiro, reservadopassageiro) values ('Matheus T. Ottus', 'reserva45')
