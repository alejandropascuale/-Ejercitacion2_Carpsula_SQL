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

CREATE TABLE ESTUDIANTE (
  'legajo' INT PRIMARY KEY NOT NULL,
  'nombre' VARCHAR NOT NULL,
  'apellido' VARCHAR NOT NULL,
  'fecha_nacimiento' date NOT NULL,
  'carrera' VARCHAR)

CREATE TABLE INSCRIPCION (
  'numero' INT PRIMARY KEY NOT NULL,
  'CURSO_codigo' INT NOT NULL,
  'ESTUDIANTE_legajo' INT NOT NULL,
  'fecha_hora' DATE NOT NULL
)

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

INSERT INTO ESTUDIANTE
values 
(36485, 'Romina', 'Nieva', '1999-11-26', 'Mecánica'),
(39685, 'Brenda', 'Medrano', '2000-09-25', 'Sistemas'),
(41258, 'Ramiro', 'Ríos', '1994-12-06', 'Sistemas'),
(43651, 'Cristian', 'Gómez', '1995-03-19', 'Mecánica'),
(47521, 'María', 'Velazquez', '1998-01-02', 'Sistemas'),
(47961, 'Alexis', 'Reinoso', '1994-12-17', 'Sistemas'),
(48952, 'Gabriel', 'Morales', '1996-10-03', 'Sistemas'),
(51200, 'Lourdes', 'Martinez', '2001-12-13', 'Sistemas')

INSERT INTO INSCRIPCION
VALUES 
(1, 101, 41258, '2012-05-02 18:45:00'),
(2, 102, 41258, '2012-04-02 18:45:00'),
(3, 102, 47961, '2012-01-02 20:01:00'),
(4, 103, 47961, '2012-04-28 18:45:00'),
(5, 101, 39685, '2012-04-12 18:45:00'),
(6, 103, 43651, '2012-04-28 18:45:00'),
(7, 103, 43651, '2012-04-28 18:45:00'),
(8, 101, 47961, '2012-04-28 18:45:00'),
(11, 101, 43651, '2012-04-21 18:45:00')