CREATE TABLE adeudos(
id int primary key auto_increment not null ,
nombre_cliente varchar(100),
recurso_prestado varchar(100),
fecha_prestamo date,
fecha_devolucion_estimada date,
cantidad_prestada int,
estado_devolucion varchar(50),
observaciones text);

create table bitacora(
id int primary key unique auto_increment not null,
usuario varchar(50)not null,
operacion ENUM('Create', 'Read', 'Update', 'Delete')not null,
tabla varchar(50)not null,
descripcion text not null,
fecha_hora datetime not null,
estatus bit);

create table consumibles (
id int primary key auto_increment not null,
nombre varchar(100),
cantidad int,
unidad_medida varchar(50),
fecha_vencimiento date,
proveedor varchar(100),
precio_unitario decimal(10,2)); 

create table equipos (
id int primary key auto_increment not null,
nombre_equipo varchar(100),
numero_de_serie varchar(50),
marca varchar(50),
modelo varchar(50));

create table equipos_existentes (
id int primary key auto_increment not null,
nombre_del_equipo varchar(100),
descripcion_del_equipo text,
ubicacion_fisica varchar(100),
fecha_de_compra date,
fecha_de_instalacion date);

create table mantenimiento (
id int primary key auto_increment not null,
descripcion_del_trabajo_real text,
fecha_de_mantenimiento date,
estado_del_equipo_despues_del_mantenimiento varchar(100));

create table recursos_prestables(
id int primary key auto_increment not null,
nombre varchar(100),
descripcion text,
cantidad_disponible int,
cantidad_total int,
estado varchar(50),
fecha_adquisicion date,
proveedor varchar(100));




