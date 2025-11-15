SELECT *
FROM Transacciones
WHERE FechaTransaccion >= '2025-10-01' AND FechaTransaccion <= '2025-10-31';

SELECT *
FROM Transacciones
WHERE YEAR(FechaTransaccion) =	2025;

SELECT *
FROM Transacciones
WHERE MONTH(FechaTransaccion) = 11;

SELECT *
FROM Transacciones
WHERE DAY(FechaTransaccion) = 01;