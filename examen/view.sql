USE delvalle_distribuidora;

DROP VIEW IF EXISTS vista_resumenes_sedes;

CREATE VIEW vista_resumenes_sedes AS
SELECT S.nombre_sede, COUNT(1) total_pedidos, SUM(P.total_sin_iva) valor_total, AVG(P.total_sin_iva) promedio_pp
    FROM sedes S INNER JOIN pedidos P ON P.id_sede = S.id_sede
    GROUP BY S.nombre_sede;