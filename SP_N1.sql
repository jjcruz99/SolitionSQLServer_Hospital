----Stored procedure procedimiento almacenado : es un conjunto de instruuciones concretas 
 CREATE PROC SP_N1 (
           @idpaciente int --Creo varaible de entrada
 )--recibir parametros de entrada
 AS 
 SELECT* FROM T_Paciente where IdPaciente = @idpaciente

 GO ---otra instruccion 

 