
-- in nos ayuda a seleccionar de un conjunto
SELECT *
FROM Transacciones
WHERE Id IN (1,4,5);

SELECT *
FROM Transacciones
WHERE TipoTransaccionId NOT IN (1,2);

-- Registros donde Nota tenga una subcadena:
-- 'f%' (empiezan con 'f')
-- '%f' (terminan con 'f')
-- '%f%' (contienen a 'f')
SELECT *
FROM Transacciones
WHERE Nota LIKE '%ue%'; 

-- Registros donde Nota no contiene una subcadena al inicio:
SELECT *
FROM Transacciones
WHERE Nota NOT LIKE 'P%';