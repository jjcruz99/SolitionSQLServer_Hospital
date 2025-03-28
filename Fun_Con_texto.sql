
declare @var1 varchar(30) = 'Ramiro'


print LEFT(@var1,2)--(@varaieble,#caracteres a la izquierda) = Ra
print RIGHT(@var1,2)--(@varaieble,#caracteres a la derecha) = ro
print LEFT(@var1,1) + RIgHT(@var1,1)

declare @n int = 0
set @n = (select count (idPaciente) from T_Paciente)
print @n

Print LEN(@var1)--Obteniene la cantidad de caracteres de una cadena
PRINT LEFT(@var1,len(@var1)-1)

---<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>
PRINT LOWER('HOLA PERRO')--convierte toda la cadena de caractyeres en minusculas 
PRINT upper('hola perro')--convierte toda la cadena de caractyeres en mayusculas

DECLARE @nombre varchar(100) = 'shaiLO'
PRINT UPPER (LEFT(@nombre,1)) + LOWER (RIGHT(@nombre, LEN(@nombre)-1))--Ordenar un nombre 

--<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>
declare @variable1 varchar (100) = '          ShaYlo    '
declare @variable2 varchar (200)= 'Cru+   '
print @variable1
SELECT REPLACE (@variable1,'Y','i') as co--remplaza un valor por otro 
-->>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<
SELECT LTRIM( (@variable1))--qUITA LOS ESPACIOS A LA IZQUIERDA
SELECT RTRIM( @variable2) AS RESULT--qUITA LOS ESPACIOS A LA DERECHA
SELECT TRIM (@variable1) AS RESULT -- la función TRIM quita el carácter de espacio de los extremos de inicio y 
---------------------------------------final de la cadena. Este comportamiento equivale a LTRIM(RTRIM(@string))
SELECT CONCAT (LTRIM(RTRIM(@variable1)) ,' ',LTRIM(RTRIM(@variable2)))
--https://learn.microsoft.com/es-es/sql/t-sql/functions/trim-transact-sql?view=sql-server-ver16


--<<<<<<<<<<<<<<>>>>>>>>>>>
SELECT GETDATE()--fecha y hora del sistema donde esta instalado SQL
SELECT GETUTCDATE()--fecha y hora meridiano de grin


--<<<<<<<<<>>>>>>>>>>>>>>>>>>
SELECT DATEDIFF(year,getdate(),'20170920')--obtiene la diferencia entre dos fechas 
SELECT DATEDIFF(MONTH,getdate(),'20170920')--obtiene la diferencia entre dos fechas
SELECT DATEDIFF(year,'20170920',getdate())--obtiene la diferencia entre dos fechas
--->>>>>>>>>>>>>>>>>>>>>>>>>

SELECT DATEPART (MONTH,getdate())--obtener mes actual o dia,mes 
SELECT DATEPART (DW,getdate())--
SELECT DATEPART (SS,getdate())--

-->>>>>>>>><
--Evaluar el formato de una fecha 1 = fecha correcta 

PRINT ISDATE(getdate())
PRINT isdate('12072024')
PRINT ISDATE ('20240125')

--<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>
------CONVERSION DE DATOS 
DECLARE @precio money = 500.40
SELECT CAST (@precio as INT) AS conversionCAST
SELECT cast(idPaciente as money) from T_Paciente AS AgregarDecimales


SELECT CONVERT (INT,@precio)
PRINT CONVERT (INT,@precio)

		DECLARE @fecha datetime
		set @fecha = getdate()
		PRINT @Fecha

		PRINT CONVERT(char(8),@fecha,112)--112 es un formato de fecha reservada en SQL
		PRINT CONVERT(char(12),@fecha,104)--112 es un formato de fecha reservada en SQL
		PRINT CONVERT(char(11),@fecha,111)--112 es un formato de fecha reservada en SQL









