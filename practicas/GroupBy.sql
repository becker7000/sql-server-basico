
-- Usamos alt + x para ejecutar un query
-- No podemos agregar FechaTransaccion a los campos porque son muchas...
SELECT SUM(Monto) AS Suma,UsuarioId
FROM Transacciones
GROUP BY UsuarioId;

-- También podemos agrupar por fecha:
SELECT SUM(Monto) AS Suma, FechaTransaccion
FROM Transacciones
GROUP BY FechaTransaccion;

-- También podemos agrupar por mes y así sucesivamente...
SELECT AVG(Monto) AS Promedio, MONTH(FechaTransaccion) AS Mes
FROM Transacciones
WHERE TipoTransaccionId = 1
GROUP BY (FechaTransaccion);

-- Agrupando por tipo de transacción
SELECT SUM(Monto) AS Total, TipoTransaccionId
FROM Transacciones
GROUP BY TipoTransaccionId;
