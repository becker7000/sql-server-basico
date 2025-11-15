
-- Ctrl + Shift + r -> para refrescar el IntelliSense
-- Tener cuidado de ejecutarlo una sola vez
-- Porque va a insertar una transacción

-- Primero con 'Nota'
EXEC usp_Transacciones_Insertar
	@UsuarioId = 007,
	@FechaTransaccion = '2025-11-03',
	@Monto = 895.00,
	@TipoTransaccionId = 1,
	@Nota = 'Café';

-- Después sin 'Nota'
EXEC usp_Transacciones_Insertar
	@UsuarioId = 004,
	@FechaTransaccion = '2025-11-02',
	@Monto = 152.00,
	@TipoTransaccionId = 2;