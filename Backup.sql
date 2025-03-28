
declare @fecha char(12)
declare @path varchar(100)
declare @name varchar(20)

--print convert(char(8),getdate(),112)--formato 112 fecha yyyy/mm/dd

set @fecha = convert(char(8),getdate(),112) + REPLACE( CONVERT(char(5),GETDATE(),108),':','' )
--concatenar la hora char 5 para solo tomar los primeros 5 caracteres y se remmplza los : por nada 
--print @fecha
set @path = 'E:\Programacion\SQL server\Backup\Hospital'+@fecha+'.bak'
set @name = 'Hospital'+@fecha

BACKUP DATABASE Hospital --la base de datos a la cual vamos hacer el backup
TO DISK = @path
WITH NO_COMPRESSION, NAME = @name

