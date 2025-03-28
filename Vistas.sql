
Create VIEW VW_PacientesyTurnos AS --crea una vista de una consulta y se actualiza en cada consulta

  SELECT P.DNI, P.Nombre,P.Apellido,T.IdTurno,M.Nombre AS Nombre_Medico,T.estado FROM T_Paciente P
       inner JOIN T_TurnoPaciente TP
	   on TP.IdPaciente = P.IdPaciente
	   inner JOIN T_Turno T
	   on T.IdTurno = TP.IdTurno
	   inner JOIN T_Medico M
	   ON M.IdMedico = TP.IdMedico
	   WHERE ISNULL(T.estado,0) = 0

--------probar VISTA
--SELECT * FROM VW_PacientesyTurnos

   --vista creada con en el diseñador
--Select * from VW_Prueba

--nos permite ahorrar la consulta 