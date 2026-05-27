
CREATE TRIGGER hospital_tri AFTER INSERT ON  hospital FOR EACH ROW INSERT INTO hospital2 (
idHospital,nombre,direccion,telefono,fecha_inagura
) VALUES (NEW.idHospital, NEW.nombre, NEW.direccion, NEW.telefono, NEW.fecha_inagura);

CREATE TRIGGER ingreso_tri AFTER INSERT ON  ingreso FOR EACH ROW INSERT INTO ingreso2 (
idIngreso,Fecha_ingreso,Fecha_alta,Tratamiento,Diagnostico,idMedico,idPaciente,idHabitacion,idPlanta,idHospital
) VALUES (NEW.idIngreso, NEW.Fecha_ingreso, NEW.Fecha_alta, NEW.Tratamiento, NEW.Diagnostico, NEW.idMedico, NEW.Diagnostico, NEW.idPaciente, NEW.idHabitacion, NEW.idPlanta(), NEW.idHospital());

CREATE VIEW especialidad_v AS
SELECT *
FROM especialidad;
