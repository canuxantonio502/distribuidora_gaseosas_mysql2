-- DROP DATABASE delvalle_distribuidora;

CREATE DATABASE IF NOT EXISTS delvalle_distribuidora;
USE delvalle_distribuidora;

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    identificacion VARCHAR(13) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(11) NOT NULL,
    correo VARCHAR(100) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE categorias(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    volumen VARCHAR(10) NOT NULL
);

CREATE TABLE productos(
	id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    id_categoria INT NOT NULL,
    precio DECIMAL(5, 2),
    id_stock INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
)ENGINE=InnoDB;

CREATE TABLE encargados(
	id_encargado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    identificacion VARCHAR(13) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE sedes(
	id_sede INT PRIMARY KEY AUTO_INCREMENT,
    nombre_sede VARCHAR(50) NOT NULL,
    ubicacion VARCHAR(200) NOT NULL,
    id_stock INT,
    id_encargado INT,
    FOREIGN KEY (id_encargado) REFERENCES encargados(id_encargado)
)ENGINE=InnoDB;

CREATE TABLE detalle_pedidos(
	id_detalle INT PRIMARY KEY AUTO_INCREMENT,
	id_pedido INT,
    id_producto INT,
    cantidad INT,
    subtotal DECIMAL(5, 2),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
)ENGINE=InnoDB;

CREATE TABLE pedidos(
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_detalle_pedido INT NOT NULL,
    id_sede INT NOT NULL,
    total_sin_iva DECIMAL(7, 2),
    total_con_iva DECIMAL(7, 2),
    fecha_pedido DATETIME,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_detalle_pedido) REFERENCES detalle_pedidos(id_detalle),
    FOREIGN KEY (id_sede) REFERENCES sedes(id_sede)
)ENGINE=InnoDB;


-- DROP TABLE stocks;
CREATE TABLE stocks (
	id_stock INT PRIMARY KEY AUTO_INCREMENT,
	id_sede INT NOT NULL,
    id_producto INT NOT NULL,
    stock_actual INT,
    stock_minimo INT,
    capacidad_almacenamiento INT,
    FOREIGN KEY (id_sede) REFERENCES sedes(id_sede),
    FOREIGN KEY (id_producto)REFERENCES productos(id_producto)
)ENGINE=InnoDB;