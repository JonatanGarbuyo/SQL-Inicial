-- ##  Ejercitación  ##

-- Dadas las tablas:
-- PROFESOR
-- CURSO
-- Donde el campo PROFESOR_id de la tabla CURSO es una clave foránea que referencia a PROFESOR, 

CREATE TABLE profesor (
  id INT NOT NULL PRIMARY KEY, 
  nombre TEXT NOT NULL,
  apellido TEXT,
  fecha_nacimiento TEXT,
  salario INT
);

-- Inserte datos en la tabla:
INSERT INTO profesor (id, nombre, apellido, fecha_nacimiento, salario) 
VALUES(1, "Juan", "Perez", "1990-06-09", "55000");

INSERT INTO profesor (id, nombre, apellido, fecha_nacimiento, salario) 
VALUES(2, "Maria Emilia", "Paz", "1984-07-15", "72000");

INSERT INTO profesor (id, nombre, apellido, fecha_nacimiento, salario) 
VALUES(3, "Martin", "Correa", "1987-12-07", "63000");

INSERT INTO profesor (id, nombre, apellido, fecha_nacimiento, salario) 
VALUES(4, "Lucia", "Diaz", "1991-02-24", "45000");

INSERT INTO profesor (id, nombre, apellido, fecha_nacimiento, salario) 
VALUES(5, "Raul", "Martinez", "1980-10-15", "85000");

INSERT INTO profesor (id, nombre, apellido, fecha_nacimiento, salario) 
VALUES(6, "Mabel", "Rios", "1982-06-12", "83000");


-- tabla profesor
ALTER TABLE curso ADD COLUMN "PROFESOR_id" INTEGER REFERENCES profesor("id");

UPDATE curso SET "cupo" = 20, PROFESOR_id = 1 WHERE codigo=101;
UPDATE curso SET "cupo" = 20, PROFESOR_id = 2 WHERE codigo=102;

INSERT INTO curso (codigo, nombre, descripcion, cupo, turno, PROFESOR_id) 
VALUES(103, "Programacion Java", "POO en Java", 35, "noche", 4);

INSERT INTO curso (codigo, nombre, descripcion, cupo, turno, PROFESOR_id) 
VALUES(104, "Programacion Web", null, 35, "noche", 5);

INSERT INTO curso (codigo, nombre, descripcion, cupo, turno, PROFESOR_id) 
VALUES(105, "Programacion C#", ".NET, Visual Studio 2019", 30, "noche", 6);



-- Consigna 3
-- Cargue una caputa de pantalla de qué resultado se obtiene después de ejecutar:

SELECT profesor.Apellido , curso.Nombre, curso.turno
FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;

