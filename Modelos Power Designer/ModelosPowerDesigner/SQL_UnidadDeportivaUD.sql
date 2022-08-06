/*==============================================================*/
/* DBMS name:      ORACLE Version 12c                           */
/* Created on:     06/08/2022 03:23:57 p. m.                    */
/*==============================================================*/


alter table ASISMIEMBROEQUIPO
   drop constraint FK_ASISMIEM_RELATIONS_MIEMBROE;

alter table ASISMIEMBROEQUIPO
   drop constraint FK_ASISMIEM_RELATIONS_PROGRAMA;

alter table ASISTIRRESPONSABLE
   drop constraint FK_ASISTIRR_RELATIONS_RESPONSA;

alter table DEPORTE_TIPOELEMENTO
   drop constraint FK_DEPORTE__RELATIONS_DEPORTE;

alter table DEPORTE_TIPOELEMENTO
   drop constraint FK_DEPORTE__RELATIONS_TIPOELEM;

alter table ELEMENDEPORTIVO
   drop constraint FK_ELEMENDE_RELATIONS_ESTADO;

alter table ELEMENDEPORTIVO
   drop constraint FK_ELEMENDE_RELATIONS_ESPACIO;

alter table ELEMENDEPORTIVO
   drop constraint FK_ELEMENDE_RELATIONS_MARCA;

alter table ELEMENDEPORTIVO
   drop constraint FK_ELEMENDE_RELATIONS_TIPOELEM;

alter table EMPLEADO_CARGO
   drop constraint FK_EMPLEADO_RELATIONS_ESPACIO;

alter table EMPLEADO_CARGO
   drop constraint FK_EMPLEADO_RELATIONS_CARGO;

alter table EMPLEADO_CARGO
   drop constraint FK_EMPLEADO_RELATIONS_EMPLEADO;

alter table EQUIPO
   drop constraint FK_EQUIPO_RELATIONS_EMPLEADO;

alter table EQUIPO
   drop constraint FK_EQUIPO_RELATIONS_DEPORTE;

alter table ESPACIO
   drop constraint FK_ESPACIO_RELATIONS_TIPOESPA;

alter table ESPACIO
   drop constraint FK_ESPACIO_RELATIONS_ESPACIO;

alter table ESPACIO_DEPORTE
   drop constraint FK_ESPACIO__RELATIONS_DEPORTE;

alter table ESPACIO_DEPORTE
   drop constraint FK_ESPACIO__RELATIONS_ESPACIO;

alter table ESTUDIANTE
   drop constraint FK_ESTUDIAN_RELATIONS_ESPACIO;

alter table INSCRITOPACLIBRE
   drop constraint FK_INSCRITO_RELATIONS_PROGRAMA;

alter table INSCRITOPACLIBRE
   drop constraint FK_INSCRITO_RELATIONS_EMPLEADO;

alter table INSCRITOPACLIBRE
   drop constraint FK_INSCRITO_RELATIONS_ESTUDIAN;

alter table MIEMBROEQUIPO
   drop constraint FK_MIEMBROE_RELATIONS_EQUIPO;

alter table MIEMBROEQUIPO
   drop constraint FK_MIEMBROE_RELATIONS_ESTUDIAN;

alter table PRESTAMO
   drop constraint FK_PRESTAMO_RELATIONS_ASISTIRR;

alter table PRESTAMO
   drop constraint FK_PRESTAMO_RELATIONS_ELEMENDE;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_RELATIONS_ESPACIO;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_RELATIONS_DEPORTE;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_RELATIONS_PERIODO;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_RELATIONS_ACTIVIDA;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_RELATIONS_HORA2;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_RELATIONS_HORA;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_RELATIONS_DIA;

alter table RESPONSABLE
   drop constraint FK_RESPONSA_RELATIONS_ROL;

alter table RESPONSABLE
   drop constraint FK_RESPONSA_RELATIONS_EMPLEADO;

alter table RESPONSABLE
   drop constraint FK_RESPONSA_RELATIONS_ESTUDIAN;

alter table RESPONSABLE
   drop constraint FK_RESPONSA_RELATIONS_PROGRAMA;

drop table ACTIVIDAD cascade constraints;

drop index RELATIONSHIP_26_FK;

drop index RELATIONSHIP_1_FK;

drop table ASISMIEMBROEQUIPO cascade constraints;

drop index RELATIONSHIP_22_FK;

drop table ASISTIRRESPONSABLE cascade constraints;

drop table CARGO cascade constraints;

drop table DEPORTE cascade constraints;

drop index RELATIONSHIP_8_FK;

drop index RELATIONSHIP_36_FK;

drop table DEPORTE_TIPOELEMENTO cascade constraints;

drop table DIA cascade constraints;

drop index RELATIONSHIP_27_FK;

drop index RELATIONSHIP_13_FK;

drop index RELATIONSHIP_10_FK;

drop index RELATIONSHIP_9_FK;

drop table ELEMENDEPORTIVO cascade constraints;

drop table EMPLEADO cascade constraints;

drop index RELATIONSHIP_18_FK;

drop index RELATIONSHIP_17_FK;

drop index RELATIONSHIP_16_FK;

drop table EMPLEADO_CARGO cascade constraints;

drop index RELATIONSHIP_7_FK;

drop index RELATIONSHIP_4_FK;

drop table EQUIPO cascade constraints;

drop index RELATIONSHIP_6_FK;

drop index RELATIONSHIP_5_FK;

drop table ESPACIO cascade constraints;

drop index RELATIONSHIP_11_FK;

drop index RELATIONSHIP_37_FK;

drop table ESPACIO_DEPORTE cascade constraints;

drop table ESTADO cascade constraints;

drop index RELATIONSHIP_15_FK;

drop table ESTUDIANTE cascade constraints;

drop table HORA cascade constraints;

drop index RELATIONSHIP_35_FK;

drop index RELATIONSHIP_34_FK;

drop index RELATIONSHIP_25_FK;

drop table INSCRITOPACLIBRE cascade constraints;

drop table MARCA cascade constraints;

drop index RELATIONSHIP_3_FK;

drop index RELATIONSHIP_2_FK;

drop table MIEMBROEQUIPO cascade constraints;

drop table PERIODO cascade constraints;

drop index RELATIONSHIP_28_FK;

drop index RELATIONSHIP_24_FK;

drop table PRESTAMO cascade constraints;

drop index RELATIONSHIP_33_FK;

drop index RELATIONSHIP_32_FK;

drop index RELATIONSHIP_31_FK;

drop index RELATIONSHIP_30_FK;

drop index RELATIONSHIP_29_FK;

drop index RELATIONSHIP_14_FK;

drop index RELATIONSHIP_12_FK;

drop table PROGRAMACION cascade constraints;

drop index RELATIONSHIP_23_FK;

drop index RELATIONSHIP_21_FK;

drop index RELATIONSHIP_20_FK;

drop index RELATIONSHIP_19_FK;

drop table RESPONSABLE cascade constraints;

drop table ROL cascade constraints;

drop table TIPOELEMENTO cascade constraints;

drop table TIPOESPACIO cascade constraints;

/*==============================================================*/
/* Table: ACTIVIDAD                                             */
/*==============================================================*/
create table ACTIVIDAD (
   IDACTIVIDAD          VARCHAR2(2)           not null,
   DESCACTIVIDAD        VARCHAR2(30)          not null,
   constraint PK_ACTIVIDAD primary key (IDACTIVIDAD)
);

/*==============================================================*/
/* Table: ASISMIEMBROEQUIPO                                     */
/*==============================================================*/
create table ASISMIEMBROEQUIPO (
   CONSECPROGRA_FKASISMIEMEQUIPO NUMBER(4,0)           not null,
   CONMIEMEQUIPO        NUMBER(4,0)           not null,
   CONSEEQUIPO_FKASISMIEMEQUIPO NUMBER(3,0)           not null,
   ITEMMIEMBRO_FKASISMIEMEQUIPO NUMBER(3,0)           not null,
   constraint PK_ASISMIEMBROEQUIPO primary key (CONSECPROGRA_FKASISMIEMEQUIPO, CONMIEMEQUIPO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on ASISMIEMBROEQUIPO (
   CONSEEQUIPO_FKASISMIEMEQUIPO ASC,
   ITEMMIEMBRO_FKASISMIEMEQUIPO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_26_FK on ASISMIEMBROEQUIPO (
   CONSECPROGRA_FKASISMIEMEQUIPO ASC
);

/*==============================================================*/
/* Table: ASISTIRRESPONSABLE                                    */
/*==============================================================*/
create table ASISTIRRESPONSABLE (
   CONSECPROGRA_FKASISTIRRESPONSA NUMBER(4,0)           not null,
   CONSECRES_FKASISTIRRESPONSABLE NUMBER(4,0)           not null,
   CONSECASISRES        NUMBER(4,0)           not null,
   FECHAASISRES         DATE                  not null,
   HORAASISRES          DATE                  not null,
   constraint PK_ASISTIRRESPONSABLE primary key (CONSECPROGRA_FKASISTIRRESPONSA, CONSECRES_FKASISTIRRESPONSABLE, CONSECASISRES)
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_22_FK on ASISTIRRESPONSABLE (
   CONSECPROGRA_FKASISTIRRESPONSA ASC,
   CONSECRES_FKASISTIRRESPONSABLE ASC
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   IDCARGO              VARCHAR2(2)           not null,
   DESCCARGO            VARCHAR2(30)          not null,
   constraint PK_CARGO primary key (IDCARGO)
);

/*==============================================================*/
/* Table: DEPORTE                                               */
/*==============================================================*/
create table DEPORTE (
   IDDEPORTE            VARCHAR2(2)           not null,
   NOMDEPORTE           VARCHAR2(20)          not null,
   constraint PK_DEPORTE primary key (IDDEPORTE)
);

/*==============================================================*/
/* Table: DEPORTE_TIPOELEMENTO                                  */
/*==============================================================*/
create table DEPORTE_TIPOELEMENTO (
   IDTIPOELEMENTO_FKDEPORTE_TIPOE VARCHAR2(2)           not null,
   IDDEPORTE_FKDEPORTE_TIPOELEMEN VARCHAR2(2)           not null,
   constraint PK_DEPORTE_TIPOELEMENTO primary key (IDTIPOELEMENTO_FKDEPORTE_TIPOE, IDDEPORTE_FKDEPORTE_TIPOELEMEN)
);

/*==============================================================*/
/* Index: RELATIONSHIP_36_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_36_FK on DEPORTE_TIPOELEMENTO (
   IDDEPORTE_FKDEPORTE_TIPOELEMEN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on DEPORTE_TIPOELEMENTO (
   IDTIPOELEMENTO_FKDEPORTE_TIPOE ASC
);

/*==============================================================*/
/* Table: DIA                                                   */
/*==============================================================*/
create table DIA (
   IDDIA                VARCHAR2(2)           not null,
   NOMDIA               VARCHAR2(10)          not null,
   constraint PK_DIA primary key (IDDIA)
);

/*==============================================================*/
/* Table: ELEMENDEPORTIVO                                       */
/*==============================================================*/
create table ELEMENDEPORTIVO (
   CONSECELEMENTO       NUMBER(5,0)           not null,
   IDTIPOELEMENTO_FKELEMENDEPORTI VARCHAR2(2)           not null,
   IDESTADO_FKELEMENDEPORTIVO VARCHAR2(2)           not null,
   CODESPACIO_FKELEMENDEPORTIVO VARCHAR2(2)           not null,
   IDMARCA_FKELEMENDEPORTIVO VARCHAR2(2)           not null,
   FECHAREGISTRO        DATE                  not null,
   constraint PK_ELEMENDEPORTIVO primary key (CONSECELEMENTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on ELEMENDEPORTIVO (
   IDTIPOELEMENTO_FKELEMENDEPORTI ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on ELEMENDEPORTIVO (
   IDESTADO_FKELEMENDEPORTIVO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on ELEMENDEPORTIVO (
   CODESPACIO_FKELEMENDEPORTIVO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_27_FK on ELEMENDEPORTIVO (
   IDMARCA_FKELEMENDEPORTIVO ASC
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   CODEMPLEADO          VARCHAR2(4)           not null,
   NOMEMPLEADO          VARCHAR2(20)          not null,
   APELLEMPLEADO        VARCHAR2(20)          not null,
   FECHAREGISTRO        DATE                  not null,
   CORREOUD             VARCHAR2(30)          not null,
   constraint PK_EMPLEADO primary key (CODEMPLEADO)
);

/*==============================================================*/
/* Table: EMPLEADO_CARGO                                        */
/*==============================================================*/
create table EMPLEADO_CARGO (
   CONSEC               NUMBER(3,0)           not null,
   CODESPACIO_FKEMPLEADO_CARGO VARCHAR2(2)           not null,
   IDCARGO_FKEMPLEADO_CARGO VARCHAR2(2)           not null,
   CODEMPLEADO_FKEMPLEADO_CARGO VARCHAR2(4)           not null,
   FECHACARGO           DATE                  not null,
   FECHAFINCAR          DATE,
   constraint PK_EMPLEADO_CARGO primary key (CONSEC)
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on EMPLEADO_CARGO (
   CODESPACIO_FKEMPLEADO_CARGO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on EMPLEADO_CARGO (
   IDCARGO_FKEMPLEADO_CARGO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on EMPLEADO_CARGO (
   CODEMPLEADO_FKEMPLEADO_CARGO ASC
);

/*==============================================================*/
/* Table: EQUIPO                                                */
/*==============================================================*/
create table EQUIPO (
   CONSEEQUIPO          NUMBER(3,0)           not null,
   CODEMPLEADO_FKEQUIPO VARCHAR2(4)           not null,
   IDDEPORTE_FKEQUIPO   VARCHAR2(2)           not null,
   FECHARESOL           DATE                  not null,
   constraint PK_EQUIPO primary key (CONSEEQUIPO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on EQUIPO (
   CODEMPLEADO_FKEQUIPO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on EQUIPO (
   IDDEPORTE_FKEQUIPO ASC
);

/*==============================================================*/
/* Table: ESPACIO                                               */
/*==============================================================*/
create table ESPACIO (
   CODESPACIO           VARCHAR2(2)           not null,
   IDTIPOESPACIO_FKESPACIO VARCHAR2(2)           not null,
   ESP_CODESPACIO_FKESPACIO VARCHAR2(2),
   NOMESPACIO           VARCHAR2(30)          not null,
   constraint PK_ESPACIO primary key (CODESPACIO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on ESPACIO (
   IDTIPOESPACIO_FKESPACIO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on ESPACIO (
   ESP_CODESPACIO_FKESPACIO ASC
);

/*==============================================================*/
/* Table: ESPACIO_DEPORTE                                       */
/*==============================================================*/
create table ESPACIO_DEPORTE (
   IDDEPORTE_FKESPACIO_DEPORTE VARCHAR2(2)           not null,
   CODESPACIO_FKESPACIO_DEPORTE VARCHAR2(2)           not null,
   constraint PK_ESPACIO_DEPORTE primary key (IDDEPORTE_FKESPACIO_DEPORTE, CODESPACIO_FKESPACIO_DEPORTE)
);

/*==============================================================*/
/* Index: RELATIONSHIP_37_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_37_FK on ESPACIO_DEPORTE (
   CODESPACIO_FKESPACIO_DEPORTE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on ESPACIO_DEPORTE (
   IDDEPORTE_FKESPACIO_DEPORTE ASC
);

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   IDESTADO             VARCHAR2(2)           not null,
   DESCESTADO           VARCHAR2(20)          not null,
   constraint PK_ESTADO primary key (IDESTADO)
);

/*==============================================================*/
/* Table: ESTUDIANTE                                            */
/*==============================================================*/
create table ESTUDIANTE (
   CODESTUDIANTE        VARCHAR2(12)          not null,
   CODESPACIO_FKESTUDIANTE VARCHAR2(2)           not null,
   NOMESTUDIANTE        VARCHAR2(30)          not null,
   APELLESTUDIANTE      VARCHAR2(30)          not null,
   FECHAREGESTUDIANTE   DATE                  not null,
   CORREOUDESTUDIANTE   VARCHAR2(30)          not null,
   FECHANACESTUDIANTE   DATE                  not null,
   constraint PK_ESTUDIANTE primary key (CODESTUDIANTE)
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on ESTUDIANTE (
   CODESPACIO_FKESTUDIANTE ASC
);

/*==============================================================*/
/* Table: HORA                                                  */
/*==============================================================*/
create table HORA (
   IDHORA               VARCHAR2(2)           not null,
   constraint PK_HORA primary key (IDHORA)
);

/*==============================================================*/
/* Table: INSCRITOPACLIBRE                                      */
/*==============================================================*/
create table INSCRITOPACLIBRE (
   CONSECPROGRA_FKINSCRITOPACLIBR NUMBER(4,0)           not null,
   CONSECPRACT          NUMBER(4,0)           not null,
   CODEMPLEADO_FKINSCRITOPACLIBRE VARCHAR2(4),
   CODESTUDIANTE_FKINSCRITOPACLIB VARCHAR2(12),
   constraint PK_INSCRITOPACLIBRE primary key (CONSECPROGRA_FKINSCRITOPACLIBR, CONSECPRACT)
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_25_FK on INSCRITOPACLIBRE (
   CONSECPROGRA_FKINSCRITOPACLIBR ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_34_FK on INSCRITOPACLIBRE (
   CODEMPLEADO_FKINSCRITOPACLIBRE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_35_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_35_FK on INSCRITOPACLIBRE (
   CODESTUDIANTE_FKINSCRITOPACLIB ASC
);

/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
   IDMARCA              VARCHAR2(2)           not null,
   NOMMARCA             VARCHAR2(20)          not null,
   constraint PK_MARCA primary key (IDMARCA)
);

/*==============================================================*/
/* Table: MIEMBROEQUIPO                                         */
/*==============================================================*/
create table MIEMBROEQUIPO (
   CONSEEQUIPO_FKMIEMEQUIPO NUMBER(3,0)           not null,
   ITEMMIEMBRO          NUMBER(3,0)           not null,
   CODESTUDIANTE_FKMIEMEQUIPO VARCHAR2(12)          not null,
   constraint PK_MIEMBROEQUIPO primary key (CONSEEQUIPO_FKMIEMEQUIPO, ITEMMIEMBRO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on MIEMBROEQUIPO (
   CONSEEQUIPO_FKMIEMEQUIPO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on MIEMBROEQUIPO (
   CODESTUDIANTE_FKMIEMEQUIPO ASC
);

/*==============================================================*/
/* Table: PERIODO                                               */
/*==============================================================*/
create table PERIODO (
   IDPERIODO            VARCHAR2(5)           not null,
   constraint PK_PERIODO primary key (IDPERIODO)
);

/*==============================================================*/
/* Table: PRESTAMO                                              */
/*==============================================================*/
create table PRESTAMO (
   CONSECPRESTAMO       NUMBER(4,0)           not null,
   CONSECPROGRA_FKPRESTAMO NUMBER(4,0)           not null,
   CONSECRES_FKPRESTAMO NUMBER(4,0)           not null,
   CONSECASISRES_FKPRESTAMO NUMBER(4,0)           not null,
   CONSECELEMENTO_FKPRESTAMO NUMBER(5,0)           not null,
   constraint PK_PRESTAMO primary key (CONSECPRESTAMO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on PRESTAMO (
   CONSECPROGRA_FKPRESTAMO ASC,
   CONSECRES_FKPRESTAMO ASC,
   CONSECASISRES_FKPRESTAMO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_28_FK on PRESTAMO (
   CONSECELEMENTO_FKPRESTAMO ASC
);

/*==============================================================*/
/* Table: PROGRAMACION                                          */
/*==============================================================*/
create table PROGRAMACION (
   CONSECPROGRA         NUMBER(4,0)           not null,
   CODESPACIO_FKPROGRAMACION VARCHAR2(2)           not null,
   IDDEPORTE_FKPROGRAMACION VARCHAR2(2)           not null,
   IDPERIODO_FKPROGRAMACION VARCHAR2(5)           not null,
   IDACTIVIDAD_FKPROGRAMACION VARCHAR2(2)           not null,
   IDHORAINICIO_FKPROGRAMACION VARCHAR2(2)           not null,
   IDHORAFIN_FKPROGRAMACION VARCHAR2(2)           not null,
   IDDIA_FKPROGRAMACION VARCHAR2(2)           not null,
   CUPO                 NUMBER(3,0)           not null,
   NOINSCRITO           NUMBER(3,0),
   constraint PK_PROGRAMACION primary key (CONSECPROGRA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on PROGRAMACION (
   CODESPACIO_FKPROGRAMACION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on PROGRAMACION (
   IDDEPORTE_FKPROGRAMACION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_29_FK on PROGRAMACION (
   IDPERIODO_FKPROGRAMACION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_30_FK on PROGRAMACION (
   IDACTIVIDAD_FKPROGRAMACION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_31_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_31_FK on PROGRAMACION (
   IDHORAINICIO_FKPROGRAMACION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_32_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_32_FK on PROGRAMACION (
   IDHORAFIN_FKPROGRAMACION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_33_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_33_FK on PROGRAMACION (
   IDDIA_FKPROGRAMACION ASC
);

/*==============================================================*/
/* Table: RESPONSABLE                                           */
/*==============================================================*/
create table RESPONSABLE (
   CONSECPROGRA_FKRESPONSABLE NUMBER(4,0)           not null,
   CONSECRES            NUMBER(4,0)           not null,
   IDROL_FKRESPONSABLE  VARCHAR2(1),
   CODEMPLEADO_FKRESPONSABLE VARCHAR2(4)           not null,
   CODESTUDIANTE_FKRESPONSABLE VARCHAR2(12),
   FECHAINI             DATE                  not null,
   FECHAFIN             DATE                  not null,
   constraint PK_RESPONSABLE primary key (CONSECPROGRA_FKRESPONSABLE, CONSECRES)
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_19_FK on RESPONSABLE (
   IDROL_FKRESPONSABLE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_20_FK on RESPONSABLE (
   CODEMPLEADO_FKRESPONSABLE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_21_FK on RESPONSABLE (
   CODESTUDIANTE_FKRESPONSABLE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on RESPONSABLE (
   CONSECPROGRA_FKRESPONSABLE ASC
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   IDROL                VARCHAR2(1)           not null,
   DESCROL              VARCHAR2(20)          not null,
   constraint PK_ROL primary key (IDROL)
);

/*==============================================================*/
/* Table: TIPOELEMENTO                                          */
/*==============================================================*/
create table TIPOELEMENTO (
   IDTIPOELEMENTO       VARCHAR2(2)           not null,
   DESCTIPOELEMENTO     VARCHAR2(40)          not null,
   constraint PK_TIPOELEMENTO primary key (IDTIPOELEMENTO)
);

/*==============================================================*/
/* Table: TIPOESPACIO                                           */
/*==============================================================*/
create table TIPOESPACIO (
   IDTIPOESPACIO        VARCHAR2(2)           not null,
   DESCTIPOESPACIO      VARCHAR2(30)          not null,
   constraint PK_TIPOESPACIO primary key (IDTIPOESPACIO)
);

alter table ASISMIEMBROEQUIPO
   add constraint FK_ASISMIEM_RELATIONS_MIEMBROE foreign key (CONSEEQUIPO_FKASISMIEMEQUIPO, ITEMMIEMBRO_FKASISMIEMEQUIPO)
      references MIEMBROEQUIPO (CONSEEQUIPO_FKMIEMEQUIPO, ITEMMIEMBRO);

alter table ASISMIEMBROEQUIPO
   add constraint FK_ASISMIEM_RELATIONS_PROGRAMA foreign key (CONSECPROGRA_FKASISMIEMEQUIPO)
      references PROGRAMACION (CONSECPROGRA);

alter table ASISTIRRESPONSABLE
   add constraint FK_ASISTIRR_RELATIONS_RESPONSA foreign key (CONSECPROGRA_FKASISTIRRESPONSA, CONSECRES_FKASISTIRRESPONSABLE)
      references RESPONSABLE (CONSECPROGRA_FKRESPONSABLE, CONSECRES);

alter table DEPORTE_TIPOELEMENTO
   add constraint FK_DEPORTE__RELATIONS_DEPORTE foreign key (IDDEPORTE_FKDEPORTE_TIPOELEMEN)
      references DEPORTE (IDDEPORTE);

alter table DEPORTE_TIPOELEMENTO
   add constraint FK_DEPORTE__RELATIONS_TIPOELEM foreign key (IDTIPOELEMENTO_FKDEPORTE_TIPOE)
      references TIPOELEMENTO (IDTIPOELEMENTO);

alter table ELEMENDEPORTIVO
   add constraint FK_ELEMENDE_RELATIONS_ESTADO foreign key (IDESTADO_FKELEMENDEPORTIVO)
      references ESTADO (IDESTADO);

alter table ELEMENDEPORTIVO
   add constraint FK_ELEMENDE_RELATIONS_ESPACIO foreign key (CODESPACIO_FKELEMENDEPORTIVO)
      references ESPACIO (CODESPACIO);

alter table ELEMENDEPORTIVO
   add constraint FK_ELEMENDE_RELATIONS_MARCA foreign key (IDMARCA_FKELEMENDEPORTIVO)
      references MARCA (IDMARCA);

alter table ELEMENDEPORTIVO
   add constraint FK_ELEMENDE_RELATIONS_TIPOELEM foreign key (IDTIPOELEMENTO_FKELEMENDEPORTI)
      references TIPOELEMENTO (IDTIPOELEMENTO);

alter table EMPLEADO_CARGO
   add constraint FK_EMPLEADO_RELATIONS_ESPACIO foreign key (CODESPACIO_FKEMPLEADO_CARGO)
      references ESPACIO (CODESPACIO);

alter table EMPLEADO_CARGO
   add constraint FK_EMPLEADO_RELATIONS_CARGO foreign key (IDCARGO_FKEMPLEADO_CARGO)
      references CARGO (IDCARGO);

alter table EMPLEADO_CARGO
   add constraint FK_EMPLEADO_RELATIONS_EMPLEADO foreign key (CODEMPLEADO_FKEMPLEADO_CARGO)
      references EMPLEADO (CODEMPLEADO);

alter table EQUIPO
   add constraint FK_EQUIPO_RELATIONS_EMPLEADO foreign key (CODEMPLEADO_FKEQUIPO)
      references EMPLEADO (CODEMPLEADO);

alter table EQUIPO
   add constraint FK_EQUIPO_RELATIONS_DEPORTE foreign key (IDDEPORTE_FKEQUIPO)
      references DEPORTE (IDDEPORTE);

alter table ESPACIO
   add constraint FK_ESPACIO_RELATIONS_TIPOESPA foreign key (IDTIPOESPACIO_FKESPACIO)
      references TIPOESPACIO (IDTIPOESPACIO);

alter table ESPACIO
   add constraint FK_ESPACIO_RELATIONS_ESPACIO foreign key (ESP_CODESPACIO_FKESPACIO)
      references ESPACIO (CODESPACIO);

alter table ESPACIO_DEPORTE
   add constraint FK_ESPACIO__RELATIONS_DEPORTE foreign key (IDDEPORTE_FKESPACIO_DEPORTE)
      references DEPORTE (IDDEPORTE);

alter table ESPACIO_DEPORTE
   add constraint FK_ESPACIO__RELATIONS_ESPACIO foreign key (CODESPACIO_FKESPACIO_DEPORTE)
      references ESPACIO (CODESPACIO);

alter table ESTUDIANTE
   add constraint FK_ESTUDIAN_RELATIONS_ESPACIO foreign key (CODESPACIO_FKESTUDIANTE)
      references ESPACIO (CODESPACIO);

alter table INSCRITOPACLIBRE
   add constraint FK_INSCRITO_RELATIONS_PROGRAMA foreign key (CONSECPROGRA_FKINSCRITOPACLIBR)
      references PROGRAMACION (CONSECPROGRA);

alter table INSCRITOPACLIBRE
   add constraint FK_INSCRITO_RELATIONS_EMPLEADO foreign key (CODEMPLEADO_FKINSCRITOPACLIBRE)
      references EMPLEADO (CODEMPLEADO);

alter table INSCRITOPACLIBRE
   add constraint FK_INSCRITO_RELATIONS_ESTUDIAN foreign key (CODESTUDIANTE_FKINSCRITOPACLIB)
      references ESTUDIANTE (CODESTUDIANTE);

alter table MIEMBROEQUIPO
   add constraint FK_MIEMBROE_RELATIONS_EQUIPO foreign key (CONSEEQUIPO_FKMIEMEQUIPO)
      references EQUIPO (CONSEEQUIPO);

alter table MIEMBROEQUIPO
   add constraint FK_MIEMBROE_RELATIONS_ESTUDIAN foreign key (CODESTUDIANTE_FKMIEMEQUIPO)
      references ESTUDIANTE (CODESTUDIANTE);

alter table PRESTAMO
   add constraint FK_PRESTAMO_RELATIONS_ASISTIRR foreign key (CONSECPROGRA_FKPRESTAMO, CONSECRES_FKPRESTAMO, CONSECASISRES_FKPRESTAMO)
      references ASISTIRRESPONSABLE (CONSECPROGRA_FKASISTIRRESPONSA, CONSECRES_FKASISTIRRESPONSABLE, CONSECASISRES);

alter table PRESTAMO
   add constraint FK_PRESTAMO_RELATIONS_ELEMENDE foreign key (CONSECELEMENTO_FKPRESTAMO)
      references ELEMENDEPORTIVO (CONSECELEMENTO);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_RELATIONS_ESPACIO foreign key (CODESPACIO_FKPROGRAMACION)
      references ESPACIO (CODESPACIO);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_RELATIONS_DEPORTE foreign key (IDDEPORTE_FKPROGRAMACION)
      references DEPORTE (IDDEPORTE);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_RELATIONS_PERIODO foreign key (IDPERIODO_FKPROGRAMACION)
      references PERIODO (IDPERIODO);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_RELATIONS_ACTIVIDA foreign key (IDACTIVIDAD_FKPROGRAMACION)
      references ACTIVIDAD (IDACTIVIDAD);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_RELATIONS_HORA2 foreign key (IDHORAINICIO_FKPROGRAMACION)
      references HORA (IDHORA);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_RELATIONS_HORA foreign key (IDHORAFIN_FKPROGRAMACION)
      references HORA (IDHORA);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_RELATIONS_DIA foreign key (IDDIA_FKPROGRAMACION)
      references DIA (IDDIA);

alter table RESPONSABLE
   add constraint FK_RESPONSA_RELATIONS_ROL foreign key (IDROL_FKRESPONSABLE)
      references ROL (IDROL);

alter table RESPONSABLE
   add constraint FK_RESPONSA_RELATIONS_EMPLEADO foreign key (CODEMPLEADO_FKRESPONSABLE)
      references EMPLEADO (CODEMPLEADO);

alter table RESPONSABLE
   add constraint FK_RESPONSA_RELATIONS_ESTUDIAN foreign key (CODESTUDIANTE_FKRESPONSABLE)
      references ESTUDIANTE (CODESTUDIANTE);

alter table RESPONSABLE
   add constraint FK_RESPONSA_RELATIONS_PROGRAMA foreign key (CONSECPROGRA_FKRESPONSABLE)
      references PROGRAMACION (CONSECPROGRA);

