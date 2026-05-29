-- Kenneth Palencia - 2023259 - IN4CM
-- drop database if exists script_db_DDL_kenneth_palencia_in4cm;
create database if not exists script_db_DDL_kenneth_palencia_in4cm;
use script_db_DDL_kenneth_palencia_in4cm;

create table hotel(
    ocupaciones varchar(100) primary key,
    sistema varchar(100) not null
);

create table habitaciones(
    numero_habitacion int primary key auto_increment,
    piso int not null,
    precio_noche int not null,
    tipo_habitacion varchar(100) not null
);

create table cliente(
    cui bigint primary key,
    nombre varchar(100) not null,
    nacionalidad varchar(100) not null
);

create table empleado(
    id_empleado bigint primary key,
    nombre varchar(100) not null,
    cargo varchar(100) not null,
    estado_chekin varchar(100),
    control_interno varchar(100),
    ocupaciones varchar(100),
    constraint fk_empleado_hotel foreign key (ocupaciones) references hotel(ocupaciones)
);

create table reserva(
    id_reserva int primary key auto_increment,
    fecha_inicio bigint not null,
    fecha_fin bigint not null,
    estado_cliente varchar(100) not null,
    numero_habitacion int,
    cui bigint,
    id_empleado bigint,
    constraint fk_reserva_habitaciones foreign key (numero_habitacion) references habitaciones(numero_habitacion),
    constraint fk_reserva_cliente foreign key (cui) references cliente(cui),
    constraint fk_reserva_empleado foreign key (id_empleado) references empleado(id_empleado)
);

-- Procedimientos Almacenados

delimiter //

-- HOTEL
create procedure sp_InsertarHotel(in p_ocupaciones varchar(100), in p_sistema varchar(100))
begin insert into hotel values (p_ocupaciones, p_sistema); end//

create procedure sp_BuscarHotel(in p_ocupaciones varchar(100))
begin select * from hotel where ocupaciones = p_ocupaciones; end//

create procedure sp_ActualizarHotel(in p_ocupaciones varchar(100), in p_sistema varchar(100))
begin update hotel set sistema = p_sistema where ocupaciones = p_ocupaciones; end//

create procedure sp_EliminarHotel(in p_ocupaciones varchar(100))
begin delete from hotel where ocupaciones = p_ocupaciones; end//

create procedure sp_ListarHotel()
begin select * from hotel; end//


-- HABITACIONES
create procedure sp_InsertarHabitacion(in p_piso int, in p_precio int, in p_tipo varchar(100))
begin insert into habitaciones(piso, precio_noche, tipo_habitacion) values (p_piso, p_precio, p_tipo); end//

create procedure sp_BuscarHabitacion(in p_num int)
begin select * from habitaciones where numero_habitacion = p_num; end//

create procedure sp_ActualizarHabitacion(in p_num int, in p_piso int, in p_precio int, in p_tipo varchar(100))
begin update habitaciones set piso = p_piso, precio_noche = p_precio, tipo_habitacion = p_tipo where numero_habitacion = p_num; end//

create procedure sp_EliminarHabitacion(in p_num int)
begin delete from habitaciones where numero_habitacion = p_num; end//

create procedure sp_ListarHabitaciones()
begin select * from habitaciones; end//


-- CLIENTE
create procedure sp_InsertarCliente(in p_cui bigint, in p_nombre varchar(100), in p_nacionalidad varchar(100))
begin insert into cliente values (p_cui, p_nombre, p_nacionalidad); end//

create procedure sp_BuscarCliente(in p_cui bigint)
begin select * from cliente where cui = p_cui; end//

create procedure sp_ActualizarCliente(in p_cui bigint, in p_nombre varchar(100), in p_nacionalidad varchar(100))
begin update cliente set nombre = p_nombre, nacionalidad = p_nacionalidad where cui = p_cui; end//

create procedure sp_EliminarCliente(in p_cui bigint)
begin delete from cliente where cui = p_cui; end//

create procedure sp_ListarClientes()
begin select * from cliente; end//


-- EMPLEADO
create procedure sp_InsertarEmpleado(in p_id bigint, in p_nom varchar(100), in p_cargo varchar(100), in p_check varchar(100), in p_control varchar(100), in p_ocup varchar(100))
begin insert into empleado values (p_id, p_nom, p_cargo, p_check, p_control, p_ocup); end//

create procedure sp_BuscarEmpleado(in p_id bigint)
begin select * from empleado where id_empleado = p_id; end//

create procedure sp_ActualizarEmpleado(in p_id bigint, in p_nom varchar(100), in p_cargo varchar(100), in p_check varchar(100), in p_control varchar(100), in p_ocup varchar(100))
begin update empleado set nombre=p_nom, cargo=p_cargo, estado_chekin=p_check, control_interno=p_control, ocupaciones=p_ocup where id_empleado=p_id; end//

create procedure sp_EliminarEmpleado(in p_id bigint)
begin delete from empleado where id_empleado = p_id; end//

create procedure sp_ListarEmpleados()
begin select * from empleado; end//


-- RESERVA
create procedure sp_InsertarReserva(in p_ini bigint, in p_fin bigint, in p_est varchar(100), in p_hab int, in p_cui bigint, in p_emp bigint)
begin insert into reserva(fecha_inicio, fecha_fin, estado_cliente, numero_habitacion, cui, id_empleado) values (p_ini, p_fin, p_est, p_hab, p_cui, p_emp); end//

create procedure sp_BuscarReserva(in p_id int)
begin select * from reserva where id_reserva = p_id; end//

create procedure sp_ActualizarReserva(in p_id int, in p_ini bigint, in p_fin bigint, in p_est varchar(100), in p_hab int, in p_cui bigint, in p_emp bigint)
begin update reserva set fecha_inicio=p_ini, fecha_fin=p_fin, estado_cliente=p_est, numero_habitacion=p_hab, cui=p_cui, id_empleado=p_emp where id_reserva=p_id; end//

create procedure sp_EliminarReserva(in p_id int)
begin delete from reserva where id_reserva = p_id; end//

create procedure sp_ListarReservas()
begin select * from reserva; end//

delimiter ;

-- VISTAS

create view v_ResumenHoteles as select * from hotel;
create view v_HabitacionesDisponibles as select numero_habitacion, tipo_habitacion, precio_noche from habitaciones;
create view v_ClientesExtranjeros as select cui, nombre, nacionalidad from cliente where nacionalidad <> 'Guatemalteco';
create view v_PersonalCheckIn as select id_empleado, nombre, cargo from empleado where estado_chekin = 'Activo';

create view v_DetalleReservas as 
select r.id_reserva, c.nombre as cliente, h.tipo_habitacion, e.nombre as atendido_por, r.estado_cliente
from reserva r
inner join cliente c on r.cui = c.cui
inner join habitaciones h on r.numero_habitacion = h.numero_habitacion
inner join empleado e on r.id_empleado = e.id_empleado;