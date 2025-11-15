
-- Ejecutando el procedimiento almacenado
-- Ctrl + shift + r -> para actualizar el intelliSense

-- EXEC sirve para ejecutar los SP
-- Forma simple
EXEC usp_Transacciones_SeleccionConTipoTransaccion;

-- Con parametro UsuarioId
EXEC usp_Transacciones_SeleccionConTipoTransaccion
	@UsuarioId = '003'; -- Funciona con y sin comillas

-- Con parametro TipoTransaccionId
EXEC usp_Transacciones_SeleccionConTipoTransaccion
	@TipoTransaccionId = 2;

-- Con ambos parametros UsuarioId y TipoTransaccionId
EXEC usp_Transacciones_SeleccionConTipoTransaccion
	@UsuarioId = '008',
	@TipoTransaccionId = 2;

-- Usando el nuevo parámetro @Fecha
EXEC usp_Transacciones_SeleccionConTipoTransaccion
	@Fecha = '2025-11-01';