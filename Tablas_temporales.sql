

----Crear tabla temporal en memoria solo este activa mientras se ejecuta el script 

DECLARE @mitabla TABLE (id int IDENTITY(1,1),Pais varchar(50))

INSERT INTO @mitabla VALUES ('Mexico')
INSERT INTO @mitabla VALUES ('Peru')
INSERT INTO @mitabla VALUES ('Argentina')
INSERT INTO @mitabla VALUES ('Ecuador')

SELECT * FROM @mitabla

----Taabla temporal fisica va a existir hasta que reiniciamos el motor de base de datos

CREATE TABLE #mitabla (id INT IDENTITY(1,1),nombre varchar (50),apellido varchar(50))

insert into #mitabla Values ('Alejandro','Sanchez')
insert into #mitabla Values ('Camilo','Lopez')
insert into #mitabla Values ('Andrea','Pirlo')

SELECT * FROM #mitabla
DROP Table #mitabla ---Borrar la tabla se recomieda para optimizar la memoria


---*******************************
--************************
	----Uso de tablas de memoria temporales en consultas 
	--el uso de muchos inner join aumenta el tiempo de la consulta
	select * from T_TurnoPaciente
	DECLARE @Turnos TABLE(id int IDENTITY(1,1),idTurno int,idpaciente int)---CREAR LA TABLA TEMPOPRAL
		declare @idpaciente int 
		SET @idpaciente  = 4 ---Paciente al cual vamos a consultar todos los turno

	INSERT INTO @Turnos (idTurno,idpaciente)--insertar los valores a la tabla temporal desde la consulta
							SELECT TP.IdTurno,P.IdPaciente FROM T_Paciente P
							inner join T_TurnoPaciente TP
							on TP.IdPaciente = p.IdPaciente--SE relacionan la tabla paciente y turno paciente para ver los pacientes con turnos

	---Recorrer la tabla obteniendo la cantidad de Id con un while
	DECLARE @i int,@id_total int
	set @i = 1
	set  @id_total =(select count(*) from @Turnos)--obtiene la cantidad de campos de la tabla temporal turnos
	WHILE @i <= @id_total---Recorrer la tabla @turnos obteniendo la cantidad de Id con un while
	  begin 
	        IF (Select idpaciente from @Turnos where id = @i ) <> @idpaciente--cuando id del paciente sea diferente de 10 ingresa al if y borra el registro
			DELETE FROM @Turnos where id = @i
	        set @i += 1
	  end

			  SElECT * FROM T_Paciente P
				INNER JOIN @Turnos T
				on T.idpaciente = P.IdPaciente --

				select * from @Turnos--visualizamos la tabla temporal con los nuevos datos.
	

