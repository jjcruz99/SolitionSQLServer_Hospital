
--FUNCION TIPO Tabla
CREATE FUNCTION lista_paises()
returns @paises TABLE(idPais char(3),pais varchar (50))
AS
BEGIN
  INSERT INTO @paises values('ESP','España')
  INSERT INTO @paises values('MEX','Mexico')
  INSERT INTO @paises values('COL','Colombia')
  INSERT INTO @paises values('URU','Uruguay')

  RETURN

END
SELECT * from dbo.lista_paises() ---llamar la funcuion en si es una tabla informativa