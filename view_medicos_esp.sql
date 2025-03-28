
create view view_medicos_esp AS

select M.Nombre,M.Apellido, E.Especialidad from T_Medico M
inner join T_MedicoEspecialidad ME
on ME.IdMedico = M.IdMedico
inner join T_Especialidad E
on ME.IdEspecialidad = E.IdEspecialidad

----pruebas de la vista
--select * from view_medicos_esp