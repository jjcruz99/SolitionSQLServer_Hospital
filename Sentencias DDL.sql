
CREATE TABLE T_pruebas(
   Columna1 int primary key identity (0,1),
   Columna2 varchar(30) NOT NULL,
   Columna3 smallint 
)

SELECT * FROM T_pruebas
SP_HELP T_pruebas
sp_heLP T_Concepto

-----Sentencias ALTER---

ALTER TABLE T_pruebas ADD Columna_ADD smallint--Agregar columna a una tabla
ALTER table T_pruebas Alter COLUMN Columna_ADD BIT --cambiar el tipo de dato de una columna
ALTER table T_Concepto ADD Dato_int int
ALTER TABLE T_pruebas DROP COLUMN Columna_ADD --Elimar uina columna de una tabla

---Crear FOREIGN KEY 
--ALTER TABLE "Tabla don queda la FK"
--ADD FOREIGN KEY ("Columna don queda la FK") REFERENCES Tabla donde esta la PK(Columna_PK)
ALTER TABLE T_Concepto
ADD FOREIGN KEY (Dato_int) REFERENCES T_pruebas(Columna1)

			--ejercicio
			--Deberás crear el Tipo de Dato Especialidad INT
			--Una vez creado el tipo Especialidad, deberás asignarlo en el campo idEspecialidad de las tablas Especialidad y 
			--MedicoEspecialidad.
create type EspecialidadInt from int not null
SP_HELP T_Especialidad
SP_HELP T_MedicoEspecialidad
Alter table T_Especialidad alter column idEspecialidad EspecialidadInt
ALTER table T_MedicoEspecialidad ALTER COLUMN idEspecialidad EspecialidadInt

---Sentencia DROP = eleminar
create table tabla99(campo1 int,campo varchar(30))
DROP table tabla99
--DROP database name..

---sentencia truncate eleimana los resgistros por completo de una tabla
SELECT * from tabla99
TRuncate table tabla99


