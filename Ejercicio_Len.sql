
declare @cantidadPacientes int
SET @cantidadPacientes = (SELECT TOP 1 IdPaciente FROM T_Paciente order by IdPaciente desc)
 PRINT concat ('idPaciente mas alto= ',@cantidadPacientes)
DECLARE @contador int = 0
declare @sumDomicilios varchar (2000)='l'

    WHILE (@contador <= @cantidadPacientes)
	 begin
	 SET @contador = @contador + 1
	   IF EXISTS (SELECT idpaciente from T_Paciente where IdPaciente=@contador)
	     begin
		  set @sumDomicilios = CONCAT(@sumDomicilios,(SELECT domicilio from T_Paciente where IdPaciente= @contador))
		  --print @sumDomicilios
		 end
	 end
 PRINT CONCAT ('Cantidad de caracteres de todos los domicilios de la tabla paciente =', LEN(@sumDomicilios))