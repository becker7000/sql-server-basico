
-- Contando los registros totales
SELECT COUNT(*) AS CantidadTransacciones
FROM Transacciones;

-- Cuenta los registros de Transacciones donde Nota
-- no es nula.
SELECT COUNT(Nota) AS CantidadNotaValida
FROM Transacciones;

-- Este Query sería equivalente al anterior:
SELECT COUNT(*) AS CantidadNotaValida
FROM Transacciones 
WHERE Nota IS NOT NULL;

-- Registros de Transacciones por UsuarioId
-- También se puede invertir el orden...
SELECT UsuarioId, COUNT(*) AS Transacciones
FROM Transacciones
WHERE TipoTransaccionId = 2
GROUP BY UsuarioId;

-- Agrupamos por UsuarioId, mostramos total y promedio de montos.
-- Limitamos los promedios a 2 cifras decimales (primero mostrar sin FORMAT)
SELECT UsuarioId, SUM(Monto) AS Total, FORMAT(AVG(Monto),'N2') AS Promedio
FROM Transacciones
GROUP BY UsuarioId;
