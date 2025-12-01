/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     9/30/2019 4:45:08 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AGENCIJA_U_NASELJENOM_MJESTU') and o.name = 'FK_AGENCIJA_AGENCIJA__NASELJEN')
alter table AGENCIJA_U_NASELJENOM_MJESTU
   drop constraint FK_AGENCIJA_AGENCIJA__NASELJEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AGENCIJA_U_NASELJENOM_MJESTU') and o.name = 'FK_AGENCIJA_AGENCIJA__AGENCIJA')
alter table AGENCIJA_U_NASELJENOM_MJESTU
   drop constraint FK_AGENCIJA_AGENCIJA__AGENCIJA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CIJENOVNIK') and o.name = 'FK_CIJENOVN_CIJENA_TI_TIP_USLU')
alter table CIJENOVNIK
   drop constraint FK_CIJENOVN_CIJENA_TI_TIP_USLU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CIJENOVNIK') and o.name = 'FK_CIJENOVN_RELATIONS_ZAPOSLEN')
alter table CIJENOVNIK
   drop constraint FK_CIJENOVN_RELATIONS_ZAPOSLEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KORISNIK') and o.name = 'FK_KORISNIK_KORISNIK__NASELJEN')
alter table KORISNIK
   drop constraint FK_KORISNIK_KORISNIK__NASELJEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KORISNIK') and o.name = 'FK_KORISNIK_TIPIZACIJ_TIP_KORI')
alter table KORISNIK
   drop constraint FK_KORISNIK_TIPIZACIJ_TIP_KORI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NASELJENO_MJESTO') and o.name = 'FK_NASELJEN_SE_SASTOJ_DRZAVA')
alter table NASELJENO_MJESTO
   drop constraint FK_NASELJEN_SE_SASTOJ_DRZAVA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OPOREZUJE') and o.name = 'FK_OPOREZUJ_OPOREZUJE_POREZ')
alter table OPOREZUJE
   drop constraint FK_OPOREZUJ_OPOREZUJE_POREZ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OPOREZUJE') and o.name = 'FK_OPOREZUJ_OPOREZUJE_USLUGA')
alter table OPOREZUJE
   drop constraint FK_OPOREZUJ_OPOREZUJE_USLUGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USLUGA') and o.name = 'FK_USLUGA_CIJENE_PO_CIJENOVN')
alter table USLUGA
   drop constraint FK_USLUGA_CIJENE_PO_CIJENOVN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USLUGA') and o.name = 'FK_USLUGA_KORISNIK__KORISNIK')
alter table USLUGA
   drop constraint FK_USLUGA_KORISNIK__KORISNIK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USLUGA') and o.name = 'FK_USLUGA_OBAVLJENE_AGENCIJA')
alter table USLUGA
   drop constraint FK_USLUGA_OBAVLJENE_AGENCIJA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USLUGA') and o.name = 'FK_USLUGA_TIPIZACIJ_TIP_USLU')
alter table USLUGA
   drop constraint FK_USLUGA_TIPIZACIJ_TIP_USLU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USLUGA') and o.name = 'FK_USLUGA_USLUGA_UK_VOZILO')
alter table USLUGA
   drop constraint FK_USLUGA_USLUGA_UK_VOZILO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VOZILO') and o.name = 'FK_VOZILO_AGENCIJA__AGENCIJA')
alter table VOZILO
   drop constraint FK_VOZILO_AGENCIJA__AGENCIJA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VOZILO') and o.name = 'FK_VOZILO_MJESTO_RE_NASELJEN')
alter table VOZILO
   drop constraint FK_VOZILO_MJESTO_RE_NASELJEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VOZILO') and o.name = 'FK_VOZILO_TIPIZACIJ_TIP_VOZI')
alter table VOZILO
   drop constraint FK_VOZILO_TIPIZACIJ_TIP_VOZI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ZAPOSLENI') and o.name = 'FK_ZAPOSLEN_TIPIZACIJ_TIP_RADN')
alter table ZAPOSLENI
   drop constraint FK_ZAPOSLEN_TIPIZACIJ_TIP_RADN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ZAPOSLENI') and o.name = 'FK_ZAPOSLEN_ZAPOSLENI_AGENCIJA')
alter table ZAPOSLENI
   drop constraint FK_ZAPOSLEN_ZAPOSLENI_AGENCIJA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AGENCIJA')
            and   type = 'U')
   drop table AGENCIJA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AGENCIJA_U_NASELJENOM_MJESTU')
            and   name  = 'AGENCIJA_U_NASELJENOM_MJESTU_FK'
            and   indid > 0
            and   indid < 255)
   drop index AGENCIJA_U_NASELJENOM_MJESTU.AGENCIJA_U_NASELJENOM_MJESTU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AGENCIJA_U_NASELJENOM_MJESTU')
            and   name  = 'AGENCIJA_U_NASELJENOM_MJESTU2_FK'
            and   indid > 0
            and   indid < 255)
   drop index AGENCIJA_U_NASELJENOM_MJESTU.AGENCIJA_U_NASELJENOM_MJESTU2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AGENCIJA_U_NASELJENOM_MJESTU')
            and   type = 'U')
   drop table AGENCIJA_U_NASELJENOM_MJESTU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CIJENOVNIK')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index CIJENOVNIK.RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CIJENOVNIK')
            and   name  = 'CIJENA_TIPA_USLUGE_FK'
            and   indid > 0
            and   indid < 255)
   drop index CIJENOVNIK.CIJENA_TIPA_USLUGE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CIJENOVNIK')
            and   type = 'U')
   drop table CIJENOVNIK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DRZAVA')
            and   type = 'U')
   drop table DRZAVA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KORISNIK')
            and   name  = 'TIPIZACIJA_KORISNIKA_FK'
            and   indid > 0
            and   indid < 255)
   drop index KORISNIK.TIPIZACIJA_KORISNIKA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KORISNIK')
            and   name  = 'KORISNIK_U_NASELJENOM_MJESTU_FK'
            and   indid > 0
            and   indid < 255)
   drop index KORISNIK.KORISNIK_U_NASELJENOM_MJESTU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KORISNIK')
            and   type = 'U')
   drop table KORISNIK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NASELJENO_MJESTO')
            and   name  = 'SE_SASTOJI_OD_FK'
            and   indid > 0
            and   indid < 255)
   drop index NASELJENO_MJESTO.SE_SASTOJI_OD_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NASELJENO_MJESTO')
            and   type = 'U')
   drop table NASELJENO_MJESTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OPOREZUJE')
            and   name  = 'OPOREZUJE_FK'
            and   indid > 0
            and   indid < 255)
   drop index OPOREZUJE.OPOREZUJE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OPOREZUJE')
            and   name  = 'OPOREZUJE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index OPOREZUJE.OPOREZUJE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OPOREZUJE')
            and   type = 'U')
   drop table OPOREZUJE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('POREZ')
            and   type = 'U')
   drop table POREZ
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIP_KORISNIKA')
            and   type = 'U')
   drop table TIP_KORISNIKA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIP_RADNOG_MJESTA')
            and   type = 'U')
   drop table TIP_RADNOG_MJESTA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIP_USLUGE')
            and   type = 'U')
   drop table TIP_USLUGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIP_VOZILA')
            and   type = 'U')
   drop table TIP_VOZILA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USLUGA')
            and   name  = 'CIJENE_PO_SATU_I_KILOMETRU_FK'
            and   indid > 0
            and   indid < 255)
   drop index USLUGA.CIJENE_PO_SATU_I_KILOMETRU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USLUGA')
            and   name  = 'KORISNIK_ZAHTJEVA_USLUGU_FK'
            and   indid > 0
            and   indid < 255)
   drop index USLUGA.KORISNIK_ZAHTJEVA_USLUGU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USLUGA')
            and   name  = 'USLUGA_UKLJUCUJE_VOZILO_FK'
            and   indid > 0
            and   indid < 255)
   drop index USLUGA.USLUGA_UKLJUCUJE_VOZILO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USLUGA')
            and   name  = 'OBAVLJENE_USLUGE_FK'
            and   indid > 0
            and   indid < 255)
   drop index USLUGA.OBAVLJENE_USLUGE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USLUGA')
            and   name  = 'TIPIZACIJA_USLUGE_FK'
            and   indid > 0
            and   indid < 255)
   drop index USLUGA.TIPIZACIJA_USLUGE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USLUGA')
            and   type = 'U')
   drop table USLUGA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VOZILO')
            and   name  = 'MJESTO_REGISTRACIJE_FK'
            and   indid > 0
            and   indid < 255)
   drop index VOZILO.MJESTO_REGISTRACIJE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VOZILO')
            and   name  = 'TIPIZACIJA_VOZILA_FK'
            and   indid > 0
            and   indid < 255)
   drop index VOZILO.TIPIZACIJA_VOZILA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VOZILO')
            and   name  = 'AGENCIJA_RASPOLAZE_VOZILIMA_FK'
            and   indid > 0
            and   indid < 255)
   drop index VOZILO.AGENCIJA_RASPOLAZE_VOZILIMA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VOZILO')
            and   type = 'U')
   drop table VOZILO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ZAPOSLENI')
            and   name  = 'TIPIZACIJA_ZAPOSLENIH_FK'
            and   indid > 0
            and   indid < 255)
   drop index ZAPOSLENI.TIPIZACIJA_ZAPOSLENIH_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ZAPOSLENI')
            and   name  = 'ZAPOSLENI_U_AGENCIJI_FK'
            and   indid > 0
            and   indid < 255)
   drop index ZAPOSLENI.ZAPOSLENI_U_AGENCIJI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ZAPOSLENI')
            and   type = 'U')
   drop table ZAPOSLENI
go

/*==============================================================*/
/* Table: AGENCIJA                                              */
/*==============================================================*/
create table AGENCIJA (
   A_IDENTIFIKATOR      char(1)              not null,
   A_NAZIV              varchar(50)          not null,
   A_PIB                varchar(20)          not null,
   A_BROJTELEFONA       varchar(20)          null,
   A_E_MAIL             varchar(40)          null,
   A_ADRESA             varchar(50)          not null,
   constraint PK_AGENCIJA primary key (A_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Table: AGENCIJA_U_NASELJENOM_MJESTU                          */
/*==============================================================*/
create table AGENCIJA_U_NASELJENOM_MJESTU (
   NM_IDENTIFIKATOR     int                  not null,
   A_IDENTIFIKATOR      char(1)              not null,
   constraint PK_AGENCIJA_U_NASELJENOM_MJEST primary key (NM_IDENTIFIKATOR, A_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Index: AGENCIJA_U_NASELJENOM_MJESTU2_FK                      */
/*==============================================================*/
create index AGENCIJA_U_NASELJENOM_MJESTU2_FK on AGENCIJA_U_NASELJENOM_MJESTU (
A_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: AGENCIJA_U_NASELJENOM_MJESTU_FK                       */
/*==============================================================*/
create index AGENCIJA_U_NASELJENOM_MJESTU_FK on AGENCIJA_U_NASELJENOM_MJESTU (
NM_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Table: CIJENOVNIK                                            */
/*==============================================================*/
create table CIJENOVNIK (
   CU_IDENTIFIKATOR     varchar(1)           not null,
   TU_IDENTIFIKATOR     varchar(1)           not null,
   Z_IDENTIFIKATOR      int                  null,
   CU_CIJENA            decimal(7,3)         not null,
   constraint PK_CIJENOVNIK primary key (CU_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Index: CIJENA_TIPA_USLUGE_FK                                 */
/*==============================================================*/
create index CIJENA_TIPA_USLUGE_FK on CIJENOVNIK (
TU_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on CIJENOVNIK (
Z_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Table: DRZAVA                                                */
/*==============================================================*/
create table DRZAVA (
   D_IDENTIFIKATOR      int                  not null,
   NM_NAZIV             varchar(50)          not null,
   HIMNA                VBIN                 not null,
   GRB                  image                not null,
   constraint PK_DRZAVA primary key (D_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Table: KORISNIK                                              */
/*==============================================================*/
create table KORISNIK (
   K_IDENTIFIKATOR      char(10)             not null,
   NM_IDENTIFIKATOR     int                  null,
   TK_IDENTIFIKATOR     varchar(1)           not null,
   K_IME                char(10)             null,
   PREZIME              char(10)             null,
   Z_BRLICNEKARTE       varchar(20)          null,
   PIB                  char(10)             null,
   constraint PK_KORISNIK primary key (K_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Index: KORISNIK_U_NASELJENOM_MJESTU_FK                       */
/*==============================================================*/
create index KORISNIK_U_NASELJENOM_MJESTU_FK on KORISNIK (
NM_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: TIPIZACIJA_KORISNIKA_FK                               */
/*==============================================================*/
create index TIPIZACIJA_KORISNIKA_FK on KORISNIK (
TK_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Table: NASELJENO_MJESTO                                      */
/*==============================================================*/
create table NASELJENO_MJESTO (
   NM_IDENTIFIKATOR     int                  not null,
   D_IDENTIFIKATOR      int                  not null,
   NM_NAZIV             varchar(50)          not null,
   constraint PK_NASELJENO_MJESTO primary key (NM_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Index: SE_SASTOJI_OD_FK                                      */
/*==============================================================*/
create index SE_SASTOJI_OD_FK on NASELJENO_MJESTO (
D_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Table: OPOREZUJE                                             */
/*==============================================================*/
create table OPOREZUJE (
   P_IDENTIFIKATOR      int                  not null,
   U_IDENTIFIKATOR      int                  not null,
   constraint PK_OPOREZUJE primary key (P_IDENTIFIKATOR, U_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Index: OPOREZUJE2_FK                                         */
/*==============================================================*/
create index OPOREZUJE2_FK on OPOREZUJE (
U_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: OPOREZUJE_FK                                          */
/*==============================================================*/
create index OPOREZUJE_FK on OPOREZUJE (
P_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Table: POREZ                                                 */
/*==============================================================*/
create table POREZ (
   P_IDENTIFIKATOR      int                  not null,
   P_NAZIV              varchar(50)          not null,
   STOPA                decimal(7,3)         not null,
   U_OD                 datetime             null,
   U_DATUM_IZDAVANJA    datetime             null,
   constraint PK_POREZ primary key (P_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Table: TIP_KORISNIKA                                         */
/*==============================================================*/
create table TIP_KORISNIKA (
   TK_IDENTIFIKATOR     varchar(1)           not null,
   TK_NAZIV             varchar(30)          not null,
   constraint PK_TIP_KORISNIKA primary key (TK_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Table: TIP_RADNOG_MJESTA                                     */
/*==============================================================*/
create table TIP_RADNOG_MJESTA (
   TRM_IDENTIFIKATOR    char(1)              not null,
   TRM_NAZIV            varchar(50)          not null,
   constraint PK_TIP_RADNOG_MJESTA primary key (TRM_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Table: TIP_USLUGE                                            */
/*==============================================================*/
create table TIP_USLUGE (
   TU_IDENTIFIKATOR     varchar(1)           not null,
   TU_NAZIV             varchar(30)          not null,
   constraint PK_TIP_USLUGE primary key (TU_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Table: TIP_VOZILA                                            */
/*==============================================================*/
create table TIP_VOZILA (
   TV_IDENTIFIKATOR     varchar(1)           not null,
   TV_NAZIV             varchar(20)          not null,
   TV_CIJENA            decimal(7,3)         not null,
   constraint PK_TIP_VOZILA primary key (TV_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Table: USLUGA                                                */
/*==============================================================*/
create table USLUGA (
   U_IDENTIFIKATOR      int                  not null,
   TU_IDENTIFIKATOR     varchar(1)           not null,
   A_IDENTIFIKATOR      char(1)              not null,
   VOZILOID             int                  not null,
   K_IDENTIFIKATOR      char(10)             not null,
   CU_IDENTIFIKATOR     varchar(1)           not null,
   U_NAZIV              varchar(30)          not null,
   U_CIJENA             decimal(7,3)         not null,
   U_BROJKILOMETARA     decimal(7,3)         not null,
   U_BROJSATI           int                  null,
   U_DATUM_IZDAVANJA    datetime             not null,
   U_POREZIZNOS         decimal(7,2)         null,
   constraint PK_USLUGA primary key (U_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Index: TIPIZACIJA_USLUGE_FK                                  */
/*==============================================================*/
create index TIPIZACIJA_USLUGE_FK on USLUGA (
TU_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: OBAVLJENE_USLUGE_FK                                   */
/*==============================================================*/
create index OBAVLJENE_USLUGE_FK on USLUGA (
A_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: USLUGA_UKLJUCUJE_VOZILO_FK                            */
/*==============================================================*/
create index USLUGA_UKLJUCUJE_VOZILO_FK on USLUGA (
VOZILOID ASC
)
go

/*==============================================================*/
/* Index: KORISNIK_ZAHTJEVA_USLUGU_FK                           */
/*==============================================================*/
create index KORISNIK_ZAHTJEVA_USLUGU_FK on USLUGA (
K_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: CIJENE_PO_SATU_I_KILOMETRU_FK                         */
/*==============================================================*/
create index CIJENE_PO_SATU_I_KILOMETRU_FK on USLUGA (
CU_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Table: VOZILO                                                */
/*==============================================================*/
create table VOZILO (
   V_IDENTIFIKATOR      int                  not null,
   A_IDENTIFIKATOR      char(1)              not null,
   TV_IDENTIFIKATOR     varchar(1)           not null,
   NM_IDENTIFIKATOR     int                  not null,
   MODELVOZILA          varchar(15)          not null,
   V_NAZIV              varchar(15)          not null,
   V_DATUM_REGISTRACIJE datetime             not null,
   V_BROJ_PUTNIKA       varchar(1)           not null,
   V_BROJ_VRATA         varchar(1)           not null,
   V_STAROST_VOZILA     int                  not null,
   V_DODATNA_OPREMA     varchar(100)         null,
   V_KILOMETRAZA        bigint               not null,
   constraint PK_VOZILO primary key (V_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Index: AGENCIJA_RASPOLAZE_VOZILIMA_FK                        */
/*==============================================================*/
create index AGENCIJA_RASPOLAZE_VOZILIMA_FK on VOZILO (
A_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: TIPIZACIJA_VOZILA_FK                                  */
/*==============================================================*/
create index TIPIZACIJA_VOZILA_FK on VOZILO (
TV_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: MJESTO_REGISTRACIJE_FK                                */
/*==============================================================*/
create index MJESTO_REGISTRACIJE_FK on VOZILO (
NM_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Table: ZAPOSLENI                                             */
/*==============================================================*/
create table ZAPOSLENI (
   Z_IDENTIFIKATOR      int                  not null,
   A_IDENTIFIKATOR      char(1)              not null,
   TRM_IDENTIFIKATOR    char(1)              not null,
   Z_IME                varchar(15)          not null,
   Z_PREZIME            varchar(20)          not null,
   Z_BRLICNEKARTE       varchar(20)          not null,
   Z_RADNOMJESTO        varchar(25)          not null,
   constraint PK_ZAPOSLENI primary key (Z_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Index: ZAPOSLENI_U_AGENCIJI_FK                               */
/*==============================================================*/
create index ZAPOSLENI_U_AGENCIJI_FK on ZAPOSLENI (
A_IDENTIFIKATOR ASC
)
go

/*==============================================================*/
/* Index: TIPIZACIJA_ZAPOSLENIH_FK                              */
/*==============================================================*/
create index TIPIZACIJA_ZAPOSLENIH_FK on ZAPOSLENI (
TRM_IDENTIFIKATOR ASC
)
go

alter table AGENCIJA_U_NASELJENOM_MJESTU
   add constraint FK_AGENCIJA_AGENCIJA__NASELJEN foreign key (NM_IDENTIFIKATOR)
      references NASELJENO_MJESTO (NM_IDENTIFIKATOR)
go

alter table AGENCIJA_U_NASELJENOM_MJESTU
   add constraint FK_AGENCIJA_AGENCIJA__AGENCIJA foreign key (A_IDENTIFIKATOR)
      references AGENCIJA (A_IDENTIFIKATOR)
go

alter table CIJENOVNIK
   add constraint FK_CIJENOVN_CIJENA_TI_TIP_USLU foreign key (TU_IDENTIFIKATOR)
      references TIP_USLUGE (TU_IDENTIFIKATOR)
go

alter table CIJENOVNIK
   add constraint FK_CIJENOVN_RELATIONS_ZAPOSLEN foreign key (Z_IDENTIFIKATOR)
      references ZAPOSLENI (Z_IDENTIFIKATOR)
go

alter table KORISNIK
   add constraint FK_KORISNIK_KORISNIK__NASELJEN foreign key (NM_IDENTIFIKATOR)
      references NASELJENO_MJESTO (NM_IDENTIFIKATOR)
go

alter table KORISNIK
   add constraint FK_KORISNIK_TIPIZACIJ_TIP_KORI foreign key (TK_IDENTIFIKATOR)
      references TIP_KORISNIKA (TK_IDENTIFIKATOR)
go

alter table NASELJENO_MJESTO
   add constraint FK_NASELJEN_SE_SASTOJ_DRZAVA foreign key (D_IDENTIFIKATOR)
      references DRZAVA (D_IDENTIFIKATOR)
go

alter table OPOREZUJE
   add constraint FK_OPOREZUJ_OPOREZUJE_POREZ foreign key (P_IDENTIFIKATOR)
      references POREZ (P_IDENTIFIKATOR)
go

alter table OPOREZUJE
   add constraint FK_OPOREZUJ_OPOREZUJE_USLUGA foreign key (U_IDENTIFIKATOR)
      references USLUGA (U_IDENTIFIKATOR)
go

alter table USLUGA
   add constraint FK_USLUGA_CIJENE_PO_CIJENOVN foreign key (CU_IDENTIFIKATOR)
      references CIJENOVNIK (CU_IDENTIFIKATOR)
go

alter table USLUGA
   add constraint FK_USLUGA_KORISNIK__KORISNIK foreign key (K_IDENTIFIKATOR)
      references KORISNIK (K_IDENTIFIKATOR)
go

alter table USLUGA
   add constraint FK_USLUGA_OBAVLJENE_AGENCIJA foreign key (A_IDENTIFIKATOR)
      references AGENCIJA (A_IDENTIFIKATOR)
go

alter table USLUGA
   add constraint FK_USLUGA_TIPIZACIJ_TIP_USLU foreign key (TU_IDENTIFIKATOR)
      references TIP_USLUGE (TU_IDENTIFIKATOR)
go

alter table USLUGA
   add constraint FK_USLUGA_USLUGA_UK_VOZILO foreign key (VOZILOID)
      references VOZILO (V_IDENTIFIKATOR)
go

alter table VOZILO
   add constraint FK_VOZILO_AGENCIJA__AGENCIJA foreign key (A_IDENTIFIKATOR)
      references AGENCIJA (A_IDENTIFIKATOR)
go

alter table VOZILO
   add constraint FK_VOZILO_MJESTO_RE_NASELJEN foreign key (NM_IDENTIFIKATOR)
      references NASELJENO_MJESTO (NM_IDENTIFIKATOR)
go

alter table VOZILO
   add constraint FK_VOZILO_TIPIZACIJ_TIP_VOZI foreign key (TV_IDENTIFIKATOR)
      references TIP_VOZILA (TV_IDENTIFIKATOR)
go

alter table ZAPOSLENI
   add constraint FK_ZAPOSLEN_TIPIZACIJ_TIP_RADN foreign key (TRM_IDENTIFIKATOR)
      references TIP_RADNOG_MJESTA (TRM_IDENTIFIKATOR)
go

alter table ZAPOSLENI
   add constraint FK_ZAPOSLEN_ZAPOSLENI_AGENCIJA foreign key (A_IDENTIFIKATOR)
      references AGENCIJA (A_IDENTIFIKATOR)
go

