SELECT *
FROM Transacciones
WHERE Nota LIKE '%ue%' AND Id > 4;

SELECT *
FROM Transacciones 
WHERE UsuarioId >= 3 AND Nota IS NOT NULL AND FechaTransaccion < '2025-11-01';

SELECT *
FROM Transacciones
WHERE Monto <= 300 OR Monto >= 500;


