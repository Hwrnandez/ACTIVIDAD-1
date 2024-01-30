create database ActividadClase

use ActividadClase

create table cargo(
id_cargo int primary key,
nombre_cargo varchar (50)
);

create table departamento (
id_departamento int primary key,
nombre_departamento varchar (100)
);

create table empleado (
id_empleado int primary key,
nombre varchar (100),
apellido varchar (100),
id_departamento int,
id_cargo int,
salario decimal (10,2),
fecha_inicio date,
constraint fk_departamento_empleado
foreign key (id_departamento)
references departamento (id_departamento),
constraint fk_cargo_empleado
foreign key (id_cargo)
references cargo (id_cargo)
);

create table proyecto(
id_proyecto int primary key,
nombre_proyecto varchar (100)
);

create table asignacion (
id_asignacion int primary key,
id_empleado int,
id_proyecto int,
fecha_asignacion date, 
constraint fk_empleado_asignacion foreign key (id_empleado) references empleado(id_empleado),
constraint fk_proyecto_asignacion foreign key (id_proyecto) references proyecto(id_proyecto)
);
