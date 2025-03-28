
			--Obtener un listado de las iniciales de los pacientes, 
			--leyendo los campos nombre y apellido, utilizando la función LEFT y
			--el operador + para concatenar las iniciales y obtener el resultado.

	select * FROM T_Paciente
	SELECT LEFT (nombre,1),LEFT( Apellido,1 )from T_Paciente 
	SElect COUNT(nombre) from T_Paciente
	SElect top 1 IdPaciente from T_Paciente order by IdPaciente DESC
	SELECT LEFT(Nombre,1) AS INICIAL_Nombre FROM T_Paciente WHERE IdPaciente = 10
	select IdPaciente FROM T_Paciente WHERE IdPaciente = 2	

				declare @mayor_idpaciente int = 0
				SET @mayor_idpaciente =(SElect top 1 IdPaciente from T_Paciente order by IdPaciente DESC)--Obtener el idPaciente mas alto
				declare @contador int = 0
				declare @iniciales_nombre varchar(1000) = ''
				declare @iniciales_apellido varchar(1000) = ''
				declare @sumatoria varchar (1000) = ''
						
					--https://www.sqlshack.com/sql-server-print-and-sql-server-raiserror-statements/
					--PRINT 'Cantidad de pacientes = '+  CAST (@mayor_idpaciente AS varchar (10))
					--PRINT CONCAT ('Cantidad de pacientes : ',@mayor_idpaciente)

				While @contador < @mayor_idpaciente
				 BEGIN
				 SET @contador=@contador +1
				   IF EXISTS (select IdPaciente FROM T_Paciente WHERE IdPaciente = @contador)--Comprobar si existe ese id del paciente
				   begin
				    SET @iniciales_nombre = (SELECT LEFT(Nombre,1) FROM T_Paciente WHERE IdPaciente = @contador) 
					SET @iniciales_apellido= (SELECT LEFT(Apellido,1) FROM T_Paciente WHERE IdPaciente =@contador)
					PRINT CONCAT('Sumatorias de iniciales: ', @iniciales_nombre , @iniciales_apellido,' ')
				   end
				 END
			