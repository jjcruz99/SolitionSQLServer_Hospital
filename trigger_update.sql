
CREATE TRIGGER PacientesModificados ON T_Paciente
AFTER UPDATE
AS

IF EXISTS (SELECT idpaciente FROM T_pacienteLog WHERE idpaciente = (SELECT idpaciente FROM INSERTED))
	UPDATE T_PacienteLog SET fechaModificaCION = getdate()
	     where idpaciente = (SELECT idpaciente FROM inserted)
else
     INSERT into  (idpaciente,idpais,fechamodificacion)
	    SELECT idpaciente , idpais, GETDATE() FROM inserted

		---Ver los datos en la tabla T_PacienteLOG
--select * from T_pacientelog 
--select * from T_Paciente