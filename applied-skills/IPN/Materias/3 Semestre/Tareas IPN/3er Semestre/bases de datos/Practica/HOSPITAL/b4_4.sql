SET autocommit=0;

COMMIT;

UPDATE medico
	set idEspecialidad=9
    WHERE idMedico=102;
    
UPDATE medico
	set idEspecialidad=2
    WHERE idMedico=101;
    
    ROLLBACK;
    SELECT * FROM hospitales.medico;