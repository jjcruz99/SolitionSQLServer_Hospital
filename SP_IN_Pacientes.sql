
--Select * from T_Paciente


ALTER PROC SP_IN_Pacientes( ----DESpues de crear el SP camabiar CREATE por ALTER
                            @DNI VARCHAR(20),
							@nombre varchar(50),
							@apellido varchar(59),
							@fnacimiento varchar(8),--Formato aaaammdd
							@domicilio varchar(30),
							@idpais char(3),
							@telefono varchar(30)='',
							@email varchar(30),
							@observacion varchar(1000)=''--para evitar errores se inicia la variable
							)
AS
SET NOCOUNT ON

declare @a bigint = 0
while @a <= 1500000
set @a = @a +1

IF NOT exists (SELECT * from T_Paciente where DNI = @dni)
 BEGIN
  INSERT INTO T_Paciente (DNI,Nombre,Apellido,FNacimiento,Domicilio,IdPais,Telefono,Email,Observacion)---Igual cantidad de campos
  values(@DNI,@nombre,@apellido,@fnacimiento,@domicilio,@idpais,@telefono,@email,@observacion)
  PRINT 'El paciente se agrego Exitosamente'
  Return
 END
ELSE
 Begin
 PRINT 'El paciente ya existe, verifique su DNI'
 END