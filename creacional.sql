-- Elimina la tabla si existe
DROP TABLE IF EXISTS reactivo;

-- Crea la tabla "reactivo"
CREATE TABLE reactivo (
    codigo character varying PRIMARY KEY,
    observaciones character varying,
    nombre_reactivo character varying,
    cantidad numeric,
    fecha_vto date,
    nro_lote character varying,
    fecha_ingreso date,
    nro_expediente character varying,
    conservacion character varying,
    fecha_finalizacion date,
    marca character varying,
    fecha_descarte date
);

-- Elimina la tabla si existe
DROP TABLE IF EXISTS usuario;

-- Crea la tabla "usuario"
CREATE TABLE usuario (
    nombre_usuario character varying PRIMARY KEY,
    email character varying UNIQUE,
    password character varying
);

-- Elimina la tabla si existe
DROP TABLE IF EXISTS consumo;

-- Crea la tabla "consumo"
CREATE TABLE consumo (
    id_consumo serial PRIMARY KEY,
    cantidad_usada numeric,
    registro_consumo timestamp,
    cantidad_actual numeric,
    codigo character varying REFERENCES reactivo(codigo),
    nombre_usuario character varying REFERENCES usuario(nombre_usuario)
);
