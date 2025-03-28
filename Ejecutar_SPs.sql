
---Insertar pacientes
EXEC SP_IN_Pacientes '10410254','Andres','Fernandez','20000518','Calle 88#1-41','MEX','606900528','and@email.co','Paciente'
select * from T_Paciente
SElect * from T_Medico
Select * from T_Turno
Select * from T_TurnoPaciente

----SP turnos
EXEC SP_IN_Turnos '20241018 10:45',8,5,'Nada'

-----SP insertar medicos
select * from T_Medico
select * from T_Especialidad
SElect * from T_MedicoEspecialidad

EXEC SP_IN_Medicos 'Javier','Rojas',7,'N/A'

--------------------------

SP_help T_pais--obtener todas las caracteristicas de la tabla
SP_HELP T_Paciente
SP_HELP SP_IN_Medicos---VEr SP
SP_helptext SP_IN_Pacientes---+ Ctrl*T para ver resultados en modo texto 
                           --- Ctrl+A para seleccionar todo
						   --- Ctrl + D: Modo de visualización de cuadrícula

