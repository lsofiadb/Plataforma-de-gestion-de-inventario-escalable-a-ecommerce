INSERT INTO TipoEspacio VALUES('1','Unidad');
INSERT INTO TipoEspacio VALUES('2','Sede');
INSERT INTO TipoEspacio VALUES('3','Campo');
INSERT INTO TipoEspacio VALUES('4','Pista');
INSERT INTO TipoEspacio VALUES('5','Salon');
INSERT INTO TipoEspacio VALUES('6','Piscina');
INSERT INTO TipoEspacio VALUES('7','Sala Máquinas');
INSERT INTO TipoEspacio VALUES('8','Muro Escalar');


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


INSERT INTO Estado VALUES('1','Activo');
INSERT INTO Estado VALUES('2','Prestado');
INSERT INTO Estado VALUES('3','Dañado');
INSERT INTO Estado VALUES('4','Perdido');
INSERT INTO Estado VALUES('5','De baja');


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


INSERT INTO Actividad VALUES('CU','Curso');
INSERT INTO Actividad VALUES('PR','Práctica');
INSERT INTO Actividad VALUES('EN','Entrenamiento');


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

INSERT INTO Rol VALUES('1','Director Deportivo');
INSERT INTO Rol VALUES('2','Docente');
INSERT INTO Rol VALUES('3','Entrenador');

INSERT INTO Cargo VALUES('1','Auxiliar');
INSERT INTO Cargo VALUES('2','Docente');
INSERT INTO Cargo VALUES('3','Director Deportivo');
INSERT INTO Cargo VALUES('4','Administrador Deportivo');
INSERT INTO Cargo VALUES('5','Fisioterapeuta');
INSERT INTO Cargo VALUES('6','Entrenador');

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

INSERT INTO Espacio VALUES('1','1',NULL,'Unidad Deportiva');

/*------------SEDES---------------*/
INSERT INTO Espacio VALUES('2','2','1','Macarena');
INSERT INTO Espacio VALUES('3','2','1','La 40');
INSERT INTO Espacio VALUES('4','2','1','Vivero');

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

/*-----------------EMPLEADOS------------------*/
INSERT INTO Empleado VALUES ('1', 'Valeria', 'Jover Calatayud', sysdate, 'vjover@udistrital.edu.co'); -- Director deportivo
INSERT INTO Empleado VALUES ('2', 'Eric Epifanio', 'Lopez Cano', sysdate, 'elopez@udistrital.edu.co'); -- Director deportivo
INSERT INTO Empleado VALUES ('3', 'Marcio', 'Villanueva Gallardo', sysdate, 'mvillanueva@udistrital.edu.co'); -- Docente 
INSERT INTO Empleado VALUES ('4', 'Raquel Josefina', 'Alonso Moreno', sysdate, 'ralonso@udistrital.edu.co'); -- Docente
INSERT INTO Empleado VALUES ('5', 'Ariel', 'Girona Ruiz', sysdate, 'agirona@udistrital.edu.co'); -- Docente
INSERT INTO Empleado VALUES ('6', 'Baudelio ', 'Vives', sysdate, 'bvives@udistrital.edu.co'); -- Docente
INSERT INTO Empleado VALUES ('7', 'Raimundo Eustaquio', 'Aguado Villalonga', sysdate, 'raguado@udistrital.edu.co'); -- Auxiliar deportivo
INSERT INTO Empleado VALUES ('8', 'Maria', 'Belen Gallo', sysdate, 'mbelen@udistrital.edu.co'); -- Auxiliar deportivo
INSERT INTO Empleado VALUES ('9', 'Luis', 'Palau Peñas', sysdate, 'lpalau@udistrital.edu.co'); -- Entrenador deportivo 
INSERT INTO Empleado VALUES ('10', 'Octavia', 'Tamayo Ferran', sysdate, 'otamayo@udistrital.edu.co'); -- Entrenador deportivo
INSERT INTO Empleado VALUES ('11', 'Rodrigo ', 'Aparicio Minguez', sysdate, 'raparicio@udistrital.edu.co'); -- Entrenador deportivo


/*---------CARGOS DE CADA EMPLEADO--------*/
/*------DIRECTORES DEPORTIVOS A CARGO DE UNA SEDE-------*/
INSERT INTO Empleado_Cargo VALUES (1,'2','3','1',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (2,'3','3','1',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (3,'4','3','2',sysdate,NULL);

/*----------DOCENTES-------*/
/*-----DOCENTE A CARGO DE ESPACIOS (SALONES) EN MACARENA-----*/
INSERT INTO Empleado_Cargo VALUES (4,'8','2','3',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (5,'9','2','3',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (6,'10','2','3',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (7,'11','2','3',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (8,'12','2','3',sysdate,NULL);

/*-----DOCENTE A CARGO DE ESPACIOS (SALONES) EN LA 40-----*/
INSERT INTO Empleado_Cargo VALUES (9,'22','2','4',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (10,'23','2','4',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (11,'24','2','4',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (12,'25','2','4',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (13,'26','2','4',sysdate,NULL);

/*-----DOCENTE A CARGO DE ESPACIOS (SALONES 1-5) EN VIVERO-----*/
INSERT INTO Empleado_Cargo VALUES (14,'36','2','5',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (15,'37','2','5',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (16,'38','2','5',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (17,'39','2','5',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (18,'40','2','5',sysdate,NULL);

/*-----DOCENTE A CARGO DE ESPACIOS (SALONES 6-10) EN VIVERO-----*/
INSERT INTO Empleado_Cargo VALUES (19,'41','2','6',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (20,'42','2','6',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (21,'43','2','6',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (22,'44','2','6',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (23,'45','2','6',sysdate,NULL);

/*-----AUXILIARES A CARGO DE UNA SEDE-------*/
INSERT INTO Empleado_Cargo VALUES (24,'2','1','7',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (25,'3','1','8',sysdate,NULL);

/*-----ENTRENADORES A CARGO DE UN CAMPO DE UNA SEDE-------*/
INSERT INTO Empleado_Cargo VALUES (26,'5','6','9',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (26,'19','6','10',sysdate,NULL);
INSERT INTO Empleado_Cargo VALUES (26,'33','6','11',sysdate,NULL);

/*---------ESTUDIANTES DE CADA SEDE-------*/
/*--------MACARENA-------*/
INSERT INTO Estudiante VALUES ('1','2','Luis Angel','Carrasco Aznar',sysdate,'lcarrasco@udistrital.edu.co','05/09/1999');
INSERT INTO Estudiante VALUES ('2','2','Florinda','Manjón Egea',sysdate,'fmanjon@udistrital.edu.co','04/07/1998');
INSERT INTO Estudiante VALUES ('3','2','Jenaro','Cuenca Garmendia',sysdate,'jcuenca@udistrital.edu.co','11/11/2000');

/*--------LA 40-------*/
INSERT INTO Estudiante VALUES ('4','3','Aranzazu','Ramon Salom',sysdate,'aramon@udistrital.edu.co','05/09/1999');
INSERT INTO Estudiante VALUES ('5','3','Valerio','Moraleda Muro',sysdate,'vmoraleda@udistrital.edu.co','04/07/1998');
INSERT INTO Estudiante VALUES ('6','3','Cecilio','Vallejo Sarabia',sysdate,'cvallejo@udistrital.edu.co','11/11/2000');

/*--------VIVERO-------*/
INSERT INTO Estudiante VALUES ('7','4','Javier','Cortina Bellido',sysdate,'jcortina@udistrital.edu.co','01/05/1998');
INSERT INTO Estudiante VALUES ('8','4','Toñito','Lasa Bernal',sysdate,'tlasa@udistrital.edu.co','06/02/1997');
INSERT INTO Estudiante VALUES ('9','4','Albert','Carnero Ramis',sysdate,'acarnero@udistrital.edu.co','02/11/2002');
INSERT INTO Estudiante VALUES ('10','4','Humberto','Poza Sacristán',sysdate,'hpoza@udistrital.edu.co','03/12/1999');

/*----------DIA-------*/
INSERT INTO Dia VALUES ('1','Lunes');
INSERT INTO Dia VALUES ('2','Martes');
INSERT INTO Dia VALUES ('3','Miercoles');
INSERT INTO Dia VALUES ('4','Jueves');
INSERT INTO Dia VALUES ('5','Viernes');
INSERT INTO Dia VALUES ('6','Sabado');
INSERT INTO Dia VALUES ('7','Domingo');

/*-----------PROGRAMACIÓN------------*/
/*-------------CURSOS---------*/
INSERT INTO Programacion VALUES (1,'5','1','20191','CU','08','10','1',50,NULL);
INSERT INTO Programacion VALUES (2,'7','4','20201','CU','06','08','1',45,NULL);
INSERT INTO Programacion VALUES (3,'19','6','20191','CU','10','12','1',30,NULL);
INSERT INTO Programacion VALUES (4,'33','9','20211','CU','12','14','1',40,NULL);

/*--------EQUIPOS DE ENTRENAMIENTO------*/
INSERT INTO Programacion VALUES (5,'5','5','20191','EN','06','08','2',50,NULL);
INSERT INTO Programacion VALUES (6,'19','5','20193','EN','08','10','2',45,NULL);
INSERT INTO Programacion VALUES (7,'33','6','20201','EN','10','12','2',30,NULL);
INSERT INTO Programacion VALUES (8,'33','6','20203','EN','12','14','2',40,NULL);

/*------------PRÁCTICA LIBRE---------*/
INSERT INTO Programacion VALUES (9,'6','1','20191','PR','10','12','3',50,NULL);
INSERT INTO Programacion VALUES (10,'20','1','20193','PR','12','14','3',45,NULL);
INSERT INTO Programacion VALUES (11,'34','2','20201','PR','14','16','3',30,NULL);
INSERT INTO Programacion VALUES (12,'34','2','20203','PR','16','18','3',40,NULL);

/*-------------ESPACIO DEPORTE-----------*/
INSERT INTO Espacio_Deporte VALUES ('1','5');
INSERT INTO Espacio_Deporte VALUES ('7','4');
INSERT INTO Espacio_Deporte VALUES ('6','19');
INSERT INTO Espacio_Deporte VALUES ('9','33');
INSERT INTO Espacio_Deporte VALUES ('5','5');
INSERT INTO Espacio_Deporte VALUES ('5','19');
INSERT INTO Espacio_Deporte VALUES ('6','33');
INSERT INTO Espacio_Deporte VALUES ('1','6');
INSERT INTO Espacio_Deporte VALUES ('1','20');
INSERT INTO Espacio_Deporte VALUES ('2','34');

/*-------------ELEMENTO DEPORTIVO--------*/
/*-------------SEDE MACARENA--------*/
INSERT INTO ELEMENDEPORTIVO VALUES (1,'1','1','2','3',sysdate);
INSERT INTO ELEMENDEPORTIVO VALUES (2,'2','2','2','3',sysdate);
INSERT INTO ELEMENDEPORTIVO VALUES (3,'3','1','2','1',sysdate);
INSERT INTO ELEMENDEPORTIVO VALUES (4,'4','2','2','1',sysdate);
INSERT INTO ELEMENDEPORTIVO VALUES (5,'5','2','2','4',sysdate);

/*-------------SEDE LA 40--------*/
INSERT INTO ELEMENDEPORTIVO VALUES (6,'6','1','3','3',sysdate);
INSERT INTO ELEMENDEPORTIVO VALUES (7,'7','2','3','4',sysdate);
INSERT INTO ELEMENDEPORTIVO VALUES (8,'8','1','3','5',sysdate);
INSERT INTO ELEMENDEPORTIVO VALUES (9,'9','2','3','1',sysdate);
INSERT INTO ELEMENDEPORTIVO VALUES (10,'10','1','3','3',sysdate);

