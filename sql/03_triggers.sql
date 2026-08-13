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


-- Pruebas -----------------------------------------------------------------------
CREATE TABLE auditoria_precios(
	id_auditoria INT PRIMARY KEY AUTO_INCREMENT,
    fecha_auditoria DATETIME,
    precio_anterior DECIMAL(10, 2),
    precio_nuevo DECIMAL(10, 2)
)ENGINE=InnoDB;

CREATE TRIGGER tr_auditar_cambio_precio
AFTER UPDATE ON productos FOR EACH ROW
BEGIN
	INSERT INTO auditoria_precios(fecha_auditoria, precio_anterior, precio_nuevo) 
		VALUES (now, )
END //

DELIMITER ;
