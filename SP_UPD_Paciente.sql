
--SELECT * FROM T_Paciente

--EXEC SP_UPD_Paciente 19,'1041025425'

CREATE PROC SP_UPD_Paciente( --SP para actualizar DNI de los pacientes
   @IdPaciente int,
   @DNI varchar(20)
  )
AS 
SET NOCOUNT ON
 IF EXISTS (SELECT IdPaciente FROM T_Paciente where IdPaciente = @IdPaciente)
   begin  
      UPDATE T_Paciente SET DNI = @DNI where IdPaciente = @IdPaciente
   end
  ELSE
  SELECT 0 AS Resultado