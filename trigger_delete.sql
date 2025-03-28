ALTER TRIGGER Pacienteseliminados ON T_Paciente
for delete
AS

IF EXISTS (SELECT idpaciente FROM T_pacienteLog WHERE idpaciente = (SELECT idpaciente FROM deleted))
	UPDATE T_PacienteLog SET fechabaja = getdate()
	     where idpaciente = (SELECT idpaciente FROM deleted)
else
     INSERT into T_PacienteLOG (idpaciente,idpais,fechabaja)
	    SELECT idpaciente , idpais, GETDATE() FROM deleted

--select * from T_pacientelog
--select * from T_Paciente

--DELETE FROM T_Paciente where IdPaciente = 15