-- MySQL Workbench Synchronization
-- Generated: 2022-12-15 10:41
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: IA

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `industria`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

ALTER TABLE `industria`.`Proyecto` 
DROP FOREIGN KEY `fk_Proyecto_Materiales1`;

ALTER TABLE `industria`.`Cliente` 
DROP FOREIGN KEY `fk_Cliente_Materiales1`;

ALTER TABLE `industria`.`Factura` 
DROP FOREIGN KEY `fk_Factura_Cliente`;

ALTER TABLE `industria`.`Provedores` 
DROP FOREIGN KEY `fk_Provedores_Materiales1`;

ALTER TABLE `industria`.`Proyecto` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `industria`.`Materiales` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `industria`.`Cliente` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
DROP COLUMN `direccion`,
ADD COLUMN `dirección` VARCHAR(100) NOT NULL AFTER `id_cliente`;

ALTER TABLE `industria`.`Factura` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `industria`.`Provedores` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
DROP COLUMN `direccion`,
ADD COLUMN `dirección` VARCHAR(45) NULL DEFAULT NULL AFTER `id_proveedores`;

ALTER TABLE `industria`.`Proyecto` 
ADD CONSTRAINT `fk_Proyecto_Materiales1`
  FOREIGN KEY (`Materiales_id_material`)
  REFERENCES `industria`.`Materiales` (`id_material`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `industria`.`Cliente` 
ADD CONSTRAINT `fk_Cliente_Materiales1`
  FOREIGN KEY (`Materiales_id_material`)
  REFERENCES `industria`.`Materiales` (`id_material`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `industria`.`Factura` 
ADD CONSTRAINT `fk_Factura_Cliente`
  FOREIGN KEY (`Cliente_id_cliente` , `Cliente_rfc`)
  REFERENCES `industria`.`Cliente` (`id_cliente` , `rfc`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `industria`.`Provedores` 
ADD CONSTRAINT `fk_Provedores_Materiales1`
  FOREIGN KEY (`Materiales_id_material`)
  REFERENCES `industria`.`Materiales` (`id_material`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
