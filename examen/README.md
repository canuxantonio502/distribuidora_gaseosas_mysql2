# Realizacion de Examn MySQL II

## Tareas reaalizadas:

**Crear una función MySQL llamada calcular_promedio_pedidos_cliente que:**
Reciba como parámetro el ID de un cliente.
Retorne el promedio del total (sin IVA) de todos los pedidos realizados por ese cliente.
Si el cliente no tiene pedidos, retorne 0.


**Crear una vista llamada vista_resumen_sedes que:**
Muestre por cada sede:
Nombre de la sede
Cantidad total de pedidos despachados
Valor total vendido (sin IVA)
Promedio de valor por pedido
La vista debe usar JOIN entre pedidos y sedes, y agrupar correctamente los resultados.


**Realizar una consulta con subconsulta que:**
Muestre el nombre del producto, categoría y stock
Solo incluya los productos cuyo precio sea mayor al promedio general de precios de todos los productos.

**Crear un trigger llamado auditar_cambio_precio que:**
Se ejecute después de un UPDATE en la tabla de productos.
Registre en una tabla auditoria_precios los campos:
id_producto, precio_anterior, precio_nuevo, fecha_modificacion.
Solo se debe registrar si el precio realmente cambió.

README breve que explique cómo ejecutar cada script y cómo verificar los resultados.
