/*
SELECT * FROM T_Turno
SELECT * FROM T_TurnoPaciente
select * from T_TurnoEstado
*/

--EXEC SP_DEL_Turno 6


ALTER PROC SP_DEL_Turno(
 @idTurno int
)---SP para actualizar los datos del turno*****IMPORTANTE UTILAZAR EL WHERE CON LA FUNCION UPDATE
as
SET NOCOUNT ON
 
  IF exists (SELECT IdTurno from T_Turno where IdTurno = @idTurno)
  begin
     DELETE FROM T_TurnoPaciente where IdTurno = @idTurno --SE borra de la tabla TurnoPaciente por la FK
	 DELETE FROM T_Turno where IdTurno = @idTurno    
  END
  ELSE
      SELECT 0 AS Resultado