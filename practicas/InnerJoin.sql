SELECT Transacciones.id, UsuarioId, Monto, Nota, TiposTransaccion.Descripcion
FROM Transacciones
INNER JOIN TiposTransaccion
ON Transacciones.TipoTransaccionId = TiposTransaccion.Id;