
SELECT * FROM T_Paciente
SELECT * FROM T_TurnoPaciente

--INNER JOIN obtiene que comparten las dos tablas 
select * from T_Paciente alias_P
INNER JOIN T_TurnoPaciente alias_T
on alias_T.IdPaciente = alias_P.IdPaciente

---LEFT JOIN obtiene todos los campos de la tabla de la izquierda y solamente los comunes entre las dos tablas.
select * from T_Paciente alias_P
left join T_TurnoPaciente alias_T
on alias_T.IdPaciente = alias_P.IdPaciente

---LEFT JOIN obtiene todos los campos de la tabla de la derecha y solamente los comunes entre las dos tablas.
select * from T_Paciente alias_P
right join T_TurnoPaciente alias_T
on alias_T.IdPaciente = alias_P.IdPaciente


----UNION y union all-------------------
---UNION Une el resultado de dos consultas en una sola
---Union los campos deben tener el mismo tipo de dato
SELECT * from T_Paciente where IdPaciente=5
union
Select * from T_Paciente  where IdPaciente = 9

--no puede hacer la union de las consultas
	SELECT IdTurno from T_Turno where estado =0
	union
	Select Nombre from T_Paciente where IdPaciente = 9 

	--correcion de la consulta anterior
	SELECT IdTurno from T_Turno where estado =0
	union
	Select IdPaciente from T_Paciente where IdPaciente = 9 --no puede hacer la union de las consultas

--UNION ALL no elimina la los valores repetidos de cada consulta 
SELECT * from T_Paciente 
union all
Select * from T_Paciente 

			SELECT * from T_Paciente 
			union 
			Select * from T_Paciente

--------------------------------------------------