USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[SP_N1]    Script Date: 24/06/2024 8:12:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----Stored procedure procedimiento almacenado : es un conjunto de instruuciones concretas 
 ALTER PROC [dbo].[SP_N1] (
           @idpaciente int --Creo varaible de entrada
 )--recibir parametros de entrada
 AS 
 DECLARE @ordenamiento char(1)
 --SET @ordenamiento = 'A'
 DECLARE @valorOrdenamiento CHAR(1)
 SET @valorOrdenamiento = ISNULL (@ordenamiento,'A') --Si es nulo imprime 'A'
 PRINT @valorOrdenamiento

 SELECT* FROM T_Paciente where IdPaciente = @idpaciente

