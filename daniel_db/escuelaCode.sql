-- Tablas
CREATE TABLE edades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    edad INT NOT NULL UNIQUE
    );
CREATE TABLE colonias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_colonia VARCHAR(100) UNIQUE NOT NULL
    );
CREATE TABLE especialidades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_especialidad VARCHAR(100) UNIQUE NOT NULL
    );
CREATE TABLE generos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_genero VARCHAR(50) UNIQUE NOT NULL
    );



CREATE TABLE alumnos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  numero_control VARCHAR(10) UNIQUE NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  apellido_paterno VARCHAR(50) NOT NULL,
  apellido_materno VARCHAR(50),
  id_edad INT NOT NULL,
  id_colonia INT NOT NULL,
  id_especialidad INT NOT NULL,
  id_genero INT NOT NULL,
  correo VARCHAR(15) UNIQUE,
  telefono VARCHAR(15),
  fecha_ingreso DATE NOT NULL,
  FOREIGN KEY (id_edad) REFERENCES edades(id),
  FOREIGN KEY (id_colonia) REFERENCES colonias(id),
  FOREIGN KEY (id_especialidad) REFERENCES especialidades(id),
  FOREIGN KEY (id_genero) REFERENCES generos(id)
  );



-- INSERT De Las Tablas

INSERT INTO edades (edad) VALUES (14), (15), (16), (17), (18), (19);

INSERT INTO colonias (nombre_colonia) VALUES
('Jarachina Norte'), ('Jarachina Sur'), ('Granjas'),
('Vista Hermosa'), ('Esfuerzo'), ('Freznos'),
('Progreso'), ('Bugambilias'), ('Ventura'), ('Loma
Real'), ('Campestre'), ('Vista Alta');

INSERT INTO generos (nombre_genero) VALUES ('Hombre'), ('Mujer'), ('Otro');

INSERT INTO `especialidades` (`id`, `nombre_especialidad`) VALUES
(4, 'Administracion De Recursos Humanos'),
(5, 'CiberSeguridad'),
(9, 'Comercio Internacional'),
(7, 'Construccion'),
(10, 'Hoteleria'),
(6, 'Logistica'),
(3, 'Mantenimiento De Computo'),
(2, 'Mantenimiento Industrial'),
(8, 'Mecatronica'),
(1, 'Programacion');


-- Datos en Codigo SQL
INSERT INTO alumnos (
    numero_control, nombre, apellido_paterno, apellido_materno,
    id_edad, id_colonia, id_especialidad, id_genero,
    correo, telefono, fecha_ingreso
) VALUES
(11, 'Carlos', 'Ramírez', 'Díaz', 3, 1, 1, 1, 'carlos.ramirez@mail.com', '8991234567', '2023-08-21'),
(12, 'María', 'López', 'Fernández', 4, 2, 10, 2, 'maria.lopez@mail.com', '8992234567', '2022-08-22'),
(13, 'Luis', 'Martínez', 'Soto', 5, 3, 8, 1, 'luis.mtz@mail.com', '8993234567', '2023-01-15'),
(14, 'Ana', 'García', 'Vega', 2, 4, 5, 2, 'ana.garcia@mail.com', '8994234567', '2024-03-18'),
(15, 'Diana', 'Sánchez', 'Morales', 4, 5, 6, 2, 'diana.sanchez@mail.com', '8995234567', '2023-07-10'),
(16, 'Eduardo', 'Hernández', 'Campos', 6, 6, 7, 1, 'eduardo.hdez@mail.com', '8996234567', '2022-09-05'),
(17, 'Fernanda', 'Pérez', 'Ríos', 3, 7, 4, 2, 'fernanda.perez@mail.com', '8997234567', '2024-01-12'),
(18, 'Javier', 'Ortiz', 'Acosta', 5, 8, 9, 1, 'javier.ortiz@mail.com', '8998234567', '2023-04-03'),
(19, 'Valeria', 'Torres', 'Zamora', 6, 9, 1, 2, 'valeria.torres@mail.com', '8999234567', '2022-11-17'),
(20, 'Andrés', 'Castillo', 'Bravo', 1, 10, 2, 1, 'andres.castillo@mail.com', '8990243567', '2023-06-25'),
(21, 'Sofía', 'Silva', 'Mendoza', 3, 11, 3, 2, 'sofia.silva@mail.com', '8991456789', '2023-05-09'),
(22, 'Mateo', 'Cruz', 'Ibarra', 2, 12, 6, 1, 'mateo.cruz@mail.com', '8992456789', '2024-02-19'),
(23, 'Paola', 'Reyes', 'Montoya', 5, 2, 10, 2, 'paola.reyes@mail.com', '8993456789', '2023-10-28'),
(24, 'Diego', 'Ramos', 'Salinas', 6, 4, 8, 1, 'diego.ramos@mail.com', '8994456789', '2022-08-30'),
(25, 'Camila', 'Navarro', 'Cuevas', 4, 1, 7, 2, 'camila.navarro@mail.com', '8995456789', '2023-09-13'),
(26, 'José', 'Aguilar', 'Romero', 3, 3, 1, 1, 'jose.aguilar@mail.com', '8996456789', '2023-11-02'),
(27, 'Daniela', 'Luna', 'Valencia', 2, 5, 5, 2, 'daniela.luna@mail.com', '8997456789', '2024-03-01'),
(28, 'Alan', 'Jiménez', 'Arellano', 5, 6, 2, 1, 'alan.jimenez@mail.com', '8998456789', '2023-12-05'),
(29, 'Abril', 'Estrada', 'Guerrero', 6, 7, 4, 2, 'abril.estrada@mail.com', '8999456789', '2022-10-14'),
(30, 'Emiliano', 'López', 'Vargas', 4, 9, 3, 3, 'emiliano.lopez@mail.com', '8990654789', '2023-07-20');
