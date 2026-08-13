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
    VALUES 
    -- Sede 1: Sucursal Majadas
    (1, 1, 150, 50, 500), (1, 2, 140, 50, 500), (1, 3, 145, 50, 500), (1, 4, 80, 20, 200), 
    (1, 5, 75, 20, 200), (1, 6, 90, 30, 300), (1, 7, 85, 30, 300), (1, 8, 300, 100, 1000), 
    (1, 9, 250, 100, 1000), (1, 10, 120, 40, 400), (1, 11, 110, 40, 400), (1, 12, 95, 30, 300), 
    (1, 13, 60, 15, 150), (1, 14, 55, 15, 150), (1, 15, 200, 50, 600), (1, 16, 130, 40, 400), 
    (1, 17, 125, 40, 400), (1, 18, 140, 40, 400), (1, 19, 160, 50, 500), (1, 20, 155, 50, 500),
    -- Sede 2: Sucursal Centro Histórico
    (2, 1, 180, 50, 500), (2, 2, 170, 50, 500), (2, 3, 160, 50, 500), (2, 4, 90, 20, 200), 
    (2, 5, 85, 20, 200), (2, 6, 100, 30, 300), (2, 7, 95, 30, 300), (2, 8, 350, 100, 1000), 
    (2, 9, 300, 100, 1000), (2, 10, 140, 40, 400), (2, 11, 130, 40, 400), (2, 12, 110, 30, 300), 
    (2, 13, 70, 15, 150), (2, 14, 65, 15, 150), (2, 15, 220, 50, 600), (2, 16, 150, 40, 400), 
    (2, 17, 145, 40, 400), (2, 18, 160, 40, 400), (2, 19, 180, 50, 500), (2, 20, 175, 50, 500),
    -- Sede 3: Sucursal Gerona
    (3, 1, 120, 50, 500), (3, 2, 110, 50, 500), (3, 3, 115, 50, 500), (3, 4, 60, 20, 200), 
    (3, 5, 55, 20, 200), (3, 6, 70, 30, 300), (3, 7, 65, 30, 300), (3, 8, 200, 100, 1000), 
    (3, 9, 180, 100, 1000), (3, 10, 90, 40, 400), (3, 11, 85, 40, 400), (3, 12, 75, 30, 300), 
    (3, 13, 40, 15, 150), (3, 14, 35, 15, 150), (3, 15, 150, 50, 600), (3, 16, 100, 40, 400), 
    (3, 17, 95, 40, 400), (3, 18, 110, 40, 400), (3, 19, 130, 50, 500), (3, 20, 125, 50, 500),
    -- Sede 4: Sucursal Petapa
    (4, 1, 200, 50, 500), (4, 2, 190, 50, 500), (4, 3, 185, 50, 500), (4, 4, 100, 20, 200), 
    (4, 5, 95, 20, 200), (4, 6, 110, 30, 300), (4, 7, 105, 30, 300), (4, 8, 400, 100, 1000), 
    (4, 9, 350, 100, 1000), (4, 10, 150, 40, 400), (4, 11, 145, 40, 400), (4, 12, 125, 30, 300), 
    (4, 13, 80, 15, 150), (4, 14, 75, 15, 150), (4, 15, 250, 50, 600), (4, 16, 160, 40, 400), 
    (4, 17, 155, 40, 400), (4, 18, 170, 40, 400), (4, 19, 190, 50, 500), (4, 20, 185, 50, 500),
    -- Sede 5: Sucursal Aeropuerto
    (5, 1, 140, 50, 500), (5, 2, 130, 50, 500), (5, 3, 135, 50, 500), (5, 4, 70, 20, 200), 
    (5, 5, 65, 20, 200), (5, 6, 80, 30, 300), (5, 7, 75, 30, 300), (5, 8, 250, 100, 1000), 
    (5, 9, 200, 100, 1000), (5, 10, 110, 40, 400), (5, 11, 105, 40, 400), (5, 12, 85, 30, 300), 
    (5, 13, 50, 15, 150), (5, 14, 45, 15, 150), (5, 15, 180, 50, 600), (5, 16, 120, 40, 400), 
    (5, 17, 115, 40, 400), (5, 18, 130, 40, 400), (5, 19, 150, 50, 500), (5, 20, 145, 50, 500);

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