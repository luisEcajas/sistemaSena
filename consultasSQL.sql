#CONSULTAS
USE sistemaFormacionSena;

#esta consulta es filtrar progrmaas por ubicacion y tipo 
SELECT * FROM programas 
WHERE Ubicacion_programa LIKE '%comercio%' 
AND Tipo_programa = 'Tecnologo';

# en esta segunda buscamos aprendices por apellido o nivel academico
SELECT Nombre_aprendiz, Apellido_aprendiz, Nivel_Academico_aprendiz 
FROM aprendices 
WHERE Apellido_aprendiz LIKE 'Perez' 
OR Nivel_Academico_aprendiz = 'Bachiller Secundario';

# en esta tercera busacmos instructores por tipo de contrato
SELECT * FROM instructores 
WHERE Nombre_instructor LIKE 'A%' 
AND (Tipo_instructor = 'Planta' OR Tipo_instructor = 'Contrato');

# en esta cuarta buscamos competencias
SELECT * FROM competencias 
WHERE Nombre_competencia LIKE '%Digitales%' 
OR Nombre_competencia LIKE '%Contable%';

# y por ultimo la quinta buscamos programas con jornadas especificas y nombres clave del programa
SELECT Nombre_programa, Jornada_programa 
FROM programas 
WHERE (Nombre_programa LIKE '%ADSO%' OR Nombre_programa LIKE '%Marketing%') 
AND (Jornada_programa = 'Diurna' OR Jornada_programa = 'Virtual');