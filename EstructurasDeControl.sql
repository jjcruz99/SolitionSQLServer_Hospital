
Select * from T_Paciente

----------------IF ELSE--------------------------------------------

Declare @idpaciente int
SET @idpaciente = 7
Declare @id int
SET @id =20

  IF @id = 1
   BEGIN----Sin en el Begin solo ejecuta la primera linea despues del IF si se cumple la condicion
     SELECT * from T_Paciente where IdPaciente=@idpaciente 
	 print '@id' 
	 print @id
   END
  ELSE
   BEGIN
    PRINT 'No se cumple la condicion'
   END

   -------------------EXISTS-----------------------------------

   IF EXISTS (SELECT * from T_Paciente where IdPaciente=2)
    print 'Existe'
   ELSE
   Print 'No existe'

   Declare @existe bit
   IF  (EXISTS(SELECT * from T_Paciente where IdPaciente=2))
    print 'Existe'
   ELSE
   Print 'No existe'
   
   ----------WHILE------------------------
   declare @contador int =0

	   while @contador <= 10
	   begin
		Print @contador
		set @contador = @contador +1
		end 

	----CASE------------------

	 declare @valor int
	 declare @resultado char(10)=''
	 set @valor = 30

	 set @resultado = ( CASE
							WHEN @valor = 10 THEN 'ROJO'
							when @valor = 20 then 'AZUL'
							when @valor = 30  then 'VERDE'
						end)
	 PRINT @resultado

		 --------------Usos en el select

		 SELECT*,(CASE when estado=0 then 'ROJO'
				   when estado=1 then 'AZUL'
				   when estado=2 then 'VERDE'
				   ELSE 'GRIS'---Si no se ejecuta ninguno de los anteriores
				   end) as ColorTurno from T_Turno

	--------RETURN BREAK------------------
declare @contador2 int =0

	   while @contador2 <= 10
	   begin
		Print @contador2
		set @contador2 = @contador2 +1
		  RETURN -----Termina la ejecucion
		 
		end 
		 print 'HOLA'

       Declare @contador3 int = 0
	   while @contador3 <= 10
	   begin
		Print @contador3
		set @contador3 = @contador3 +1
		  BREAK -----Interrumpe un while loop
		 
		end 
		 print 'Termina el ciclo pero continua ejecutandose'

---<<<<<<<TRY CATCH>>>>>>>>>>>>>>>>>>Permite manejo de errores en tiempo de ejecucion
declare @entero int
 BEGIN TRY
 SET @entero = 'HOLA PERRO'
 END TRY

 BEGIN CATCH
 PRINT 'No es posible almacenar texto en una variable tipo INT'
 END CATCH