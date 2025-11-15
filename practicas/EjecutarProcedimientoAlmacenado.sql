
-- Para ejecutar esto dimos click derecho sobre el 
-- 'procedimiento almacenado' y luego 'ejecutar procedimiento almacenado'

USE [ManejoPresupuesto]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[usp_Transacciones_SeleccionConTipoTransaccion]

SELECT	'Return Value' = @return_value

GO
