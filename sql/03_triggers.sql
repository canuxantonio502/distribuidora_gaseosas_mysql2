USE delvalle_distribuidora;

DELIMITER //

-- DROP TRIGGER tr_actualizar_stock;
CREATE TRIGGER tr_actualizar_stock
AFTER INSERT ON detalle_pedidos FOR EACH ROW
BEGIN
	IF NEW.cantidad > 0 THEN 
        UPDATE stocks
		SET stock_actual = stock_actual - NEW.cantidad
		WHERE id_producto = id_producto;
    END IF;
END //


CREATE TRIGGER tr_auditar_cambio_precio
AFTER UPDATE ON productos FOR EACH ROW
BEGIN
    IF OLD.precio <> NEW.precio THEN
        INSERT INTO auditoria_precios (id_producto, precio_anterior, precio_nuevo, fecha_cambio)
        VALUES (OLD.id_producto, OLD.precio, NEW.precio, NOW());
    END IF;
END //

DELIMITER ;
