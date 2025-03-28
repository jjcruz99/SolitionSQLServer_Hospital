--Trigger se ejecuta cuando se realiza un evento como un insert un update delete

CREATE TRIGGER Pacientes_Creado ON T_Paciente
AFTER INSERT
AS

--evaluar si el paciente ultimo paciente que se creo es del pais mexico
IF(SELECT idpais FROM inserted ) = 'MEX'
       Insert INTO T_PacienteLog (idPaciente,idpais,fechaAlta)
	       SELECT i.idpaciente, i.idpais, getdate () FROM inserted i


--SELECT * FROM T_PacienteLog   
--alter table T_pacientelog ADD fechabaja Datetime --agregar la columna fecha de modificacion