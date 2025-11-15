-- Seleccionamos estos campos de una transacción especifica
SELECT Id, UsuarioId, Monto, Nota
FROM Transacciones
WHERE Id = 4;

-- Seleccionamos estos campos de todas 
-- las transacciones que no tengan id=4
-- También aplica usar el operador '!='
SELECT Id, UsuarioId, Monto, Nota
FROM Transacciones
WHERE Id <> 4;

-- Seleccionando transacciones donde el 
-- monto es mayor a una cantidad.
SELECT Id, UsuarioId, Monto, Nota
FROM Transacciones
WHERE Monto > 400.00;

-- Filtrando los nulos
SELECT Id, UsuarioId, Monto, Nota
FROM Transacciones
WHERE Nota is not null; -- WHERE Nota is null; si queremos los nulos