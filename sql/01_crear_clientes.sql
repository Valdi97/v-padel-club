-- =====================================================
-- PROYECTO: V PADEL CLUB
-- TABLA: CLIENTES
-- OBJETIVO: Registrar a todas las personas del club
-- =====================================================

USE v_padel_club;

CREATE TABLE clientes (

    id_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(60) NOT NULL,
    apellido VARCHAR(60) NOT NULL,
    telefono VARCHAR(20) NOT NULL,

    fecha_nacimiento DATE NOT NULL,

    sexo ENUM('M', 'F') NOT NULL,

    nivel ENUM(
        'A+', 'A',
        'B+', 'B',
        'C+', 'C',
        'D+', 'D'
    ) NULL,

    fecha_registro DATETIME
        NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_cliente_nombre
        CHECK (CHAR_LENGTH(TRIM(nombre)) > 0),

    CONSTRAINT chk_cliente_apellido
        CHECK (CHAR_LENGTH(TRIM(apellido)) > 0),

    CONSTRAINT chk_cliente_telefono
        CHECK (CHAR_LENGTH(TRIM(telefono)) > 0)

) ENGINE=InnoDB;
