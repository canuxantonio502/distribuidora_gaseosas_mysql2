USE delvalle_distribuidora;
DROP FUNCtiON IF EXISTS calcular_promedio_pedidos_cliente;

DELIMITER //
CREATE FUNCTION calcular_promedio_pedidos_cliente (p_id_cliente INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE promedio DECIMAL(10,2);
    
    SELECT COALESCE(AVG(total_sin_iva), 0) INTO promedio
    FROM pedidos
    WHERE pedidos.id_cliente = p_id_cliente;
    
    RETURN promedio;
END //
DELIMITER ;


-- SELECT calcular_promedio_pedidos_cliente(1);