create database db_control_de_ingresos_y_salidas_cr
go

use db_control_de_ingresos_y_salidas_cr
go

create table credenciales_de_usario
(
codigo_usuario int primary key identity (1,1),
email_usuario varchar (30),
pass_usuario varchar (6),
nombre_usuario nvarchar (30) not null, 
apellido_usuario nvarchar (30) not null, 
)
go 

create table informacion_viajero
(
codigo_viajero int primary key identity (1,1),
nombre_viajero nvarchar (30) not null,
apellido_viajero nvarchar (30) not null,
numero_pasaporte_viajero varchar unique not null, 
nacionalidad_viajero nvarchar not null,
)
go

create table tipo_de_transporte
(
tipo_transporte int primary key check (tipo_transporte IN (1, 2, 3)),
codigo_viajero int not null, 
numero_pasaporte_viajero varchar not null, 
foreign key (codigo_viajero) references informacion_viajero(codigo_viajero),
foreign key (numero_pasaporte_viajero) references informacion_viajero(numero_pasaporte_viajero),
)
go 

create table registro_destino_viajero_salida
(
pais_destino nvarchar (40) primary key,
codigo_viajero int not null,
fecha_salida datetime not null, 
numero_pasaporte_viajero varchar not null ,
tipo_transporte int not null ,
foreign key (codigo_viajero) references informacion_viajero(codigo_viajero),
foreign key (numero_pasaporte_viajero) references informacion_viajero(numero_pasaporte_viajero),
foreign key (tipo_transporte) references tipo_de_transporte(tipo_transporte),
)
go 

create table registro_ingreso_viajero_entrada
(
pais_procedencia nvarchar (40) primary key,
codigo_viajero int not null,
fecha_entrada datetime not null,
numero_pasaporte_viajero varchar not null ,
tipo_transporte int not null ,
foreign key (codigo_viajero) references informacion_viajero(codigo_viajero),
foreign key (numero_pasaporte_viajero) references informacion_viajero(numero_pasaporte_viajero),
foreign key (tipo_transporte) references tipo_de_transporte(tipo_transporte),
)
go 

create table resumen_viajes_usuario
(
codigo_viajero int not null,
numero_pasaporte_viajero varchar not null,
tipo_transporte int not null,
pais_destino nvarchar (40),
pais_procedencia nvarchar (40),
foreign key (codigo_viajero) references informacion_viajero(codigo_viajero),
foreign key (numero_pasaporte_viajero) references informacion_viajero(numero_pasaporte_viajero),
foreign key (tipo_transporte) references tipo_de_transporte(tipo_transporte),
foreign key (pais_destino) references registro_destino_viajero_salida(pais_destino),
foreign key (pais_procedencia) references registro_ingreso_viajero_entrada(pais_procedencia),
)