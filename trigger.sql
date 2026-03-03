USE sistemaFormacionSena;

DELIMITER $$

CREATE TRIGGER registrar_nueva_matricula
AFTER INSERT ON matriculas
FOR EACH ROW
BEGIN
    
    #Solo muestra un mensaje cuando se inserta una matrícula nueva
    
    INSERT INTO log_matriculas (id_matricula, fecha_registro)
    VALUES (NEW.Id_matricula, NOW());                         #NOW funcion que devuelve la fecha y la hora exacta
END$$

DELIMITER $$

SELECT * FROM log_matriculas;


# este trigger lo que nos da a entender es que se registra una nueva matricula despues de que pase algo
# cuando se inserte un dato en la tabla matriculas y lo guarda en la tabla log