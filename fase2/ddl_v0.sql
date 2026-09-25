
-- Práctica 5 - Equipo TresD
-- DDL v0: esquema relacional

CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    apellido VARCHAR(80) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    direccion VARCHAR(255)
);

CREATE TABLE categoria (
    id_categoria INTEGER PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    descripcion VARCHAR(255)
);


CREATE TABLE producto (
    id_producto INTEGER PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio NUMERIC(10,2) NOT NULL,
    stock INTEGER NOT NULL,
    id_categoria INTEGER NOT NULL
        REFERENCES categoria(id_categoria)
);

CREATE TABLE pedido (
    id_pedido INTEGER PRIMARY KEY,
    id_cliente INTEGER NOT NULL
        REFERENCES cliente(id_cliente),
    fecha_pedido DATE NOT NULL,
    estado VARCHAR(30) NOT NULL
);

CREATE TABLE detalle_pedido (
    id_pedido INTEGER NOT NULL
        REFERENCES pedido(id_pedido),
    id_producto INTEGER NOT NULL
        REFERENCES producto(id_producto),
    cantidad INTEGER NOT NULL,
    precio_unitario NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (id_pedido, id_producto)
);

CREATE TABLE pago (
    id_pago INTEGER PRIMARY KEY,
    id_pedido INTEGER NOT NULL
        REFERENCES pedido(id_pedido),
    fecha_pago DATE NOT NULL,
    monto NUMERIC(10,2) NOT NULL,
    metodo_pago VARCHAR(50) NOT NULL,
    estado VARCHAR(30) NOT NULL
);