USe delvalle_distribuidora;

SELECT P.nombre producto, C.nombre categoria, COALESCE(S.stock_general, 0) stock
	FROM productos P INNER JOIN categorias C ON P.id_categoria = C.id_categoria
	INNER JOIN (
		SELECT id_producto, SUM(stock_actual) AS stock_general
		FROM stocks
		GROUP BY id_producto
		) S 
    ON P.id_producto = S.id_producto
	WHERE P.precio > (
		SELECT AVG(precio) 
		FROM productos
);
