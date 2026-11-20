# 01 — Creación de la tabla CLIENTES

## 1. Objetivo

La primera tabla que he desarrollado para V Padel Club es `clientes`.

Su función es almacenar la información de todas las personas que se registren en el club, tanto jugadores como acompañantes o espectadores.

Cada persona tendrá un único registro. De esta forma, cuando vuelva al club, podremos identificarla sin tener que solicitar nuevamente sus datos.

Esta tabla también servirá como referencia para relacionar posteriormente las entradas, reservas y compras de cada cliente.

## 2. Diseño de la tabla

He definido los siguientes campos:

| Campo | Tipo de dato | Descripción |
|---|---|---|
| id_cliente | INT UNSIGNED | Identificador único del cliente |
| nombre | VARCHAR(60) | Nombre |
| apellido | VARCHAR(60) | Apellido |
| telefono | VARCHAR(20) | Número de teléfono |
| fecha_nacimiento | DATE | Fecha de nacimiento |
| sexo | ENUM('M','F') | Sexo del cliente |
| nivel | ENUM | Nivel de pádel del cliente |
| fecha_registro | DATETIME | Fecha de registro automática |

El campo `nivel` admite los valores A+, A, B+, B, C+, C, D+ y D.

## 3. Desarrollo en MySQL

Para crear la tabla utilicé la instrucción `CREATE TABLE`.

Definí `id_cliente` como clave primaria mediante `PRIMARY KEY` y utilicé `AUTO_INCREMENT` para generar automáticamente un identificador para cada cliente.

Establecí `NOT NULL` en los campos obligatorios: nombre, apellido, teléfono, fecha de nacimiento y sexo.

En los campos `sexo` y `nivel` utilicé `ENUM`, para controlar los valores que pueden almacenarse.

El nivel permite `NULL`, ya que también registraremos personas que no practican pádel.

Para registrar automáticamente la fecha de creación de cada cliente utilicé `DEFAULT CURRENT_TIMESTAMP`.

También añadí restricciones `CHECK` para evitar que los campos nombre, apellido y teléfono contengan únicamente espacios o cadenas vacías.

Por último, utilicé el motor `InnoDB`, que permitirá establecer relaciones con otras tablas mediante claves foráneas.

## 4. Decisiones tomadas

Durante el diseño de la tabla tomé las siguientes decisiones:

- Separar el nombre y el apellido en columnas diferentes.
- Utilizar un identificador numérico único para cada cliente.
- Almacenar el teléfono como texto, ya que no se utilizará para operaciones matemáticas.
- Hacer obligatoria la fecha de nacimiento.
- Limitar el sexo a los valores M y F.
- Permitir que el nivel quede vacío cuando el cliente no sea jugador.
- Generar automáticamente la fecha de registro.

## 5. Validación

He utilizado la consulta `DESCRIBE clientes` para revisar la estructura de la tabla.

La consulta permite comprobar los nombres de los campos, los tipos de datos, las restricciones `NULL` y la clave primaria.

**Pendiente:** realizar pruebas de inserción y comprobar el comportamiento de las restricciones.

## 6. Próximo paso

Una vez terminadas las pruebas de la tabla `clientes`, comenzaré a desarrollar `entradas`.

Esta nueva tabla permitirá registrar cada vez que una persona acceda al club, sin duplicar su información personal.
