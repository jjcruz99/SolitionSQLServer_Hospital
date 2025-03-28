
-- exec SP_HistoriaPacientes 8

ALTER proc SP_Historiapacientes(
   @idPaciente int
)
AS
SET NOCOUNT ON--para que no devuelva el conteo de registros en la consulta

--SELECT * from T_Historia_Clinica
--SELECT * FROM T_HistoriaPaciente
--select * from T_Paciente
--Select * from T_Medico

 IF EXISTS ( SELECT * FROM T_Paciente P1 INNER JOIN T_HistoriaPaciente HP1 ON P1.IdPaciente = HP1.IdPaciente where P1.IdPaciente = @idPaciente)   
		Select * from T_Paciente P
		INNER JOIN T_HistoriaPaciente HP
		ON HP.IdPaciente = P.IdPaciente
		INNER JOIN T_Historia_Clinica HC
		ON HC.IdHistoria = HP.IdHistoria
		INNER JOIN T_MedicoEspecialidad ME
		ON ME.IdMedico = HP.IdMedico
		INNER JOIN T_Medico M
		ON M.IdMedico = ME.IdMedico
		WHERE P.IdPaciente = @idPaciente

ELSE
 --PRINT 'No esxiste el Historias clinicas para el paciente'
 SELECT 0 as Resultado

  --Insert into T_Historia_Clinica(FHistoria,observacion)
  -- values ('2022-10-24','Paceinte sano'),
  --         ('2023-09-15','Paceinte Diabetico'),
		--   ('2024-08-10','Paceinte Hiperintenso')

  --INSERT INTO T_HistoriaPaciente (idHistoria,IdPaciente,IdMedico)
  --        values (1,1,1),
		--         (2,8,3),
		--		 (3,5,8),
		--		 (4,10,4)

