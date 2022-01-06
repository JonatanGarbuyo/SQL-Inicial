
-- Dada la tabla: PROFESOR
-- Para cada caso, escriba la consulta correspondiente:

-- Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.
SELECT nombre, apellido, fecha_nacimiento FROM profesor ORDER By fecha_nacimiento ASC;

-- Todos los profesores cuyo salario sea mayor o igual a 65000.
SELECT * FROM profesor WHERE salario >= 65000; 

-- Todos los profesores que nacieron en la década del 80.
SELECT * FROM profesor WHERE fecha_nacimiento LIKE '198_______';

-- 5 registros
SELECT * FROM profesor LIMIT 5;

-- Todos los profesores cuyo apellido inicie con la letra “P”
SELECT * FROM profesor WHERE apellido LIKE 'P%';

-- Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
SELECT * FROM profesor WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31' AND salario > 80000;
