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
SELECT id_cliente, COUNT(1) total_pedidos FROM pedidos
	GROUP BY id_cliente;

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
