
-- Con between sí se toman en cuenta lo extremo del rango
SELECT *
FROM Transacciones
WHERE FechaTransaccion BETWEEN '2025-10-15' AND '2025-10-31';

SELECT *
FROM Transacciones
WHERE Monto NOT BETWEEN 300 AND 700;