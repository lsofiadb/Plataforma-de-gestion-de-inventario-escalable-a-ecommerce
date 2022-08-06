INSERT INTO TipoEspacio VALUES('1','Unidad');
INSERT INTO TipoEspacio VALUES('2','Sede');
INSERT INTO TipoEspacio VALUES('3','Campo');
INSERT INTO TipoEspacio VALUES('4','Pista');
INSERT INTO TipoEspacio VALUES('5','Salon');
INSERT INTO TipoEspacio VALUES('6','Piscina');
INSERT INTO TipoEspacio VALUES('7','Sala Máquinas');
INSERT INTO TipoEspacio VALUES('8','Muro Escalar');
commit();

INSERT INTO Deporte VALUES('1','Atletismo');
INSERT INTO Deporte VALUES('2','Tenis');
INSERT INTO Deporte VALUES('3','Tenis Mesa');
INSERT INTO Deporte VALUES('4','Natación');
INSERT INTO Deporte VALUES('5','Voleivol');
INSERT INTO Deporte VALUES('6','Futbol');
INSERT INTO Deporte VALUES('7','Futbol sala');
INSERT INTO Deporte VALUES('8','Bádminton');
INSERT INTO Deporte VALUES('9','Aeróbicos');
INSERT INTO Deporte VALUES('10','Boxeo');
INSERT INTO Deporte VALUES('11','Artes Marciales');
INSERT INTO Deporte VALUES('12','Gimnasia Olimpica');
commit();

INSERT INTO Estado VALUES('1','Activo');
INSERT INTO Estado VALUES('2','Prestado');
INSERT INTO Estado VALUES('3','Dañado');
INSERT INTO Estado VALUES('4','Perdido');
INSERT INTO Estado VALUES('5','De baja');
commit();

INSERT INTO Periodo VALUES('20191');
INSERT INTO Periodo VALUES('20192');
INSERT INTO Periodo VALUES('20193');
INSERT INTO Periodo VALUES('20201');
INSERT INTO Periodo VALUES('20202');
INSERT INTO Periodo VALUES('20203');
INSERT INTO Periodo VALUES('20211');
INSERT INTO Periodo VALUES('20212');
INSERT INTO Periodo VALUES('20213');
INSERT INTO Periodo VALUES('20221');
commit();

INSERT INTO TipoElemento VALUES('1','Balón Baloncesto');
INSERT INTO TipoElemento VALUES('2','Balón Futbol');
INSERT INTO TipoElemento VALUES('3','Balón Voleibol');
INSERT INTO TipoElemento VALUES('4','Pelota Tenis mesa');
INSERT INTO TipoElemento VALUES('5','Pelota Tenis campo');
INSERT INTO TipoElemento VALUES('6','Colchoneta');
INSERT INTO TipoElemento VALUES('7','Lazo salto');
INSERT INTO TipoElemento VALUES('8','Guantes Box');
INSERT INTO TipoElemento VALUES('9','Malla Voleibol');
INSERT INTO TipoElemento VALUES('10','Saco Boxeo');
INSERT INTO TipoElemento VALUES('11','Aros hula-hula');
INSERT INTO TipoElemento VALUES('12','Chaleco Boxeo');
INSERT INTO TipoElemento VALUES('13','Malla Pimpón');
commit();

INSERT INTO Actividad VALUES('CU','Curso');
INSERT INTO Actividad VALUES('PR','Práctica');
INSERT INTO Actividad VALUES('EN','Entrenamiento');
commit();

INSERT INTO Hora VALUES('06');
INSERT INTO Hora VALUES('07');
INSERT INTO Hora VALUES('08');
INSERT INTO Hora VALUES('09');
INSERT INTO Hora VALUES('10');
INSERT INTO Hora VALUES('11');
INSERT INTO Hora VALUES('12');
INSERT INTO Hora VALUES('13');
INSERT INTO Hora VALUES('14');
INSERT INTO Hora VALUES('15');
INSERT INTO Hora VALUES('16');
INSERT INTO Hora VALUES('17');
INSERT INTO Hora VALUES('18');
INSERT INTO Hora VALUES('19');
INSERT INTO Hora VALUES('20');
INSERT INTO Hora VALUES('21');
INSERT INTO Hora VALUES('22');
commit();

INSERT INTO Marca VALUES('1','Nike');
INSERT INTO Marca VALUES('2','Adidas');
INSERT INTO Marca VALUES('3','Puma');
INSERT INTO Marca VALUES('4','Reebok');
INSERT INTO Marca VALUES('5','Fila');
INSERT INTO Marca VALUES('6','Asics');
INSERT INTO Marca VALUES('7','Kappa');
INSERT INTO Marca VALUES('8','The North Face');
INSERT INTO Marca VALUES('9','Under Armour');
INSERT INTO Marca VALUES('10','Under Armour');
INSERT INTO Marca VALUES('11','Converse');
INSERT INTO Marca VALUES('12','TI Colombia');
commit();

INSERT INTO Rol VALUES('1','Director Deportivo');
INSERT INTO Rol VALUES('2','Docente');
INSERT INTO Rol VALUES('3','Entrenador');
commit();

INSERT INTO Cargo VALUES('1','Auxiliar');
INSERT INTO Cargo VALUES('2','Docente');
INSERT INTO Cargo VALUES('3','Director Deportivo');
INSERT INTO Cargo VALUES('4','Administrador Deportivo');
INSERT INTO Cargo VALUES('5','Fisioterapeuta');
INSERT INTO Cargo VALUES('6','Entrenador');
commit();

/*---------AÑADIR CODIGO EMPLEADO--------------*/
INSERT INTO Equipo VALUES(1,'1','1',sysdate);
INSERT INTO Equipo VALUES(2,'1','3',sysdate);
INSERT INTO Equipo VALUES(3,'1','4',sysdate);
INSERT INTO Equipo VALUES(4,'1','5',sysdate);
INSERT INTO Equipo VALUES(5,'1','6',sysdate);
INSERT INTO Equipo VALUES(6,'1','7',sysdate);
INSERT INTO Equipo VALUES(7,'1','9',sysdate);
INSERT INTO Equipo VALUES(8,'1','10',sysdate);
INSERT INTO Equipo VALUES(9,'1','11',sysdate);
INSERT INTO Equipo VALUES(10,'1','12',sysdate);
commit();

INSERT INTO Espacio VALUES('1','1',NULL,'Unidad Deportiva');

/*------------SEDES---------------*/
INSERT INTO Espacio VALUES('2','2','1','Macarena');
INSERT INTO Espacio VALUES('3','2','1','La 40');
INSERT INTO Espacio VALUES('4','2','1','Vivero');
commit();

/*-------ESPACIOS MACARENA--------------*/
INSERT INTO Espacio VALUES('5','3','2','Campo Macarena');
INSERT INTO Espacio VALUES('6','4','2','Pista Macarena');
INSERT INTO Espacio VALUES('7','6','2','Piscina Macarena');
INSERT INTO Espacio VALUES('8','5','2','Salón Macarena 1');
INSERT INTO Espacio VALUES('9','5','2','Salón Macarena 2');
INSERT INTO Espacio VALUES('10','5','2','Salón Macarena 3');
INSERT INTO Espacio VALUES('11','5','2','Salón Macarena 4');
INSERT INTO Espacio VALUES('12','5','2','Salón Macarena 5');
INSERT INTO Espacio VALUES('13','5','2','Salón Macarena 6');
INSERT INTO Espacio VALUES('14','5','2','Salón Macarena 7');
INSERT INTO Espacio VALUES('15','5','2','Salón Macarena 8');
INSERT INTO Espacio VALUES('16','5','2','Salón Macarena 9');
INSERT INTO Espacio VALUES('17','5','2','Salón Macarena 10');

/*----------SALA DE MAQUINAS MACARENA-----------*/
INSERT INTO Espacio VALUES('18','7','2','Sala de Maquinas Macarena');
commit();

/*-------ESPACIOS LA 40--------------*/
INSERT INTO Espacio VALUES('19','3','3','Campo La 40');
INSERT INTO Espacio VALUES('20','4','3','Pista La 40');
INSERT INTO Espacio VALUES('21','6','3','Piscina La 40');
INSERT INTO Espacio VALUES('22','5','3','Salón La 40 1');
INSERT INTO Espacio VALUES('23','5','3','Salón La 40 2');
INSERT INTO Espacio VALUES('24','5','3','Salón La 40 3');
INSERT INTO Espacio VALUES('25','5','3','Salón La 40 4');
INSERT INTO Espacio VALUES('26','5','3','Salón La 40 5');
INSERT INTO Espacio VALUES('27','5','3','Salón La 40 6');
INSERT INTO Espacio VALUES('28','5','3','Salón La 40 7');
INSERT INTO Espacio VALUES('29','5','3','Salón La 40 8');
INSERT INTO Espacio VALUES('30','5','3','Salón La 40 9');
INSERT INTO Espacio VALUES('31','5','3','Salón La 40 10');

/*----------SALA DE MAQUINAS LA 40-----------*/
INSERT INTO Espacio VALUES('32','7','3','Sala de Maquinas La 40');
commit();

/*-------ESPACIOS VIVERO--------------*/
INSERT INTO Espacio VALUES('33','3','4','Campo Vivero');
INSERT INTO Espacio VALUES('34','4','4','Pista Vivero');
INSERT INTO Espacio VALUES('35','6','4','Piscina Vivero');
INSERT INTO Espacio VALUES('36','5','4','Salón Vivero 1');
INSERT INTO Espacio VALUES('37','5','4','Salón Vivero 2');
INSERT INTO Espacio VALUES('38','5','4','Salón Vivero 3');
INSERT INTO Espacio VALUES('39','5','4','Salón Vivero 4');
INSERT INTO Espacio VALUES('40','5','4','Salón Vivero 5');
INSERT INTO Espacio VALUES('41','5','4','Salón Vivero 6');
INSERT INTO Espacio VALUES('42','5','4','Salón Vivero 7');
INSERT INTO Espacio VALUES('43','5','4','Salón Vivero 8');
INSERT INTO Espacio VALUES('44','5','4','Salón Vivero 9');
INSERT INTO Espacio VALUES('45','5','4','Salón Vivero 10');

/*----------SALA DE MAQUINAS VIVERO-----------*/
INSERT INTO Espacio VALUES('46','7','4','Sala de Maquinas Vivero');
commit();

/*-----------------EMPLEADOS------------------*/
INSERT INTO Empleado VALUES ('1', 'Dani', 'Ochoa', sysdate, 'DaniOchoa@correo.udistrital.edu.co');
