--SELect * from T_Medico
--select * from T_Especialidad
--SElect * from T_MedicoEspecialidad

--INSERT  into T_MedicoEspecialidad (IdMedico,IdEspecialidad,Descripcion)
--        values (1,1,'1 año de experiencia'),
--		       (2,3,'1 año de experiencia'),
--			   (3,7,'1 año de experiencia'),
--			   (4,5,'1 año de experiencia'),
--			   (5,5,'1 año de experiencia')

ALTER PROC SP_IN_Medicos (
                            @nombre varchar(30),
							@apellido varchar(30),
							@idespecialidad int,
							@descripcion varchar(50)
                          )
 AS
 SET NOCOUNT ON
 IF NOT EXISTS(SELECT TOP 1 IdMedico from T_Medico where Nombre = @nombre and Apellido = @apellido)
 BEGIN 
 INSERT INTO T_Medico (Nombre,Apellido)
        Values (@nombre,@apellido)

	Declare @auxIdMedico int
	SET @auxIdMedico = @@IDENTITY

 INSERT INTO T_MedicoEspecialidad (IdMedico,IdEspecialidad,Descripcion)
        values (@auxIdMedico,@idespecialidad,@descripcion)
 PRint 'Medico agregado exitosamenete'
 END

   ELSE
   BEGIN
   Print 'Medico ya existe'
   end