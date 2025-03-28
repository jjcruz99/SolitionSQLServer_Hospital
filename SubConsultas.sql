
SELECT apellido,Nombre,IdPais,observacion, 
     (SELECT TablaPais.pais from T_pais TablaPais where TablaPais.IdPais = TablaPaciente.IdPais) AliasSUBConsulta
FROM T_Paciente TablaPaciente where IdPaciente = 7

SElect * from T_pais