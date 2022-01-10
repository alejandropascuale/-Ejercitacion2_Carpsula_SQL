CREATE TABLE PROFESOR (
  'id' INT PRIMARY KEY NOT NULL,
  'nombre' VARCHAR NOT NULL,
  'apellido' VARCHAR NOT NULL,
  'fecha_nacimiento' DATE NOT NULL,
  'salario' INT NOT NULL )

CREATE TABLE CURSO (
  'codigo' INT PRIMARY KEY NOT NULL,
  'nombre' VARCHAR NOT NULL,
  'descripcion' VARCHAR,
  'cupo' INT,
  'turno' VARCHAR,
  'PROFESOR_ID' INT )

INSERT INTO PROFESOR VALUES (1, 'Juan', 'Pérez', '1990-06-06', 55000)
, (2, 'Maria Emilia', 'Paz', '1984-07-15', 72000)
, (3, 'Martín', 'Correa', '1987-12-07', 63000)
, (4, 'Lucía', 'Díaz', '1991-02-24', 45000)
, (5, 'Raúl', 'Martínez', '1980-10-15', 85000)
, (6, 'Mabel', 'Ríos', '1982-06-12', 83000)

INSERT INTO CURSO VALUES (101, 'Algoritmos', 'Algoritmos y estructuras de datos', 20, 'Mañana', 1)
, (102, 'Matemática Discreta', NULL, 20, 'Tarde', 2)
, (103, 'Programación Java', 'POO en Java', 35, 'Noche', 4)
, (104, 'Programación Web', NULL, 35, 'Noche', 5)
, (105, 'Programación C#', 'NET, Visual Studio 2019', 30, 'Noche', 6)