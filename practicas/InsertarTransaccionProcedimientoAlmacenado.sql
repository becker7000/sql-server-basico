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
-- Create date: 2025-11-05
-- Description:	Insertador de transacciones
	-- Parámetros:
		-- @UsuarioId NCHAR(50) - Inserta el Id del usuario
		-- @FechaTransaccion DATETIME - Inserta la fecha de la transacción
		-- @Monto DECIMAL(18,2) - Inserta el monto de la transacción
		-- @TipoTransaccionId INT - Inserta el tipo de transacción (ingreso o egreso)
		-- @Nota NCHAR(400) = NULL (Opcional) Valor opcional - Inserta una nota
-- =============================================
CREATE PROCEDURE usp_Transacciones_Insertar
	@UsuarioId NCHAR(50),
	@FechaTransaccion DATETIME,
	@Monto DECIMAL(18,2),
	@TipoTransaccionId INT,
	@Nota NCHAR(400) = NULL -- Valor opcional
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insertamos los valores usando los parámetros:
	INSERT INTO dbo.Transacciones (UsuarioId,FechaTransaccion,Monto,TipoTransaccionId,Nota)
	VALUES (@UsuarioId, @FechaTransaccion, @Monto, @TipoTransaccionId,@Nota);
	-- Al final ejecutamos 'Alt+x'
    
END
GO
