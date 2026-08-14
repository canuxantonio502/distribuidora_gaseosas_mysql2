USE delvalle_distribuidora;

-- =====================================================================================================================
-- CONSULTAS
-- =====================================================================================================================

-- 1. Consultar los productos con stock por debajo del mínimo.
SELECT S.id_stock, P.nombre, S.stock_actual, S.stock_minimo 
	FROM productos P INNER JOIN stocks S ON S.id_producto = P.id_producto
	WHERE stock_actual < stock_minimo;
    
-- 2. Consultar los pedidos realizados entre dos fechas (BETWEEN).
SELECT * FROM pedidos
	WHERE fecha_pedido BETWEEN '2026-08-04' and '2026-08-06 23:59:59';

-- 3. Listar los productos más vendidos (con JOIN y GROUP BY).
SELECT P.id_producto, P.nombre AS nombre_producto, SUM(DP.cantidad) AS total_unidades_vendidas
	FROM productos P JOIN detalle_pedidos DP ON P.id_producto = DP.id_producto
	GROUP BY P.id_producto, P.nombre
	ORDER BY total_unidades_vendidas DESC
    LIMIT 5;

-- 4. Mostrar clientes y la cantidad de pedidos realizados.
SELECT P.id_cliente, CONCAT(C.nombre, ' ', C.apellido) cliente, COUNT(1) total_pedidos 
	FROM pedidos P INNER JOIN clientes C ON C.id_cliente = P.id_cliente
	GROUP BY P.id_cliente;

-- 5. Buscar clientes por nombre parcial usando LIKE.
SELECT id_cliente, concat(nombre, ' ', apellido) nombre, identificacion, direccion, telefono, correo
	FROM clientes 
	WHERE nombre LIKE '%cruz%' OR apellido LIKE '%cruz%';

-- 6. Consultar productos de ciertas categorías usando IN.
SELECT P.id_producto, P.nombre, P.precio 
	FROM productos P INNER JOIN categorias C ON P.id_categoria = C.id_categoria
    WHERE C.nombre IN('Jugos Naturales', 'Aguas Puras', 'Tés Fríos');

-- 7. Mostrar el cliente con mayor número de pedidos (subconsulta).
SELECT id_cliente, CONCAT(nombre, ' ', apellido)nombre, identificacion, direccion, telefono, correo
	FROM clientes
    WHERE id_cliente = (SELECT id_cliente FROM pedidos
	GROUP BY id_cliente
    ORDER BY COUNT(1) DESC
    LIMIT 1);
    
-- 8. Consultar pedidos y sus totales agrupados por sede.
SELECT S.id_sede, S.nombre_sede, SUM(total_sin_iva) total_ingresos 
	FROM pedidos P INNER JOIN sedes S ON S.id_sede = P.id_sede
	GROUP BY P.id_sede;



-- =====================================================================================================================
-- VISTAS
-- =====================================================================================================================

-- 1. vista_resumen_pedidos_por_sede: Muestra la cantidad total de pedidos y ventas por sede.
CREATE VIEW vw_resumen_pedidos_por_sede AS
SELECT S.nombre_sede, COUNT(1) total_pedidos, SUM(total_sin_iva) total_ventas
	FROM pedidos P INNER JOIN sedes S ON S.id_sede = P.id_sede
	GROUP BY S.nombre_sede;

-- 2. vista_productos_bajo_stock: Lista productos con stock_actual <= stock_minimo.
CREATE VIEW vw_productos_bajo_stock AS
SELECT P.id_producto, P.nombre, S.stock_actual, S.stock_minimo
	FROM productos P INNER JOIN stocks S ON P.id_producto = S.id_producto
	WHERE stock_actual <= stock_minimo;
    
-- 3. vista_clientes_activos: Muestra clientes con al menos un pedido registrado.
CREATE VIEW vw_clientes_activos AS
SELECT P.id_cliente, CONCAT(C.nombre, ' ', C.apellido) cliente, COUNT(1) total_pedidos 
	FROM pedidos P INNER JOIN clientes C ON C.id_cliente = P.id_cliente
	GROUP BY P.id_cliente, C.nombre, C.apellido;