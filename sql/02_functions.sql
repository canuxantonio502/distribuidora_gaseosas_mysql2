USE delvalle_distribuidora;

DELIMITER //

-- DROP FUNCTION IF EXISTS fn_calcular_total_con_iva;
CREATE FUNCTION fn_calcular_total_con_iva (id_pedido INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE v_total_sin_iva DECIMAL(10, 2);
    SELECT P.total_sin_iva INTO v_total_sin_iva FROM pedidos P WHERE P.id_pedido = id_pedido;

    RETURN v_total_sin_iva * 1.12;
END //


-- DROP FUNCTION fn_validar_stock;
CREATE FUNCTION fn_validar_stock(id_producto INT, cantidad INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	DECLARE v_stock_actual INT;
    SET v_stock_actual = 0;

    SELECT S.stock_actual INTO v_stock_actual FROM stocks S WHERE S.id_producto = id_producto;

    IF cantidad > v_stock_actual THEN
		RETURN 'El stock actual no cubre la cantidad demandada por el cliente';
	ELSE
		RETURN 'Stock disponible para el pedido.';
	END IF;
END //

DELIMITER ;

