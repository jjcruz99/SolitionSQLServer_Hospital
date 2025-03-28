
--SP para obtener las especialidades medicas

---exec SP_EspecialidadesMedicas

CREATE PROC SP_EspecialidadesMedicas --No lleva () por que no recibe parametros
AS 
SET NOCOUNT on

IF exists( SELECT * from T_MedicoEspecialidad)
  SELECT * from T_MedicoEspecialidad
 ELSE
  SELECT 0 as Resultado