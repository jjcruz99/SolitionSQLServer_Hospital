
/*
SELECT * FROM T_Turno
SELECT * FROM T_TurnoPaciente
select * from T_TurnoEstado
*/

--EXEC SP_UDP_Turno 22,4,'Examnes exitosos'


ALTER PROC SP_UDP_Turno(
 @idTurno int,
 @estado tinyint,
 @observacion varchar(1000)
)---SP para actualizar los datos del turno*****IMPORTANTE UTILAZAR EL WHERE CON LA FUNCION UPDATE
as
SET NOCOUNT ON
 
  IF exists (SELECT IdTurno from T_Turno where IdTurno = @idTurno)
     UPDATE T_Turno SET estado = @estado,observacion = observacion where IdTurno = @idTurno
	                   
  ELSE
      SELECT 0 AS Resultado