CREATE TABLE IF NOT EXISTS `hospital`.`hospital2` (
  `idHospital` INT NOT NULL,
  `nombre` VARCHAR(80) NOT NULL,
  `direccion` VARCHAR(150) NOT NULL,
  `telefono` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_inagura` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`idHospital`))
ENGINE = InnoDB;


CREATE TRIGGER hospital_tri AFTER INSERT ON  hospital FOR EACH ROW INSERT INTO hospital2 (
idHospital,nombre,direccion,telefono,fecha_inagura
) VALUES (NEW.idHospital, NEW.nombre, NEW.direccion, NEW.telefono, NEW.fecha_inagura);

CREATE TRIGGER ingreso_tri AFTER INSERT ON  ingreso FOR EACH ROW INSERT INTO ingreso2 (
idIngreso,Fecha_ingreso,Fecha_alta,Tratamiento,Diagnostico,idMedico,idPaciente,idHabitacion,idPlanta,idHospital
) VALUES (NEW.idIngreso, NEW.Fecha_ingreso, NEW.Fecha_alta, NEW.Tratamiento, NEW.Diagnostico, NEW.idMedico, NEW.Diagnostico, NEW.idPaciente, NEW.idHabitacion, NEW.idPlanta(), NEW.idHospital());

CREATE TABLE IF NOT EXISTS `hospital`.`Ingreso2` (
  `id_ingreso` INT NOT NULL,
  `fecha_ingreso` DATETIME NOT NULL,
  `fecha_alta` DATE NULL DEFAULT NULL,
  `tratamiento` VARCHAR(500) NULL DEFAULT NULL,
  `Diagnostico` VARCHAR(500) NULL DEFAULT NULL,
  `id_habitacion` INT NOT NULL,
  `id_planta` INT NOT NULL,
  `id_hospital` INT NOT NULL,
  `id_medico_jefe_ingreso` INT NOT NULL,
  `id_paciente` INT NOT NULL,
  PRIMARY KEY (`id_ingreso`),
  INDEX `fk_Ingreso_Paciente1_idx` (`id_paciente` ASC) VISIBLE,
  INDEX `fk_Ingreso_Habitacion1_idx` (`id_habitacion` ASC, `id_planta` ASC, `id_hospital` ASC) VISIBLE,
  INDEX `fk_Ingreso_Medico1_idx` (`id_medico_jefe_ingreso` ASC) VISIBLE,
  CONSTRAINT `fk_Ingreso_Paciente1`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `hospitales`.`Paciente` (`id_paciente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Ingreso_Habitacion1`
    FOREIGN KEY (`id_habitacion` , `id_planta` , `id_hospital`)
    REFERENCES `hospitales`.`Habitacion` (`id_habitacion` , `id_planta` , `id_hospital`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Ingreso_Medico1`
    FOREIGN KEY (`id_medico_jefe_ingreso`)
    REFERENCES `hospitales`.`Medico` (`id_medico`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE VIEW especialidad_v AS
SELECT *
FROM especialidad;