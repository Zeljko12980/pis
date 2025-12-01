/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     17.11.2021. 11:18:02                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Adresa') and o.name = 'FK_ADRESA_POSJEDUJE_NASELJEN')
alter table Adresa
   drop constraint FK_ADRESA_POSJEDUJE_NASELJEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Filijala') and o.name = 'FK_FILIJALA_NALAZI_ADRESA')
alter table Filijala
   drop constraint FK_FILIJALA_NALAZI_ADRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Filijala') and o.name = 'FK_FILIJALA_NASTAVNIC_INSTUKTO')
alter table Filijala
   drop constraint FK_FILIJALA_NASTAVNIC_INSTUKTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Instruktor') and o.name = 'FK_INSTRUKT_RADI_INSTUKTO')
alter table Instruktor
   drop constraint FK_INSTRUKT_RADI_INSTUKTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Instruktor') and o.name = 'FK_INSTRUKT_ZIVI_ADRESA')
alter table Instruktor
   drop constraint FK_INSTRUKT_ZIVI_ADRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Instuktorski Kadar Filijale"') and o.name = 'FK_INSTUKTO_NASTAVNIC_FILIJALA')
alter table "Instuktorski Kadar Filijale"
   drop constraint FK_INSTUKTO_NASTAVNIC_FILIJALA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Jezici u filijali"') and o.name = 'FK_JEZICI U_RELATIONS_FILIJALA')
alter table "Jezici u filijali"
   drop constraint "FK_JEZICI U_RELATIONS_FILIJALA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Jezici u filijali"') and o.name = 'FK_JEZICI U_ISTORIJA_JEZIK')
alter table "Jezici u filijali"
   drop constraint "FK_JEZICI U_ISTORIJA_JEZIK"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Kurs') and o.name = 'FK_KURS_PREDAJE S_JEZIK')
alter table Kurs
   drop constraint "FK_KURS_PREDAJE S_JEZIK"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Kurs') and o.name = 'FK_KURS_RELATIONS_FILIJALA')
alter table Kurs
   drop constraint FK_KURS_RELATIONS_FILIJALA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Kurs') and o.name = 'FK_KURS_PREDAVAC_INSTRUKT')
alter table Kurs
   drop constraint FK_KURS_PREDAVAC_INSTRUKT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Naseljeno mjesto"') and o.name = 'FK_NASELJEN_SADRITI_DRAVA')
alter table "Naseljeno mjesto"
   drop constraint FK_NASELJEN_SADRITI_DRAVA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Polaznik') and o.name = 'FK_POLAZNIK_PREBIVALI_ADRESA')
alter table Polaznik
   drop constraint FK_POLAZNIK_PREBIVALI_ADRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Polaznik') and o.name = 'FK_POLAZNIK_PRIJAVLJU_PRIJAVA')
alter table Polaznik
   drop constraint FK_POLAZNIK_PRIJAVLJU_PRIJAVA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Prijava') and o.name = 'FK_PRIJAVA_RELATIONS_PLACANJA')
alter table Prijava
   drop constraint FK_PRIJAVA_RELATIONS_PLACANJA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Prijava') and o.name = 'FK_PRIJAVA_EVIDENTIR_KURS')
alter table Prijava
   drop constraint FK_PRIJAVA_EVIDENTIR_KURS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Termin') and o.name = 'FK_TERMIN_VREME ODR_KURS')
alter table Termin
   drop constraint "FK_TERMIN_VREME ODR_KURS"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Trenutni') and o.name = 'FK_TRENUTNI_TRENUTNI_FILIJALA')
alter table Trenutni
   drop constraint FK_TRENUTNI_TRENUTNI_FILIJALA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Trenutni') and o.name = 'FK_TRENUTNI_TRENUTNI2_JEZIK')
alter table Trenutni
   drop constraint FK_TRENUTNI_TRENUTNI2_JEZIK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('poznaje') and o.name = 'FK_POZNAJE_POZNAJE_JEZIK')
alter table poznaje
   drop constraint FK_POZNAJE_POZNAJE_JEZIK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('poznaje') and o.name = 'FK_POZNAJE_POZNAJE2_INSTRUKT')
alter table poznaje
   drop constraint FK_POZNAJE_POZNAJE2_INSTRUKT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Adresa')
            and   name  = 'posjeduje_FK'
            and   indid > 0
            and   indid < 255)
   drop index Adresa.posjeduje_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Adresa')
            and   type = 'U')
   drop table Adresa
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Drava')
            and   type = 'U')
   drop table Drava
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Filijala')
            and   name  = 'nastavnici u filijali_FK'
            and   indid > 0
            and   indid < 255)
   drop index Filijala."nastavnici u filijali_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Filijala')
            and   name  = 'nalazi_FK'
            and   indid > 0
            and   indid < 255)
   drop index Filijala.nalazi_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Filijala')
            and   type = 'U')
   drop table Filijala
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Instruktor')
            and   name  = 'radi_FK'
            and   indid > 0
            and   indid < 255)
   drop index Instruktor.radi_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Instruktor')
            and   name  = 'zivi_FK'
            and   indid > 0
            and   indid < 255)
   drop index Instruktor.zivi_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Instruktor')
            and   type = 'U')
   drop table Instruktor
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Instuktorski Kadar Filijale"')
            and   name  = 'nastavnici u filijali2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Instuktorski Kadar Filijale"."nastavnici u filijali2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Instuktorski Kadar Filijale"')
            and   type = 'U')
   drop table "Instuktorski Kadar Filijale"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Jezici u filijali"')
            and   name  = 'istorija_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Jezici u filijali".istorija_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Jezici u filijali"')
            and   name  = 'Relationship_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Jezici u filijali".Relationship_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Jezici u filijali"')
            and   type = 'U')
   drop table "Jezici u filijali"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Jezik')
            and   type = 'U')
   drop table Jezik
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Kurs')
            and   name  = 'Relationship_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index Kurs.Relationship_8_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Kurs')
            and   name  = 'predavac_FK'
            and   indid > 0
            and   indid < 255)
   drop index Kurs.predavac_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Kurs')
            and   name  = 'Predaje se_FK'
            and   indid > 0
            and   indid < 255)
   drop index Kurs."Predaje se_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Kurs')
            and   type = 'U')
   drop table Kurs
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Naseljeno mjesto"')
            and   name  = 'sadriti_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Naseljeno mjesto".sadriti_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Naseljeno mjesto"')
            and   type = 'U')
   drop table "Naseljeno mjesto"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Placanja')
            and   type = 'U')
   drop table Placanja
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Polaznik')
            and   name  = 'prijavljuje_FK'
            and   indid > 0
            and   indid < 255)
   drop index Polaznik.prijavljuje_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Polaznik')
            and   name  = 'prebivaliste_FK'
            and   indid > 0
            and   indid < 255)
   drop index Polaznik.prebivaliste_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Polaznik')
            and   type = 'U')
   drop table Polaznik
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Prijava')
            and   name  = 'Relationship_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index Prijava.Relationship_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Prijava')
            and   name  = 'evidentira_FK'
            and   indid > 0
            and   indid < 255)
   drop index Prijava.evidentira_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Prijava')
            and   type = 'U')
   drop table Prijava
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Termin')
            and   name  = 'vreme odrzavanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index Termin."vreme odrzavanja_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Termin')
            and   type = 'U')
   drop table Termin
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Trenutni')
            and   name  = 'Trenutni_FK'
            and   indid > 0
            and   indid < 255)
   drop index Trenutni.Trenutni_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Trenutni')
            and   name  = 'Trenutni2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Trenutni.Trenutni2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Trenutni')
            and   type = 'U')
   drop table Trenutni
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('poznaje')
            and   name  = 'poznaje_FK'
            and   indid > 0
            and   indid < 255)
   drop index poznaje.poznaje_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('poznaje')
            and   name  = 'poznaje2_FK'
            and   indid > 0
            and   indid < 255)
   drop index poznaje.poznaje2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('poznaje')
            and   type = 'U')
   drop table poznaje
go

/*==============================================================*/
/* Table: Adresa                                                */
/*==============================================================*/
create table Adresa (
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   id_adresa            int                  not null,
   "Naziv ulice"        varchar(50)          not null,
   "Broj u ulici"       varchar(1000)        not null,
   constraint PK_ADRESA primary key (id_drzava, id_naseljeno_mjesto, id_adresa)
)
go

/*==============================================================*/
/* Index: posjeduje_FK                                          */
/*==============================================================*/




create nonclustered index posjeduje_FK on Adresa (id_drzava ASC,
  id_naseljeno_mjesto ASC)
go

/*==============================================================*/
/* Table: Drava                                                */
/*==============================================================*/
create table Drava (
   id_drzava            int                  not null,
   Naziv                varchar(50)          not null,
   constraint PK_DRAVA primary key (id_drzava)
)
go

/*==============================================================*/
/* Table: Filijala                                              */
/*==============================================================*/
create table Filijala (
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   id_adresa            int                  not null,
   id_filijala          int                  not null,
   Ins_id_drzava        int                  null,
   Ins_id_naseljeno_mjesto int                  null,
   Ins_id_adresa        int                  null,
   Ins_id_filijala      int                  null,
   id_instruktorski_kadar int                  null,
   constraint PK_FILIJALA primary key (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala)
)
go

/*==============================================================*/
/* Index: nalazi_FK                                             */
/*==============================================================*/




create nonclustered index nalazi_FK on Filijala (id_drzava ASC,
  id_naseljeno_mjesto ASC,
  id_adresa ASC)
go

/*==============================================================*/
/* Index: "nastavnici u filijali_FK"                            */
/*==============================================================*/




create nonclustered index "nastavnici u filijali_FK" on Filijala (Ins_id_drzava ASC,
  Ins_id_naseljeno_mjesto ASC,
  Ins_id_adresa ASC,
  Ins_id_filijala ASC,
  id_instruktorski_kadar ASC)
go

/*==============================================================*/
/* Table: Instruktor                                            */
/*==============================================================*/
create table Instruktor (
   Ins_id_drzava        int                  not null,
   Ins_id_naseljeno_mjesto int                  not null,
   Ins_id_adresa        int                  not null,
   id_filijala          int                  not null,
   id_instruktorski_kadar int                  not null,
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   id_adresa            int                  not null,
   id_instruktora       int                  not null,
   Ime                  varchar(20)          not null,
   Prezime              varchar(20)          not null,
   constraint PK_INSTRUKTOR primary key (Ins_id_drzava, Ins_id_naseljeno_mjesto, Ins_id_adresa, id_filijala, id_instruktorski_kadar, id_drzava, id_naseljeno_mjesto, id_adresa, id_instruktora)
)
go

/*==============================================================*/
/* Index: zivi_FK                                               */
/*==============================================================*/




create nonclustered index zivi_FK on Instruktor (id_drzava ASC,
  id_naseljeno_mjesto ASC,
  id_adresa ASC)
go

/*==============================================================*/
/* Index: radi_FK                                               */
/*==============================================================*/




create nonclustered index radi_FK on Instruktor (Ins_id_drzava ASC,
  Ins_id_naseljeno_mjesto ASC,
  Ins_id_adresa ASC,
  id_filijala ASC,
  id_instruktorski_kadar ASC)
go

/*==============================================================*/
/* Table: "Instuktorski Kadar Filijale"                         */
/*==============================================================*/
create table "Instuktorski Kadar Filijale" (
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   id_adresa            int                  not null,
   id_filijala          int                  not null,
   id_instruktorski_kadar int                  not null,
   constraint "PK_INSTUKTORSKI KADAR FILIJALE" primary key (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala, id_instruktorski_kadar)
)
go

/*==============================================================*/
/* Index: "nastavnici u filijali2_FK"                           */
/*==============================================================*/




create nonclustered index "nastavnici u filijali2_FK" on "Instuktorski Kadar Filijale" (id_drzava ASC,
  id_naseljeno_mjesto ASC,
  id_adresa ASC,
  id_filijala ASC)
go

/*==============================================================*/
/* Table: "Jezici u filijali"                                   */
/*==============================================================*/
create table "Jezici u filijali" (
   id_jezik             int                  not null,
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   id_adresa            int                  not null,
   id_filijala          int                  not null,
   id_aktivan           int                  not null,
   "od kad"             datetime             not null,
   "do kad"             datetime             null,
   constraint "PK_JEZICI U FILIJALI" primary key (id_jezik, id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala, id_aktivan)
)
go

/*==============================================================*/
/* Index: Relationship_4_FK                                     */
/*==============================================================*/




create nonclustered index Relationship_4_FK on "Jezici u filijali" (id_drzava ASC,
  id_naseljeno_mjesto ASC,
  id_adresa ASC,
  id_filijala ASC)
go

/*==============================================================*/
/* Index: istorija_FK                                           */
/*==============================================================*/




create nonclustered index istorija_FK on "Jezici u filijali" (id_jezik ASC)
go

/*==============================================================*/
/* Table: Jezik                                                 */
/*==============================================================*/
create table Jezik (
   id_jezik             int                  not null,
   Jezik                varchar(15)          not null,
   Nivo                 varchar(2)           null,
   constraint PK_JEZIK primary key (id_jezik)
)
go

/*==============================================================*/
/* Table: Kurs                                                  */
/*==============================================================*/
create table Kurs (
   Fil_id_drzava        int                  not null,
   Fil_id_naseljeno_mjesto int                  not null,
   Fil_id_adresa        int                  not null,
   Fil_id_filijala      int                  not null,
   id_jezik             int                  not null,
   id_kursa             int                  not null,
   Ins_id_drzava        int                  not null,
   Ins_id_naseljeno_mjesto int                  not null,
   Ins_id_adresa        int                  not null,
   id_filijala          int                  not null,
   id_instruktorski_kadar int                  not null,
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   id_adresa            int                  not null,
   id_instruktora       int                  not null,
   broj_casova_kursa    int                  not null,
   broj_lab_vjezbi      int                  not null,
   jedinicnna_cijena_casa int                  not null,
   jedinicna_cijena_labova int                  not null,
   maksimalan_broj_bodova int                  not null,
   constraint PK_KURS primary key (Fil_id_drzava, Fil_id_naseljeno_mjesto, Fil_id_adresa, Fil_id_filijala, id_jezik, id_kursa)
)
go

/*==============================================================*/
/* Index: "Predaje se_FK"                                       */
/*==============================================================*/




create nonclustered index "Predaje se_FK" on Kurs (id_jezik ASC)
go

/*==============================================================*/
/* Index: predavac_FK                                           */
/*==============================================================*/




create nonclustered index predavac_FK on Kurs (Ins_id_drzava ASC,
  Ins_id_naseljeno_mjesto ASC,
  Ins_id_adresa ASC,
  id_filijala ASC,
  id_instruktorski_kadar ASC,
  id_drzava ASC,
  id_naseljeno_mjesto ASC,
  id_adresa ASC,
  id_instruktora ASC)
go

/*==============================================================*/
/* Index: Relationship_8_FK                                     */
/*==============================================================*/




create nonclustered index Relationship_8_FK on Kurs (Fil_id_drzava ASC,
  Fil_id_naseljeno_mjesto ASC,
  Fil_id_adresa ASC,
  Fil_id_filijala ASC)
go

/*==============================================================*/
/* Table: "Naseljeno mjesto"                                    */
/*==============================================================*/
create table "Naseljeno mjesto" (
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   naziv_naseljenog_mjesta varchar(50)          not null,
   postanski_broj       int                  null,
   constraint "PK_NASELJENO MJESTO" primary key (id_drzava, id_naseljeno_mjesto)
)
go

/*==============================================================*/
/* Index: sadriti_FK                                           */
/*==============================================================*/




create nonclustered index sadriti_FK on "Naseljeno mjesto" (id_drzava ASC)
go

/*==============================================================*/
/* Table: Placanja                                              */
/*==============================================================*/
create table Placanja (
   id_placanja          smallint             not null,
   tip_uplate           varchar(20)          not null,
   constraint PK_PLACANJA primary key (id_placanja)
)
go

/*==============================================================*/
/* Table: Polaznik                                              */
/*==============================================================*/
create table Polaznik (
   id_placanja          smallint             not null,
   id_prijava           int                  not null,
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   id_adresa            int                  not null,
   id_polaznik          int                  not null,
   ime_polaznika        varchar(20)          not null,
   prezime_polaznika    varchar(20)          not null,
   broj_bodova_na_kursu int                  not null,
   constraint PK_POLAZNIK primary key (id_placanja, id_prijava, id_drzava, id_naseljeno_mjesto, id_adresa, id_polaznik)
)
go

/*==============================================================*/
/* Index: prebivaliste_FK                                       */
/*==============================================================*/




create nonclustered index prebivaliste_FK on Polaznik (id_drzava ASC,
  id_naseljeno_mjesto ASC,
  id_adresa ASC)
go

/*==============================================================*/
/* Index: prijavljuje_FK                                        */
/*==============================================================*/




create nonclustered index prijavljuje_FK on Polaznik (id_placanja ASC,
  id_prijava ASC)
go

/*==============================================================*/
/* Table: Prijava                                               */
/*==============================================================*/
create table Prijava (
   id_placanja          smallint             not null,
   id_prijava           int                  not null,
   Fil_id_drzava        int                  not null,
   Fil_id_naseljeno_mjesto int                  not null,
   Fil_id_adresa        int                  not null,
   Fil_id_filijala      int                  not null,
   id_jezik             int                  not null,
   id_kursa             int                  not null,
   datum_prijave        datetime             not null,
   vrijeme_prijave      datetime             not null,
   popust               int                  not null,
   constraint PK_PRIJAVA primary key (id_placanja, id_prijava)
)
go

/*==============================================================*/
/* Index: evidentira_FK                                         */
/*==============================================================*/




create nonclustered index evidentira_FK on Prijava (Fil_id_drzava ASC,
  Fil_id_naseljeno_mjesto ASC,
  Fil_id_adresa ASC,
  Fil_id_filijala ASC,
  id_jezik ASC,
  id_kursa ASC)
go

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/




create nonclustered index Relationship_7_FK on Prijava (id_placanja ASC)
go

/*==============================================================*/
/* Table: Termin                                                */
/*==============================================================*/
create table Termin (
   Fil_id_drzava        int                  not null,
   Fil_id_naseljeno_mjesto int                  not null,
   Fil_id_adresa        int                  not null,
   Fil_id_filijala      int                  not null,
   id_jezik             int                  not null,
   id_kursa             int                  not null,
   id_rasporeda         int                  not null,
   pocetak              datetime             null,
   kraj                 datetime             null,
   constraint PK_TERMIN primary key (Fil_id_drzava, Fil_id_naseljeno_mjesto, Fil_id_adresa, Fil_id_filijala, id_jezik, id_kursa, id_rasporeda)
)
go

/*==============================================================*/
/* Index: "vreme odrzavanja_FK"                                 */
/*==============================================================*/




create nonclustered index "vreme odrzavanja_FK" on Termin (Fil_id_drzava ASC,
  Fil_id_naseljeno_mjesto ASC,
  Fil_id_adresa ASC,
  Fil_id_filijala ASC,
  id_jezik ASC,
  id_kursa ASC)
go

/*==============================================================*/
/* Table: Trenutni                                              */
/*==============================================================*/
create table Trenutni (
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   id_adresa            int                  not null,
   id_filijala          int                  not null,
   id_jezik             int                  not null,
   constraint PK_TRENUTNI primary key (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala, id_jezik)
)
go

/*==============================================================*/
/* Index: Trenutni2_FK                                          */
/*==============================================================*/




create nonclustered index Trenutni2_FK on Trenutni (id_jezik ASC)
go

/*==============================================================*/
/* Index: Trenutni_FK                                           */
/*==============================================================*/




create nonclustered index Trenutni_FK on Trenutni (id_drzava ASC,
  id_naseljeno_mjesto ASC,
  id_adresa ASC,
  id_filijala ASC)
go

/*==============================================================*/
/* Table: poznaje                                               */
/*==============================================================*/
create table poznaje (
   id_jezik             int                  not null,
   Ins_id_drzava        int                  not null,
   Ins_id_naseljeno_mjesto int                  not null,
   Ins_id_adresa        int                  not null,
   id_filijala          int                  not null,
   id_instruktorski_kadar int                  not null,
   id_drzava            int                  not null,
   id_naseljeno_mjesto  int                  not null,
   id_adresa            int                  not null,
   id_instruktora       int                  not null,
   constraint PK_POZNAJE primary key (id_jezik, Ins_id_drzava, Ins_id_naseljeno_mjesto, Ins_id_adresa, id_filijala, id_instruktorski_kadar, id_drzava, id_naseljeno_mjesto, id_adresa, id_instruktora)
)
go

/*==============================================================*/
/* Index: poznaje2_FK                                           */
/*==============================================================*/




create nonclustered index poznaje2_FK on poznaje (Ins_id_drzava ASC,
  Ins_id_naseljeno_mjesto ASC,
  Ins_id_adresa ASC,
  id_filijala ASC,
  id_instruktorski_kadar ASC,
  id_drzava ASC,
  id_naseljeno_mjesto ASC,
  id_adresa ASC,
  id_instruktora ASC)
go

/*==============================================================*/
/* Index: poznaje_FK                                            */
/*==============================================================*/




create nonclustered index poznaje_FK on poznaje (id_jezik ASC)
go

alter table Adresa
   add constraint FK_ADRESA_POSJEDUJE_NASELJEN foreign key (id_drzava, id_naseljeno_mjesto)
      references "Naseljeno mjesto" (id_drzava, id_naseljeno_mjesto)
go

alter table Filijala
   add constraint FK_FILIJALA_NALAZI_ADRESA foreign key (id_drzava, id_naseljeno_mjesto, id_adresa)
      references Adresa (id_drzava, id_naseljeno_mjesto, id_adresa)
go

alter table Filijala
   add constraint FK_FILIJALA_NASTAVNIC_INSTUKTO foreign key (Ins_id_drzava, Ins_id_naseljeno_mjesto, Ins_id_adresa, Ins_id_filijala, id_instruktorski_kadar)
      references "Instuktorski Kadar Filijale" (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala, id_instruktorski_kadar)
go

alter table Instruktor
   add constraint FK_INSTRUKT_RADI_INSTUKTO foreign key (Ins_id_drzava, Ins_id_naseljeno_mjesto, Ins_id_adresa, id_filijala, id_instruktorski_kadar)
      references "Instuktorski Kadar Filijale" (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala, id_instruktorski_kadar)
go

alter table Instruktor
   add constraint FK_INSTRUKT_ZIVI_ADRESA foreign key (id_drzava, id_naseljeno_mjesto, id_adresa)
      references Adresa (id_drzava, id_naseljeno_mjesto, id_adresa)
go

alter table "Instuktorski Kadar Filijale"
   add constraint FK_INSTUKTO_NASTAVNIC_FILIJALA foreign key (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala)
      references Filijala (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala)
go

alter table "Jezici u filijali"
   add constraint "FK_JEZICI U_RELATIONS_FILIJALA" foreign key (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala)
      references Filijala (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala)
go

alter table "Jezici u filijali"
   add constraint "FK_JEZICI U_ISTORIJA_JEZIK" foreign key (id_jezik)
      references Jezik (id_jezik)
go

alter table Kurs
   add constraint "FK_KURS_PREDAJE S_JEZIK" foreign key (id_jezik)
      references Jezik (id_jezik)
go

alter table Kurs
   add constraint FK_KURS_RELATIONS_FILIJALA foreign key (Fil_id_drzava, Fil_id_naseljeno_mjesto, Fil_id_adresa, Fil_id_filijala)
      references Filijala (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala)
go

alter table Kurs
   add constraint FK_KURS_PREDAVAC_INSTRUKT foreign key (Ins_id_drzava, Ins_id_naseljeno_mjesto, Ins_id_adresa, id_filijala, id_instruktorski_kadar, id_drzava, id_naseljeno_mjesto, id_adresa, id_instruktora)
      references Instruktor (Ins_id_drzava, Ins_id_naseljeno_mjesto, Ins_id_adresa, id_filijala, id_instruktorski_kadar, id_drzava, id_naseljeno_mjesto, id_adresa, id_instruktora)
go

alter table "Naseljeno mjesto"
   add constraint FK_NASELJEN_SADRITI_DRAVA foreign key (id_drzava)
      references Drava (id_drzava)
go

alter table Polaznik
   add constraint FK_POLAZNIK_PREBIVALI_ADRESA foreign key (id_drzava, id_naseljeno_mjesto, id_adresa)
      references Adresa (id_drzava, id_naseljeno_mjesto, id_adresa)
go

alter table Polaznik
   add constraint FK_POLAZNIK_PRIJAVLJU_PRIJAVA foreign key (id_placanja, id_prijava)
      references Prijava (id_placanja, id_prijava)
go

alter table Prijava
   add constraint FK_PRIJAVA_RELATIONS_PLACANJA foreign key (id_placanja)
      references Placanja (id_placanja)
go

alter table Prijava
   add constraint FK_PRIJAVA_EVIDENTIR_KURS foreign key (Fil_id_drzava, Fil_id_naseljeno_mjesto, Fil_id_adresa, Fil_id_filijala, id_jezik, id_kursa)
      references Kurs (Fil_id_drzava, Fil_id_naseljeno_mjesto, Fil_id_adresa, Fil_id_filijala, id_jezik, id_kursa)
go

alter table Termin
   add constraint "FK_TERMIN_VREME ODR_KURS" foreign key (Fil_id_drzava, Fil_id_naseljeno_mjesto, Fil_id_adresa, Fil_id_filijala, id_jezik, id_kursa)
      references Kurs (Fil_id_drzava, Fil_id_naseljeno_mjesto, Fil_id_adresa, Fil_id_filijala, id_jezik, id_kursa)
go

alter table Trenutni
   add constraint FK_TRENUTNI_TRENUTNI_FILIJALA foreign key (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala)
      references Filijala (id_drzava, id_naseljeno_mjesto, id_adresa, id_filijala)
go

alter table Trenutni
   add constraint FK_TRENUTNI_TRENUTNI2_JEZIK foreign key (id_jezik)
      references Jezik (id_jezik)
go

alter table poznaje
   add constraint FK_POZNAJE_POZNAJE_JEZIK foreign key (id_jezik)
      references Jezik (id_jezik)
go

alter table poznaje
   add constraint FK_POZNAJE_POZNAJE2_INSTRUKT foreign key (Ins_id_drzava, Ins_id_naseljeno_mjesto, Ins_id_adresa, id_filijala, id_instruktorski_kadar, id_drzava, id_naseljeno_mjesto, id_adresa, id_instruktora)
      references Instruktor (Ins_id_drzava, Ins_id_naseljeno_mjesto, Ins_id_adresa, id_filijala, id_instruktorski_kadar, id_drzava, id_naseljeno_mjesto, id_adresa, id_instruktora)
go

