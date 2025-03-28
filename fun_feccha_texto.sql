
Alter function  fun_fecha_texto(@fecha datetime)

returns varchar(60)
AS
BEGIN

Declare @dia  varchar(20)
declare @mes varchar(20)
declare @fecha_texto varchar(60)

set @dia = (CASE WHEN DATEPART(dw,@fecha) = 1  THEN 'Domingo ' + CONVERT(char(2), DATEPART(dd,@fecha))
			     WHEN DATEPART(dw,@fecha) = 2  THEN 'Lunes ' + CONVERT(char(2), DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 3  THEN 'Martes ' + CONVERT(char(2), DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 4  THEN 'Miercoles ' + CONVERT(char(2), DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 5  THEN 'Jueves ' + CONVERT(char(2), DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 6  THEN 'Viernes ' + CONVERT(char(2), DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 7  THEN 'Sabado ' + CONVERT(char(2), DATEPART(dd,@fecha)) 
			end)

set @mes = ( CASE WHEN DATEPART(mm,@fecha) = 1 THEN 'Enero'
                  WHEN DATEPART(mm,@fecha) = 2 THEN 'Febrero'
				  WHEN DATEPART(mm,@fecha) = 3 THEN 'Marzo'
				  WHEN DATEPART(mm,@fecha) = 4 THEN 'Abril'
				  WHEN DATEPART(mm,@fecha) = 5 THEN 'Mayo'
				  WHEN DATEPART(mm,@fecha) = 6 THEN 'Junio'
				  WHEN DATEPART(mm,@fecha) = 7 THEN 'Julio'
				  WHEN DATEPART(mm,@fecha) = 8 THEN 'Agosto'
				  WHEN DATEPART(mm,@fecha) = 9 THEN 'Septiembre'
				  WHEN DATEPART(mm,@fecha) = 10 THEN 'Octubre'
				  WHEN DATEPART(mm,@fecha) = 11 THEN 'Noviembre'
				  WHEN DATEPART(mm,@fecha) = 12 THEN 'Diciembre'
            end)

set @fecha_texto = @dia + ' de ' + @mes
return @fecha_texto
END

--probar funcion
print dbo.fun_fecha_texto('20190501')