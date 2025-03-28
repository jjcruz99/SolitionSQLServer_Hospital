
sp_tables @table_owner='dbo'

create table T_Paciente(
  IdPaciente int NOT NULL primary key identity(1,1),
  Nombre varchar(50) NOT NULL,
  Apellido Varchar(50) not null,
  FNacimiento date not null,
  Domicilio varchar null,
  IdPais char(3),
  Telefono varchar(20),
  Email varchar(30),
  Observacion varchar(1000)
   )

  CREate table T_Historia_Clinica(
   IdHistoria int primary key identity(1,1),
   FHistoria datetime NOT NULL,
   observacion varchar (1000),
     )

 create table T_HistoriaPaciente(
    IdHistoria int,
	IdPaciente int,
	IdMedico INT 
    )

 create table T_pais(
    IdPais char(3) primary key,
	pais varchar(30)
    )

 Create table T_Turno(
   IdTurno int primary key identity(1,1),
   FTurno datetime not null,
   estado smallint,
   observacion varchar(1000)
   )

Create table T_TurnoPaciente(
  IdTurno int,
  IdPaciente int,
  IdMedico int
  )

Create table T_TurnoEstado(
  IdEstado smallint primary key,
  Descripcion varchar(50)
  )

Create table T_Especialidad(
  IdEspecialidad int primary key identity(1,1),
  Especialidad varchar(30)
  )

Create table T_Pago(
  IdPago int Identity (1,1) primary key,
  Concepto tinyint not null,
  FPago datetime not null,
  monto money Not null,
  Estado tinyint,
  Observacion varchar(1000)
)

create table T_PagoPaciente  (
   IdPago int NOT NULL,
   IdPaciente int not null,
   IdTurno int not null
   primary key (Idpago,Idpaciente,IdTurno)---PRIMARY KEY Compuesta
 )

 create table T_Medico (
    IdMedico int primary key identity(1,1),
	Nombre varchar(30),
	Apellido varchar(30)
   )

create table T_MedicoEspecialidad(
  IdMedico int,
  IdEspecialidad int,
  Descripcion varchar(50)
  PRIMARY KEY (IdMedico,IdEspecialidad,Descripcion)
  )

create table T_Concepto (
    IdConcepto tinyint identity (1,1) primary key,
	Descripcion varchar (100)
)

     create type D_IdMedico from int not null ----Crear un tipo de dato de usuario