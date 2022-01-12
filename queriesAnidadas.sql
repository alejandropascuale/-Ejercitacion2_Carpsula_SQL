/* Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche. */
SELECT count(*) as 'Cantidad de profesores con mas de 1 curso turno noche'
FROM (SELECT DISTINCT profesor_id from CURSO t1
WHERE (SELECT count(*)
       from CURSO t2
       where t1.PROFESOR_ID = t2.PROFESOR_ID
      	AND t1.turno = 'Noche') > 1 )


/* Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105. */
SELECT * from ESTUDIANTE
WHERE legajo IN (SELECT DISTINCT estudiante_legajo from INSCRIPCION
WHERE curso_codigo != 105)
