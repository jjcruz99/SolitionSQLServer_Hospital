
--Funcion escalar 
--Recibe dos parametros
alter function concatenar(
                          @apellido varchar(50),
						  @nombre varchar (50)
                         )
returns varchar(100)--dato que va retornar la funcion
AS
BEGIN
    declare @resultado varchar(100)
	set @resultado = @apellido+' '+@nombre
	return @resultado
end

SELECT dbo.concatenar('Lopez','Roberto') ---llamado la funcion escalar


--------EJEMPLO 2--------------
------------------------*******************************************************
-------------------------------------------------------------------------------

CREATE function obtenerPais(
                 @idpaciente int --dato que se recibe
				)
Returns varchar(50) --la funcion retorna un varchar 50
AS
BEGIN
   DECLARE @pais varchar(50)---Varieble que retorna y en la cual se realiza la consulta

   SET @pais = (SELECT TPais.pais FROM T_Paciente TP
		   INNER JOIN T_pais TPais
		   ON Tpais.IdPais = TP.IdPais
		   WHERE IdPaciente = @idpaciente)  ---Se carga el valor de la consulta a la variable
   
   RETURN @pais---retorna la variable
end

SELECT DBO.obtenerPais (12) AS Pais --LLamar la funcion y enviar el dato en este caso el idpaciente = 4