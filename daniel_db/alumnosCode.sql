-- Crear la base de datos
CREATE DATABASE alumnos_uni;

-- Crear la tabla 'estudiantes'
CREATE TABLE estudiantes (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Altura DECIMAL(3,2),        -- Ejemplo: 1.75 m
    Peso DECIMAL(5,2),          -- Ejemplo: 70.50 kg
    Universidad VARCHAR(100) NOT NULL,
    Carrera VARCHAR(100),       -- Carrera universitaria, como "Ingeniería en Sistemas"
    Promedio DECIMAL(3,2)       -- Promedio de 0.00 a 10.00
);

-- Datos en codigo SQL
INSERT INTO estudiantes (Nombre, Apellido, Altura, Peso, Universidad, Carrera, Promedio) VALUES
('Ana', 'González', 1.65, 58.3, 'UNAM', 'Derecho', 8.5),
('Luis', 'Martínez', 1.78, 72.0, 'IPN', 'Ingeniería Mecánica', 7.9),
('Sofía', 'Ramírez', 1.60, 55.0, 'UAM', 'Psicología', 9.1),
('Carlos', 'Torres', 1.82, 80.2, 'ITESM', 'Ingeniería en Sistemas', 8.2),
('Valeria', 'López', 1.70, 60.5, 'UANL', 'Medicina', 9.4),
('Miguel', 'Díaz', 1.75, 68.9, 'UNAM', 'Arquitectura', 7.5),
('Fernanda', 'Hernández', 1.68, 59.3, 'IPN', 'Administración', 8.9),
('Diego', 'Cruz', 1.80, 76.5, 'UAM', 'Ingeniería Eléctrica', 8.0),
('María', 'Pérez', 1.62, 54.2, 'UAEH', 'Contaduría', 8.7),
('Jorge', 'Sánchez', 1.77, 70.1, 'BUAP', 'Ingeniería Industrial', 7.8),
('Andrea', 'Vargas', 1.66, 57.7, 'UNAM', 'Diseño Gráfico', 9.0),
('Emilio', 'Luna', 1.74, 69.5, 'UP', 'Finanzas', 8.3),
('Camila', 'Reyes', 1.63, 56.1, 'ITESM', 'Negocios Internacionales', 9.2),
('Rodrigo', 'Morales', 1.85, 83.0, 'UANL', 'Medicina', 7.4),
('Isabel', 'Castro', 1.61, 53.4, 'UAM', 'Biología', 8.6),
('Pablo', 'Gutiérrez', 1.79, 74.3, 'UNAM', 'Filosofía', 8.1),
('Lucía', 'Silva', 1.69, 58.0, 'IPN', 'Informática', 8.8),
('Ángel', 'Navarro', 1.76, 71.9, 'UAEH', 'Ingeniería Civil', 7.7),
('Daniela', 'Rojas', 1.64, 55.8, 'BUAP', 'Enfermería', 9.3),
('Iván', 'Medina', 1.81, 79.0, 'UNAM', 'Matemáticas Aplicadas', 8.4);
