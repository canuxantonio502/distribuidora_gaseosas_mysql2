USE delvalle_distribuidora;

DELIMITER //

CREATE TRIGGER tr_actualizar_stock
AFTER INSERT ON detalle_pedidos FOR EACH ROW
BEGIN
	IF NEW.cantidad > 0 THEN 
        UPDATE inventario
		SET stock_actual = stock_actual - NEW.cantidad
		WHERE id_producto = id_producto;
    END IF;
END //

DELIMITER ;
