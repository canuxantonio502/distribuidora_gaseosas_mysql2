USE delvalle_distribuidora;

INSERT INTO clientes (nombre, apellido, identificacion, direccion, telefono, correo)
    VALUES ('Carlos', 'García', '1002938475', 'Zona 1, Ciudad', '55512345', 'carlos.garcia@email.com'),
    ('Ana', 'Martínez', '2938475610', 'Zona 4, Ciudad', '55523456', 'ana.martinez@email.com'),
    ('Luis', 'López', '3847561029', 'Zona 10, Ciudad', '55534567', 'luis.lopez@email.com'),
    ('María', 'González', '4756102938', 'Zona 14, Ciudad', '55545678', 'maria.gonzalez@email.com'),
    ('Jorge', 'Pérez', '5610293847', 'Zona 15, Ciudad', '55556789', 'jorge.perez@email.com'),
    ('Carmen', 'Ramírez', '6102938475', 'Zona 9, Ciudad', '55567890', 'carmen.ramirez@email.com'),
    ('Pedro', 'Hernández', '1029384756', 'Zona 5, Ciudad', '55578901', 'pedro.hernandez@email.com'),
    ('Lucía', 'Gómez', '9384756102', 'Zona 11, Ciudad', '55589012', 'lucia.gomez@email.com'),
    ('Miguel', 'Díaz', '8475610293', 'Zona 7, Ciudad', '55590123', 'miguel.diaz@email.com'),
    ('Sofía', 'Vásquez', '7561029384', 'Zona 13, Ciudad', '55501234', 'sofia.vasquez@email.com'),
    ('Diego', 'Castillo', '6453728190', 'Zona 16, Ciudad', '55513456', 'diego.castillo@email.com'),
    ('Laura', 'Morales', '5342617089', 'Zona 2, Ciudad', '55524567', 'laura.morales@email.com'),
    ('Andrés', 'Reyes', '4231506978', 'Zona 3, Ciudad', '55535678', 'andres.reyes@email.com'),
    ('Elena', 'Cruz', '3120495867', 'Zona 12, Ciudad', '55546789', 'elena.cruz@email.com'),
    ('Fernando', 'Ortiz', '2019384756', 'Zona 21, Ciudad', '55557890', 'fernando.ortiz@email.com');

INSERT INTO categorias (nombre, volumen) 
    VALUES ('Gaseosas', '355 ml'),
    ('Gaseosas Familiares', '2 Litros'),
    ('Jugos Naturales', '500 ml'),
    ('Aguas Puras', '600 ml'),
    ('Cervezas', '350 ml'),
    ('Energizantes', '250 ml'),
    ('Tés Fríos', '500 ml');

INSERT INTO encargados (nombre, identificacion) 
    VALUES ('Josué Ambrosi', '2345678900101'),
    ('Carlos Fuentes', '3456789010101'),
    ('Marta Lima', '4567890120101'),
    ('Andrea Cáceres', '5678901230101'),
    ('Roberto Orellana', '6789012340101');

INSERT INTO productos (nombre, id_categoria, precio) 
    VALUES ('Coca Cola Lata', 1, 6.50),
    ('Pepsi Lata', 1, 6.00),
    ('7Up Lata', 1, 6.00),
    ('Coca Cola Doble Litro', 2, 18.00),
    ('Pepsi Familiar', 2, 16.50),
    ('Jugo del Valle Manzana', 3, 7.50),
    ('Jugo del Valle Melocotón', 3, 7.50),
    ('Agua Salvavidas', 4, 5.00),
    ('Agua Cielo', 4, 4.50),
    ('Gallo Lata', 5, 12.00),
    ('Dorada Ice', 5, 11.00),
    ('Cabro Reserva', 5, 14.00),
    ('Red Bull', 6, 18.50),
    ('Monster Energy', 6, 17.00),
    ('Raptor', 6, 8.00),
    ('Lipton Limón', 7, 7.00),
    ('Lipton Durazno', 7, 7.00),
    ('Té Fuze Limón', 7, 7.00),
    ('Gatorade Naranja', 3, 9.00),
    ('Gatorade Uva', 3, 9.00);

INSERT INTO sedes (nombre_sede, ubicacion, id_encargado) 
    VALUES ('Sucursal Majadas', 'Fórum Majadas, Zona 11', 1),
    ('Sucursal Centro Histórico', 'Cerca del Parque Colón, Zona 1', 2),
    ('Sucursal Gerona', 'Complejo Deportivo Gerona, Zona 1', 3),
    ('Sucursal Petapa', 'Frente a IRTRA Mundo Petapa, Zona 12', 4),
    ('Sucursal Aeropuerto', 'Avenida Hincapié, cerca de Zoológico La Aurora', 5);

INSERT INTO stocks (id_sede, id_producto, stock_actual, stock_minimo, capacidad_almacenamiento) 
    VALUES (1, 10, 150, 50, 500),
    (2, 4, 80, 20, 200),
    (3, 8, 300, 100, 1000),
    (4, 13, 60, 15, 150),
    (5, 1, 200, 50, 600);

INSERT INTO pedidos (id_cliente, id_sede, total_sin_iva, total_con_iva, fecha_pedido)
    VALUES (1, 1, 13.00, 14.56, '2026-08-01 10:30:00'),
    (2, 2, 12.00, 13.44, '2026-08-01 11:15:00'),
    (3, 3, 36.00, 40.32, '2026-08-02 09:45:00'),
    (4, 4, 18.50, 20.72, '2026-08-02 14:20:00'),
    (5, 5, 50.00, 56.00, '2026-08-03 16:10:00'),
    (6, 1, 24.00, 26.88, '2026-08-03 18:05:00'),
    (7, 2, 22.00, 24.64, '2026-08-04 10:00:00'),
    (8, 3, 15.00, 16.80, '2026-08-04 12:30:00'),
    (9, 4, 8.00, 8.96, '2026-08-05 08:45:00'),
    (10, 5, 14.00, 15.68, '2026-08-05 13:15:00'),
    (11, 1, 21.00, 23.52, '2026-08-06 15:50:00'),
    (12, 2, 9.00, 10.08, '2026-08-06 17:25:00'),
    (13, 3, 18.00, 20.16, '2026-08-07 09:10:00'),
    (14, 4, 34.00, 38.08, '2026-08-07 11:40:00'),
    (15, 5, 12.00, 13.44, '2026-08-08 14:00:00');

INSERT INTO detalle_pedidos (id_pedido, id_producto, cantidad, subtotal) 
    VALUES (1, 1, 2, 13.00), -- 2 Coca Colas
    (2, 2, 2, 12.00), -- 2 Pepsis
    (3, 4, 2, 36.00), -- 2 Coca Cola Doble Litro
    (4, 13, 1, 18.50), -- 1 Red Bull
    (5, 8, 10, 50.00), -- 10 Aguas Salvavidas
    (6, 10, 2, 24.00), -- 2 Gallo Lata
    (7, 11, 2, 22.00), -- 2 Dorada Ice
    (8, 6, 2, 15.00), -- 2 Jugos Manzana
    (9, 15, 1, 8.00), -- 1 Raptor
    (10, 16, 2, 14.00), -- 2 Lipton Limón
    (11, 17, 3, 21.00), -- 3 Lipton Durazno
    (12, 9, 2, 9.00), -- 2 Agua Cielo
    (13, 19, 2, 18.00), -- 2 Gatorade Naranja
    (14, 14, 2, 34.00), -- 2 Monster
    (15, 3, 2, 12.00); -- 2 7Up Lata