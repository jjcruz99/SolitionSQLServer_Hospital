
   -- EXEC SP_TurnosPacientes 10 ----Consultar turno del paciente con idPaciente=9

Alter PROC SP_TurnosPacientes( --CREATE cuando se crea por primera vez y ALTER para Modificarlo
             @IdPaciente int
            )
			AS
SET NOCOUNT ON

--SELECT * FROM T_Turno
--SELECT * FROM T_TurnoPaciente
--SELECT * from T_Medico


	--Si despues del select no especificamos los campos que queremos ver solo dejamos(*) y se muestran todos los campos de las tablas 
	 SELECT P.IdPaciente,P.Nombre,P.Apellido,Tp.IdTurno,TP.IdMedico,M.Nombre,M.Apellido,ME.IdEspecialidad,ME.Descripcion FROM T_Paciente P
	 inner join T_TurnoPaciente TP
	 ON TP.IdPaciente = P.IdPaciente
	 INNER join T_Turno T
	 ON T.IdTurno = TP.IdTurno
	 INNER JOIN T_MedicoEspecialidad ME
	 ON ME.IdMedico = TP.IdMedico
	 INNER JOIN T_Medico M
	 on M.IdMedico = ME.IdMedico
	 where P.IdPaciente = @IdPaciente


