-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Erick
-- Create date: 25-11-05
-- Description:	Obtiene transacciones con su tipod de transaccion
	-- Parameters:  
	--   @UsuarioId INT (opcional) - Filtra por usuario.
	--   @TipoTransaccionId INT (opcional) - Filtra por tipo de transacción.
-- =============================================
CREATE PROCEDURE usp_Transacciones_SeleccionConTipoTransaccion 
	-- Se definen los parametros que se van a recibir y a usar
	@UsuarioId INT = NULL,
    @TipoTransaccionId INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Colocamos un alias a cada base de datos para mejor manejo
	SELECT 
		t.id AS TransaccionId,
		t.UsuarioId, 
		t.Monto, 
		t.Nota, 
		tt.Descripcion AS TipoTransaccion
	FROM Transacciones AS t
	INNER JOIN dbo.TiposTransaccion AS tt
	ON t.TipoTransaccionId = tt.Id
	WHERE -- Parametros opcionales porque tiene NULL por defecto
        (@UsuarioId IS NULL OR t.UsuarioId = @UsuarioId)
        AND (@TipoTransaccionId IS NULL OR t.TipoTransaccionId = @TipoTransaccionId);
END
GO

-- AL FINALIZAR DE DEFINIR EL PROCEDIMIENTO ALMACENADO EJECUTAMOS 'Alt+x'
