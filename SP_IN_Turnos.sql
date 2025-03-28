--select * from T_Turno
--select * from T_TurnoEstado
--select * from T_TurnoPaciente

ALTER PROC SP_IN_Turnos(--Datos a recibir
                    @FechaHora char(14),
					@idpaciente int,
					@idmedico int,
					@observacion varchar (1000)=''
                      )
AS

SET NOCOUNT ON--Evita que cuente los resgistros alterados 

IF NOT EXISTS (SELECT TOP 1 IdTurno FROM T_Turno WHERE FTurno = @FechaHora)--Cuando encuentre la primera fecha igual 
 BEGIN

  INSERT INTO T_Turno(FTurno,estado,observacion)
  Values (@FechaHora,0,@observacion)

  --Seleccionar el ultimo turno ingresado en la tabla Turno
  declare @auxIdturno INT
  set @auxIdturno = @@IDENTITY --Nos obtiene el ultimo valor insertado
  ---------------------
  INSERT INTO T_TurnoPaciente (IdTurno,IdPaciente,IdMedico)
   VALUES(@auxIdturno,@idpaciente,@idmedico)

   Print 'Turno Generado exitosamente'
 END
ELSE
 BEGIN
 PRINT 'Turno ya existe'
 END