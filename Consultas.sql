 
 Select * from T_Paciente

 Select idPais from T_Paciente GROUP BY IdPais

 ------Borrar un turno-----
 delete from T_TurnoPaciente where IdTurno = 3

		 SElect * from T_Pago order by FPago

								 --Consulta el paciente mas joven
							SElect TOP 1 * from T_Paciente order by FNacimiento desc 


 select max(fNacimiento) as fechafechamax from T_Paciente
 select min(fNacimiento) as fechaMinima from T_Paciente

 Select * from T_Pago
 Select sum(monto) as TotalMonto from T_Pago
 Select sum(monto)+100 as TotalMonto from T_Pago --Se le suma a la sumatoria 100
 Select avg(monto) AS montopromedio FROM T_Pago
 SELECT count (*) AS CantidadDePacientes from T_Paciente
 Select * from T_Paciente
 Select count(idpaciente) AS pacientesCruz from T_Paciente where apellido = 'Cruz'

 Select * from T_Turno
 Select estado FROM T_Turno Group by estado having Count(estado)>=1 

 -----------------------------operadores
 select * from T_Paciente where Apellido = 'Cruz' and IdPais = 'COL'
 select * from T_Paciente where Apellido = 'Cruz' or IdPais = 'COL'

 Select * from T_Turno where estado IN(2,3,5,0)
 select * from T_Paciente where IdPais in('Col','Per','Arg')

 Select * from T_Paciente where nombre like ('%Jo%')

 Select * from T_Paciente where nombre not like ('%Jo%')
 select * from T_Paciente where IdPais not in('Col','Per','Arg')

 Select * from T_Paciente where FNacimiento not BETWEEN '19700101' and '20200101'

