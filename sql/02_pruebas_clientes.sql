-- =========================================
-- V PADEL CLUB
-- PRUEBAS DE LA TABLA CLIENTES
-- =========================================

USE v_padel_club;

-- 1. Insertar tres clientes de prueba

INSERT INTO clientes (
    nombre,
    apellido,
    telefono,
    fecha_nacimiento,
    sexo,
    nivel
)
VALUES
(
    'Carlos',
    'Martínez',
    '8095551234',
    '1995-06-15',
    'M',
    'B+'
),
(
    'María',
    'Rodríguez',
    '8295555678',
    '1998-03-20',
    'F',
    'C+'
),
(
    'Pedro',
    'Gómez',
    '8495559012',
    '1990-11-05',
    'M',
    NULL
);


-- 2. Consultar los clientes registrados

SELECT *
FROM clientes;


-- 3. Consultar los identificadores
-- antes de eliminar los registros

SELECT
    id_cliente,
    nombre,
    apellido,
    telefono
FROM clientes;

-- =========================================
-- PRUEBA: ELIMINACION DE CLIENTES
-- =========================================

-- 1. Intento inicial de eliminacion
-- Error 1175: Safe Update Mode activado

-- DELETE FROM clientes
-- WHERE telefono IN (
--     '8095551234',
--     '8295555678',
--     '8495559012'
-- );


-- 2. Solucion: desactivar Safe Updates
-- Se utilizo para permitir la eliminacion
-- mediante el numero de telefono

-- SET SQL_SAFE_UPDATES = 0;


-- 3. Eliminacion de los tres clientes
-- Resultado: registros eliminados correctamente

-- DELETE FROM clientes
-- WHERE telefono IN (
--     '8095551234',
--     '8295555678',
--     '8495559012'
-- );


-- 4. Reactivar Safe Updates
-- SET SQL_SAFE_UPDATES = 1;


-- 5. Verificar la eliminacion

SELECT *
FROM clientes;
