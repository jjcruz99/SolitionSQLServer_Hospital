
insert into T_pais (IdPais,pais)
  values ('COL','Colombia'),
          ('ECU','Ecuador'),
		  ('BOL','Bolivia'),
		  ('ARG','Argentina'),
		  ('MEX','Mexico'),
		  ('PAR','Paraguay'),
		  ('URU','Uruguay')

  exec sp_tables @table_owner= 'dbo'---Muestra todas las tablas
  EXEC sp_help 'DBO.T_Paciente'
  EXEC sp_columns T_paciente

  SELECT * FROM T_Medico
  SELECT NOMBRE FROM T_Paciente

		  ---COMPROBANDO PK 
		  SELECT * FROM T_TurnoEstado
		  INSERT INTO T_Turno (IdTurno,observacion)
		  VALUES (5,'ANULADO')

	EXEC sp_help 'DBO.T_TURNO'
	INSERT INTO T_Turno (FTurno,estado,observacion)
	  VALUES ('2023-03-15',0,'PACIENTE EN AYUNAS')
	SELECT * FROM T_Turno

	EXEC SP_HELP 'DBO.T_TURNOPACIENTE'
	SELECT * FROM T_Paciente
	INSERT INTO T_TurnoPaciente (IdTurno,IdPaciente,IdMedico)
	 VALUES (1,4,2)

	 select * from T_Turno
		 insert into T_Turno(FTurno,estado,observacion)
		   values ('2019-01-22',0,'Turno pendiente de aprobacion')
	 Select * from T_Paciente
	 select * from T_Medico

	 insert into T_Medico (Nombre)
	   values ('Jose')