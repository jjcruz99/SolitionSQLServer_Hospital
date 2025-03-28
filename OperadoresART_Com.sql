
Select * FROM T_Medico

Declare @num1 decimal(9,3)=20.3
Declare @num2 decimal(9,3)=30.2
Declare @r decimal(9,3)

SET @r = @num1 + @num2
PRINT @r

SET @r = @num1 - @num2
PRINT @r

SET @r = @num1 / @num2
PRINT @r

SET @r = @num1 * @num2
PRINT @r

SET @r = @num1 % @num2
PRINT @r

DECLARE @letra1 varchar(10) ='Hola '
DECLARE @letra2 varchar(10) ='Perro '
DECLARE @letras varchar(30) =''

SET @letras= @letra1 + @letra2 + 'Canchoso'
PRINT @letras
-->=
--=<

---------<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
--Tambien se puede comparar TEXTO
Declare @n1 float = 45.2
Declare @n2 float = 48.2
Declare @rs float = 0
  
  IF @n1 > @n2
    PRINT 'Verdadero'
  Else
    Print 'Falso'

	  IF @n1 <> @n2 -----Distinto
    PRINT 'Verdadero'
  Else
    Print 'Falso'

	  IF @letra1 > @letra2 -----Distinto
    PRINT 'Verdadero'
  Else
    Print 'Falso'
