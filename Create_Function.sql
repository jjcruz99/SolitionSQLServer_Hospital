
--crear la funcion
create function nombrefun (@dato_recivido INT)
RETURNS INT
AS
Begin
   SET @dato_recivido = @dato_recivido*5
   return @dato_recivido
end

SElect dbo.nombrefun (200)--llamar la funcion