-- Kenneth Palencia - 2023259 - IN4CM
use script_db_DDL_kenneth_palencia_in4cm;

-- TABLA HOTEL
INSERT INTO hotel VALUES ('Alta', 'Automático'), ('Media', 'Manual'), ('Baja', 'Semi-Automático'), 
('VIP', 'Premium'), ('Premium', 'Cloud v2'), ('Estandar', 'Legacy'), ('Express', 'Express v1'), 
('Corporativa', 'Enterprise'), ('Grupal', 'Manual-M'), ('Turista', 'SaaS Basic'), ('Eco', 'Sostenible v1'), 
('Lujo', 'LuxuryOS'), ('Familiar', 'Fam-Connect'), ('Eventos', 'EventSQL'), ('Fin de Semana', 'WeekendSys'), 
('Larga Estancia', 'LongTerm'), ('Promocional', 'PromoSoft'), ('Invernal', 'WinterOS'), ('Verano', 'SummerOS'), ('Descuento', 'Direct-In');

-- TABLA HABITACIONES
INSERT INTO habitaciones (piso, precio_noche, tipo_habitacion) VALUES 
(1, 150, 'Simple'), (1, 150, 'Simple'), (1, 250, 'Doble'), (1, 250, 'Doble'), (2, 350, 'Triple'), 
(2, 350, 'Triple'), (2, 500, 'Suite'), (2, 500, 'Suite'), (3, 600, 'Presidencial'), (3, 600, 'Presidencial'),
(3, 150, 'Simple'), (4, 250, 'Doble'), (4, 350, 'Triple'), (4, 500, 'Suite'), (5, 700, 'Penthouse'), 
(5, 700, 'Penthouse'), (6, 150, 'Simple'), (6, 250, 'Doble'), (6, 500, 'Suite'), (7, 1000, 'Imperial');

-- TABLA CLIENTE
INSERT INTO cliente VALUES 
(1001, 'Carlos Gómez', 'Guatemalteco'), (1002, 'Ana Martínez', 'Mexicana'), (1003, 'John Doe', 'Estadounidense'), (1004, 'Luis Peña', 'Colombiano'), (1005, 'Maria Silva', 'Brasileña'),
(1006, 'Pedro Picapiedra', 'Guatemalteco'), (1007, 'Laura Croft', 'Británica'), (1008, 'Sonia Espina', 'Española'), (1009, 'Jorge Ramos', 'Mexicano'), (1010, 'Elena Troyana', 'Griega'),
(1011, 'Mario Bros', 'Italiano'), (1012, 'Bruce Wayne', 'Estadounidense'), (1013, 'Clark Kent', 'Estadounidense'), (1014, 'Diana Prince', 'Autóctona'), (1015, 'Peter Parker', 'Estadounidense'),
(1016, 'Tony Stark', 'Estadounidense'), (1017, 'Arthur Dent', 'Británico'), (1018, 'Miguel Asturias', 'Guatemalteco'), (1019, 'Ricardo Arjona', 'Guatemalteco'), (1020, 'Rigoberta Menchú', 'Guatemalteco');

-- TABLA EMPLEADO
INSERT INTO empleado VALUES 
(501, 'Juan Pérez', 'Recepcionista', 'Activo', 'Ok', 'Alta'), (502, 'Ramiro J', 'Conserje', 'Inactivo', 'Ok', 'Media'), (503, 'Sofia L', 'Gerente', 'Activo', 'Controlado', 'VIP'), (504, 'Diego M', 'Botones', 'Activo', 'Ok', 'Baja'), (505, 'Lucia P', 'Camarera', 'Activo', 'Ok', 'Estandar'),
(506, 'Andrés K', 'Seguridad', 'Activo', 'Revisado', 'Express'), (507, 'Carmen T', 'Cocinera', 'Inactivo', 'Ok', 'Corporativa'), (508, 'Manuel R', 'Bartender', 'Activo', 'Ok', 'Turista'), (509, 'Estela Q', 'Recepcionista', 'Activo', 'Ok', 'Lujo'), (510, 'Victor V', 'Mantenimiento', 'Activo', 'Ok', 'Familiar'),
(511, 'Alba N', 'Guía', 'Inactivo', 'Ok', 'Eco'), (512, 'Roberto C', 'Administrador', 'Activo', 'Controlado', 'Premium'), (513, 'Marta B', 'Supervisor', 'Activo', 'Ok', 'Eventos'), (514, 'Francisco G', 'Soporte', 'Activo', 'Ok', 'Promocional'), (515, 'Julia F', 'Relaciones Públicas', 'Activo', 'Ok', 'Verano'),
(516, 'Daniel S', 'Auditor', 'Activo', 'Estricto', 'Invernal'), (517, 'Gabriela H', 'Contadora', 'Activo', 'Ok', 'Descuento'), (518, 'Fernando Y', 'Mesero', 'Inactivo', 'Ok', 'Fin de Semana'), (519, 'Olga U', 'Lavandera', 'Activo', 'Ok', 'Larga Estancia'), (520, 'Sergio X', 'Chofer', 'Activo', 'Ok', 'Grupal');

-- TABLA RESERVA
INSERT INTO reserva (fecha_inicio, fecha_fin, estado_cliente, numero_habitacion, cui, id_empleado) VALUES 
(20260101, 20260105, 'Confirmado', 1, 1001, 501), (20260102, 20260106, 'En Espera', 2, 1002, 501), (20260103, 20260107, 'Confirmado', 3, 1003, 503), (20260104, 20260108, 'Cancelado', 4, 1004, 504), (20260105, 20260109, 'Confirmado', 5, 1005, 505),
(20260106, 20260110, 'Check-out', 6, 1006, 506), (20260107, 20260111, 'Confirmado', 7, 1007, 507), (20260108, 20260112, '	Confirmado', 8, 1008, 508), (20260109, 20260113, 'En Espera', 9, 1009, 509), (20260110, 20260114, 'Confirmado', 10, 1010, 510),
(20260111, 20260115, 'Confirmado', 11, 1011, 511), (20260112, 20260116, 'Cancelado', 12, 1012, 512), (20260113, 20260117, 'Confirmado', 13, 1013, 513), (20260114, 20260118, 'En Espera', 14, 1014, 514), (20260115, 20260119, 'Check-out', 15, 1015, 515),
(20260116, 20260120, 'Confirmado', 16, 1016, 516), (20260117, 20260121, 'Confirmado', 17, 1017, 517), (20260118, 20260122, 'En Espera', 18, 1018, 518), (20260119, 20260123, 'Confirmado', 19, 1019, 519), (20260120, 20260124, 'Check-out', 20, 1020, 520);



-- TABLA HOTEL
CALL sp_InsertarHotel('Ejecutiva', 'SysV3'); CALL sp_InsertarHotel('Vacacional', 'CloudX'); CALL sp_InsertarHotel('Invierno', 'Win-M'); CALL sp_InsertarHotel('Otoño', 'Aut-M'); CALL sp_InsertarHotel('Primavera', 'Pri-M');
CALL sp_InsertarHotel('Express Plus', 'Exp-P'); CALL sp_InsertarHotel('Motel', 'SimpleOS'); CALL sp_InsertarHotel('Hostal', 'ShareSys'); CALL sp_InsertarHotel('Resort', 'Res-OS'); CALL sp_InsertarHotel('Boutique', 'Bou-OS');
CALL sp_InsertarHotel('Glamping', 'GlamCloud'); CALL sp_InsertarHotel('Business', 'BizSQL'); CALL sp_InsertarHotel('Airport', 'FlySys'); CALL sp_InsertarHotel('Playa', 'SeaSoft'); CALL sp_InsertarHotel('Montaña', 'HillSys');
CALL sp_InsertarHotel('Histórico', 'HistOS'); CALL sp_InsertarHotel('Cabañas', 'CabSys'); CALL sp_InsertarHotel('Spa', 'RelaxOS'); CALL sp_InsertarHotel('Casino', 'BetSQL'); CALL sp_InsertarHotel('Crucero', 'ShipOS');

-- TABLA HABITACION
CALL sp_InsertarHabitacion(1, 160, 'Simple'); CALL sp_InsertarHabitacion(1, 160, 'Simple'); CALL sp_InsertarHabitacion(2, 260, 'Doble'); CALL sp_InsertarHabitacion(2, 260, 'Doble'); CALL sp_InsertarHabitacion(3, 360, 'Triple');
CALL sp_InsertarHabitacion(3, 360, 'Triple'); CALL sp_InsertarHabitacion(4, 510, 'Suite'); CALL sp_InsertarHabitacion(4, 510, 'Suite'); CALL sp_InsertarHabitacion(5, 610, 'Presidencial'); CALL sp_InsertarHabitacion(5, 610, 'Presidencial');
CALL sp_InsertarHabitacion(1, 170, 'Simple'); CALL sp_InsertarHabitacion(2, 270, 'Doble'); CALL sp_InsertarHabitacion(3, 370, 'Triple'); CALL sp_InsertarHabitacion(4, 520, 'Suite'); CALL sp_InsertarHabitacion(5, 720, 'Penthouse');
CALL sp_InsertarHabitacion(6, 170, 'Simple'); CALL sp_InsertarHabitacion(6, 270, 'Doble'); CALL sp_InsertarHabitacion(7, 370, 'Triple'); CALL sp_InsertarHabitacion(7, 520, 'Suite'); CALL sp_InsertarHabitacion(8, 1200, 'Imperial');

-- TABLA CLIENTE
CALL sp_InsertarCliente(2001, 'Alejandro Sanz', 'Español'); CALL sp_InsertarCliente(2002, 'Shakira Mebarak', 'Colombiana'); CALL sp_InsertarCliente(2003, 'Lionel Messi', 'Argentino'); CALL sp_InsertarCliente(2004, 'Cristiano R', 'Portugués'); CALL sp_InsertarCliente(2005, 'Luis Miguel', 'Mexicano');
CALL sp_InsertarCliente(2006, 'Chayanne', 'Puertorriqueño'); CALL sp_InsertarCliente(2007, 'Taylor Swift', 'Estadounidense'); CALL sp_InsertarCliente(2008, 'Dua Lipa', 'Británica'); CALL sp_InsertarCliente(2009, 'Billie Eilish', 'Estadounidense'); CALL sp_InsertarCliente(2010, 'Bad Bunny', 'Puertorriqueño');
CALL sp_InsertarCliente(2011, 'Karol G', 'Colombiana'); CALL sp_InsertarCliente(2012, 'Maluma', 'Colombiano'); CALL sp_InsertarCliente(2013, 'J Balvin', 'Colombiano'); CALL sp_InsertarCliente(2014, 'Daddy Yankee', 'Puertorriqueño'); CALL sp_InsertarCliente(2015, 'Don Omar', 'Puertorriqueño');
CALL sp_InsertarCliente(2016, 'Rosalía', 'Española'); CALL sp_InsertarCliente(2017, 'Camilo E', 'Colombiano'); CALL sp_InsertarCliente(2018, 'Evaluna M', 'Venezolana'); CALL sp_InsertarCliente(2019, 'Christian Nodal', 'Mexicano'); CALL sp_InsertarCliente(2020, 'Ángela Aguilar', 'Mexicana');

-- TABLA EMPLEADO
CALL sp_InsertarEmpleado(601, 'Walter White', 'Químico-Limpieza', 'Activo', 'Ok', 'Ejecutiva'); CALL sp_InsertarEmpleado(602, 'Jesse Pinkman', 'Ayudante', 'Activo', 'Monitoreado', 'Vacacional'); CALL sp_InsertarEmpleado(603, 'Saul Goodman', 'Legal', 'Activo', 'Ok', 'Casino'); CALL sp_InsertarEmpleado(604, 'Gus Fring', 'Logística', 'Activo', 'Estricto', 'Business'); CALL sp_InsertarEmpleado(605, 'Mike E', 'Seguridad Suprema', 'Activo', 'Ok', 'Airport');
CALL sp_InsertarEmpleado(606, 'Lalo Salamanca', 'Relaciones', 'Inactivo', 'Peligro', 'Playa'); CALL sp_InsertarEmpleado(607, 'Kim Wexler', 'Asesora', 'Activo', 'Ok', 'Montaña'); CALL sp_InsertarEmpleado(608, 'Howard H', 'Socio', 'Inactivo', 'Ok', 'Histórico'); CALL sp_InsertarEmpleado(609, 'Nacho Varga', 'Logística', 'Activo', 'Ok', 'Cabañas'); CALL sp_InsertarEmpleado(610, 'Chuck McGill', 'Consultor', 'Inactivo', 'Sin Luz', 'Spa');
CALL sp_InsertarEmpleado(611, 'Hank Schrader', 'Inspector', 'Activo', 'Ok', 'Crucero'); CALL sp_InsertarEmpleado(612, 'Marie S', 'Radióloga', 'Activo', 'Ok', 'Glamping'); CALL sp_InsertarEmpleado(613, 'Skyler W', 'Contable', 'Activo', 'Ok', 'Boutique'); CALL sp_InsertarEmpleado(614, 'Flynn W', 'Anfitrión', 'Activo', 'Ok', 'Resort'); CALL sp_InsertarEmpleado(615, 'Tuco S', 'Supervisor', 'Inactivo', 'Alerta', 'Hostal');
CALL sp_InsertarEmpleado(616, 'Hector S', 'Socio Honorario', 'Inactivo', 'Ok', 'Motel'); CALL sp_InsertarEmpleado(617, 'Todd A', 'Asistente', 'Activo', 'Ok', 'Express Plus'); CALL sp_InsertarEmpleado(618, 'Lydia R', 'Suministros', 'Activo', 'Ok', 'Primavera'); CALL sp_InsertarEmpleado(619, 'Jane M', 'Diseñadora', 'Inactivo', 'Ok', 'Otoño'); CALL sp_InsertarEmpleado(620, 'Skinny Pete', 'Músico Lobby', 'Activo', 'Ok', 'Invierno');

-- TABLA RESERVA
CALL sp_InsertarReserva(20260201, 20260205, 'Confirmado', 21, 2001, 601); CALL sp_InsertarReserva(20260202, 20260206, 'En Espera', 22, 2002, 602); CALL sp_InsertarReserva(20260203, 20260207, 'Confirmado', 23, 2003, 603); CALL sp_InsertarReserva(20260204, 20260208, 'Cancelado', 24, 2004, 604); CALL sp_InsertarReserva(20260205, 20260209, 'Confirmado', 25, 2005, 605);
CALL sp_InsertarReserva(20260206, 20260210, 'Check-out', 26, 2006, 606); CALL sp_InsertarReserva(20260207, 20260211, 'Confirmado', 27, 2007, 607); CALL sp_InsertarReserva(20260208, 20260212, 'Confirmado', 28, 2008, 608); CALL sp_InsertarReserva(20260209, 20260213, 'En Espera', 29, 2009, 609); CALL sp_InsertarReserva(20260210, 20260214, 'Confirmado', 30, 2010, 610);
CALL sp_InsertarReserva(20260211, 20260215, 'Confirmado', 31, 2011, 611); CALL sp_InsertarReserva(20260212, 20260216, 'Cancelado', 32, 2012, 612); CALL sp_InsertarReserva(20260213, 20260217, 'Confirmado', 33, 2013, 613); CALL sp_InsertarReserva(20260214, 20260218, 'En Espera', 34, 2014, 614); CALL sp_InsertarReserva(20260215, 20260219, 'Check-out', 35, 2015, 615);
CALL sp_InsertarReserva(20260216, 20260220, 'Confirmado', 36, 2016, 616); CALL sp_InsertarReserva(20260217, 20260221, 'Confirmado', 37, 2017, 617); CALL sp_InsertarReserva(20260218, 20260222, 'En Espera', 38, 2018, 618); CALL sp_InsertarReserva(20260219, 20260223, 'Confirmado', 39, 2019, 619); CALL sp_InsertarReserva(20260220, 20260224, 'Check-out', 40, 2020, 620);