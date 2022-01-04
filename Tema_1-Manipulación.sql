-- En este ejercicio crearemos una tabla, especificando los campos; luego agregaremos una campo a la tabla creada anteriormente. 
-- Y para finalizar el ejercicio,  utilizaremos sentencias de manipulación de datos 
-- Cree una tabla llamada CURSO con los atributos: 

CREATE TABLE curso (
-- Código de curso (clave primaria, entero no nulo)
  id INT NOT NULL PRIMARY KEY, 
-- Nombre (varchar no nulo)
  nombre VARCHAR(255) NOT NULL,
-- Descripcion (varchar)
  descripcion VARCHAR(255),
-- Turno (varchar no nulo)
  turno VARCHAR(255) NOT NULL
);

-- Agregue un campo "cupo" de tipo numérico
ALTER TABLE curso ADD cupo INT;

-- Inserte datos en la tabla:
INSERT INTO curso (id, nombre, descripcion, turno, cupo) 
VALUES(101, "Algoritmos", "Algoritmos y Estructuras de Datos", "Mañana", 35);

INSERT INTO curso (id, nombre, descripcion, turno, cupo) 
VALUES(102, "Matemática Discreta", "", "Tarde", 30);

-- Cree un registro con el nombre nulo y verifique que no funciona.
INSERT INTO curso (id, nombre, descripcion, turno, cupo) 
VALUES(103, null, "", "Tarde", 30);
-- ## SqLite.js
-- ## NOT NULL constraint failed: curso.nombre


-- Cree un registro con la clave primaria repetida y verifique que no funciona.
INSERT INTO curso (id, nombre, descripcion, turno, cupo) 
VALUES(102, "SQL basico", "", "Tarde", 30);
-- ## SqLite.js
-- ## UNIQUE constraint failed: curso.id


-- Actualice, para todos los cursos, el cupo en 25.
UPDATE curso SET cupo=25 ;

-- Elimine el curso Algoritmos.
DELETE FROM curso WHERE nombre="Algoritmos" ;
