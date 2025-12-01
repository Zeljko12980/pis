/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     18.11.2021. 17:01:08                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Aranzman') and o.name = 'FK_ARANZMAN_ARANZMAN__TURISTIC')
alter table Aranzman
   drop constraint FK_ARANZMAN_ARANZMAN__TURISTIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Aranzman') and o.name = 'FK_ARANZMAN_NUDI_ARAN_TURISTIC')
alter table Aranzman
   drop constraint FK_ARANZMAN_NUDI_ARAN_TURISTIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Aranzman') and o.name = 'FK_ARANZMAN_SADRZI_SEZONA')
alter table Aranzman
   drop constraint FK_ARANZMAN_SADRZI_SEZONA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Aranzman_Sadrzi_usluge') and o.name = 'FK_ARANZMAN_ARANZMAN__DODATNE_')
alter table Aranzman_Sadrzi_usluge
   drop constraint FK_ARANZMAN_ARANZMAN__DODATNE_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Aranzman_Sadrzi_usluge') and o.name = 'FK_ARANZMAN_ARANZMAN__ARANZMAN')
alter table Aranzman_Sadrzi_usluge
   drop constraint FK_ARANZMAN_ARANZMAN__ARANZMAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Komentari') and o.name = 'FK_KOMENTAR_VRSTA_KOM_TIP_KOME')
alter table Komentari
   drop constraint FK_KOMENTAR_VRSTA_KOM_TIP_KOME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Komentari') and o.name = 'FK_KOMENTAR_EVIDENTIR_REZERVAC')
alter table Komentari
   drop constraint FK_KOMENTAR_EVIDENTIR_REZERVAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rezervacija') and o.name = 'FK_REZERVAC_RELATIONS_ARANZMAN')
alter table Rezervacija
   drop constraint FK_REZERVAC_RELATIONS_ARANZMAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rezervacija') and o.name = 'FK_REZERVAC_NAPLACIVA_TIP_PLAC')
alter table Rezervacija
   drop constraint FK_REZERVAC_NAPLACIVA_TIP_PLAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rezervacija') and o.name = 'FK_REZERVAC_POSTOJI_NOSILAC_')
alter table Rezervacija
   drop constraint FK_REZERVAC_POSTOJI_NOSILAC_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rezervisane_usluge') and o.name = 'FK_REZERVIS_REZERVISA_DODATNE_')
alter table Rezervisane_usluge
   drop constraint FK_REZERVIS_REZERVISA_DODATNE_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rezervisane_usluge') and o.name = 'FK_REZERVIS_REZERVISA_REZERVAC')
alter table Rezervisane_usluge
   drop constraint FK_REZERVIS_REZERVISA_REZERVAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Turisticka_agencija') and o.name = 'FK_TURISTIC_OPSTINI_N_OPSTINA2')
alter table Turisticka_agencija
   drop constraint FK_TURISTIC_OPSTINI_N_OPSTINA2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Turisticki_objekat') and o.name = 'FK_TURISTIC_POSJEDUJE_TURISTIC')
alter table Turisticki_objekat
   drop constraint FK_TURISTIC_POSJEDUJE_TURISTIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Turisticko_mjesto') and o.name = 'FK_TURISTIC_OPSTINI_N_OPSTINA')
alter table Turisticko_mjesto
   drop constraint FK_TURISTIC_OPSTINI_N_OPSTINA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('opstina') and o.name = 'FK_OPSTINA_DRZAVI_NA_DRZAVA')
alter table opstina
   drop constraint FK_OPSTINA_DRZAVI_NA_DRZAVA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('porez_na_uslugu') and o.name = 'FK_POREZ_NA_POREZ_NA__DODATNE_')
alter table porez_na_uslugu
   drop constraint FK_POREZ_NA_POREZ_NA__DODATNE_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('porez_na_uslugu') and o.name = 'FK_POREZ_NA_POREZ_NA__POREZ')
alter table porez_na_uslugu
   drop constraint FK_POREZ_NA_POREZ_NA__POREZ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('rezervisu_korisnici') and o.name = 'FK_REZERVIS_REZERVISU_KORISNIK')
alter table rezervisu_korisnici
   drop constraint FK_REZERVIS_REZERVISU_KORISNIK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('rezervisu_korisnici') and o.name = 'FK_REZERVIS_REZERVISU_REZERVAC')
alter table rezervisu_korisnici
   drop constraint FK_REZERVIS_REZERVISU_REZERVAC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Aranzman')
            and   name  = 'nudi_aranzman_FK'
            and   indid > 0
            and   indid < 255)
   drop index Aranzman.nudi_aranzman_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Aranzman')
            and   name  = 'aranzman_turistickog_objekta_FK'
            and   indid > 0
            and   indid < 255)
   drop index Aranzman.aranzman_turistickog_objekta_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Aranzman')
            and   type = 'U')
   drop table Aranzman
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Aranzman_Sadrzi_usluge')
            and   name  = 'Sadrzi_usluge_FK'
            and   indid > 0
            and   indid < 255)
   drop index Aranzman_Sadrzi_usluge.Sadrzi_usluge_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Aranzman_Sadrzi_usluge')
            and   name  = 'Sadrzi_usluge2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Aranzman_Sadrzi_usluge.Sadrzi_usluge2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Aranzman_Sadrzi_usluge')
            and   type = 'U')
   drop table Aranzman_Sadrzi_usluge
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Dodatne_usluge_aranzmana')
            and   type = 'U')
   drop table Dodatne_usluge_aranzmana
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Drzava')
            and   type = 'U')
   drop table Drzava
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Komentari')
            and   name  = 'Vrsta_komentara_FK'
            and   indid > 0
            and   indid < 255)
   drop index Komentari.Vrsta_komentara_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Komentari')
            and   name  = 'evidentiranje_komentara_FK'
            and   indid > 0
            and   indid < 255)
   drop index Komentari.evidentiranje_komentara_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Komentari')
            and   type = 'U')
   drop table Komentari
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Korisnik_aranzmana')
            and   type = 'U')
   drop table Korisnik_aranzmana
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Nosilac_aranzmana')
            and   type = 'U')
   drop table Nosilac_aranzmana
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Porez')
            and   type = 'U')
   drop table Porez
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rezervacija')
            and   name  = 'Relationship_21_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rezervacija.Relationship_21_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rezervacija')
            and   name  = 'naplacivanje_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rezervacija.naplacivanje_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rezervacija')
            and   name  = 'postoji_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rezervacija.postoji_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rezervacija')
            and   type = 'U')
   drop table Rezervacija
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rezervisane_usluge')
            and   name  = 'Rezervisane_usluge_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rezervisane_usluge.Rezervisane_usluge_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rezervisane_usluge')
            and   name  = 'Rezervisane_usluge2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rezervisane_usluge.Rezervisane_usluge2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rezervisane_usluge')
            and   type = 'U')
   drop table Rezervisane_usluge
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sezona')
            and   type = 'U')
   drop table Sezona
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tip_placanja')
            and   type = 'U')
   drop table Tip_placanja
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Turisticka_agencija')
            and   name  = 'Opstini_nalaze_turisticke_agencije_FK'
            and   indid > 0
            and   indid < 255)
   drop index Turisticka_agencija.Opstini_nalaze_turisticke_agencije_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Turisticka_agencija')
            and   type = 'U')
   drop table Turisticka_agencija
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Turisticki_objekat')
            and   name  = 'Posjeduje_FK'
            and   indid > 0
            and   indid < 255)
   drop index Turisticki_objekat.Posjeduje_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Turisticki_objekat')
            and   type = 'U')
   drop table Turisticki_objekat
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Turisticko_mjesto')
            and   name  = 'Opstini_nalaze_turisticka_mjesta_FK'
            and   indid > 0
            and   indid < 255)
   drop index Turisticko_mjesto.Opstini_nalaze_turisticka_mjesta_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Turisticko_mjesto')
            and   type = 'U')
   drop table Turisticko_mjesto
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('opstina')
            and   name  = 'Drzavi_nalaze_opstine_FK'
            and   indid > 0
            and   indid < 255)
   drop index opstina.Drzavi_nalaze_opstine_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('opstina')
            and   type = 'U')
   drop table opstina
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('porez_na_uslugu')
            and   name  = 'porez_na_uslugu_FK'
            and   indid > 0
            and   indid < 255)
   drop index porez_na_uslugu.porez_na_uslugu_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('porez_na_uslugu')
            and   name  = 'porez_na_uslugu2_FK'
            and   indid > 0
            and   indid < 255)
   drop index porez_na_uslugu.porez_na_uslugu2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('porez_na_uslugu')
            and   type = 'U')
   drop table porez_na_uslugu
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('rezervisu_korisnici')
            and   name  = 'rezervisu_korisnici_FK'
            and   indid > 0
            and   indid < 255)
   drop index rezervisu_korisnici.rezervisu_korisnici_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('rezervisu_korisnici')
            and   name  = 'rezervisu_korisnici2_FK'
            and   indid > 0
            and   indid < 255)
   drop index rezervisu_korisnici.rezervisu_korisnici2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('rezervisu_korisnici')
            and   type = 'U')
   drop table rezervisu_korisnici
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tip_komentara')
            and   type = 'U')
   drop table tip_komentara
go

/*==============================================================*/
/* Table: Aranzman                                              */
/*==============================================================*/
create table Aranzman (
   id_aranzman          int                  not null,
   id_sezona            int                  not null,
   id_turisticki_objekat int                  not null,
   id_turisticka_agencija int                  not null,
   nosilac_aranzmana    varchar(20)          not null,
   datum_od             datetime             not null,
   datum_do             datetime             not null,
   Cijena               money                not null,
   constraint PK_ARANZMAN primary key (id_aranzman)
)
go

/*==============================================================*/
/* Index: aranzman_turistickog_objekta_FK                       */
/*==============================================================*/




create nonclustered index aranzman_turistickog_objekta_FK on Aranzman (id_turisticki_objekat ASC)
go

/*==============================================================*/
/* Index: nudi_aranzman_FK                                      */
/*==============================================================*/




create nonclustered index nudi_aranzman_FK on Aranzman (id_turisticka_agencija ASC)
go

/*==============================================================*/
/* Table: Aranzman_Sadrzi_usluge                                */
/*==============================================================*/
create table Aranzman_Sadrzi_usluge (
   id_dodatne_usluge_aranzmana int                  not null,
   id_aranzman          int                  not null,
   constraint PK_ARANZMAN_SADRZI_USLUGE primary key (id_dodatne_usluge_aranzmana, id_aranzman)
)
go

/*==============================================================*/
/* Index: Sadrzi_usluge2_FK                                     */
/*==============================================================*/




create nonclustered index Sadrzi_usluge2_FK on Aranzman_Sadrzi_usluge (id_aranzman ASC)
go

/*==============================================================*/
/* Index: Sadrzi_usluge_FK                                      */
/*==============================================================*/




create nonclustered index Sadrzi_usluge_FK on Aranzman_Sadrzi_usluge (id_dodatne_usluge_aranzmana ASC)
go

/*==============================================================*/
/* Table: Dodatne_usluge_aranzmana                              */
/*==============================================================*/
create table Dodatne_usluge_aranzmana (
   id_dodatne_usluge_aranzmana int                  not null,
   naziv_usluge         varchar(50)          not null,
   opis                 varchar(1000)        null,
   constraint PK_DODATNE_USLUGE_ARANZMANA primary key (id_dodatne_usluge_aranzmana)
)
go

/*==============================================================*/
/* Table: Drzava                                                */
/*==============================================================*/
create table Drzava (
   id_drzava            int                  not null,
   naziv_drzave         varchar(50)          not null,
   constraint PK_DRZAVA primary key (id_drzava)
)
go

/*==============================================================*/
/* Table: Komentari                                             */
/*==============================================================*/
create table Komentari (
   id_komentar          int                  not null,
   id_rezervacija       int                  not null,
   id_tip_komentara     int                  not null,
   opis                 varchar(1000)        not null,
   ocjena               int                  not null,
   constraint PK_KOMENTARI primary key (id_komentar)
)
go

/*==============================================================*/
/* Index: evidentiranje_komentara_FK                            */
/*==============================================================*/




create nonclustered index evidentiranje_komentara_FK on Komentari (id_rezervacija ASC)
go

/*==============================================================*/
/* Index: Vrsta_komentara_FK                                    */
/*==============================================================*/




create nonclustered index Vrsta_komentara_FK on Komentari (id_tip_komentara ASC)
go

/*==============================================================*/
/* Table: Korisnik_aranzmana                                    */
/*==============================================================*/
create table Korisnik_aranzmana (
   id_korisnik_aranzmana int                  not null,
   ime                  varchar(25)          not null,
   prezime              varchar(25)          not null,
   imbg                 int                  not null,
   broj_telefona        varchar(20)          null,
   email                varchar(20)          null,
   constraint PK_KORISNIK_ARANZMANA primary key (id_korisnik_aranzmana)
)
go

/*==============================================================*/
/* Table: Nosilac_aranzmana                                     */
/*==============================================================*/
create table Nosilac_aranzmana (
   id_nosilac           int                  not null,
   ime                  varchar(25)          not null,
   prezime              varchar(25)          not null,
   imbg                 int                  not null,
   broj_telefona        varchar(20)          null,
   email                varchar(20)          null,
   constraint PK_NOSILAC_ARANZMANA primary key (id_nosilac)
)
go

/*==============================================================*/
/* Table: Porez                                                 */
/*==============================================================*/
create table Porez (
   P_IDENTIFIKATOR      int                  not null,
   P_NAZIV              varchar(30)          not null,
   P_STOPA              decimal(3,2)         not null,
   constraint PK_POREZ primary key (P_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Table: Rezervacija                                           */
/*==============================================================*/
create table Rezervacija (
   id_rezervacija       int                  not null,
   id_nosilac           int                  not null,
   id_tip_placanja      int                  not null,
   id_aranzman          int                  not null,
   rezervacija_od       datetime             not null,
   rezervacija_do       datetime             not null,
   Cijena               money                not null,
   constraint PK_REZERVACIJA primary key (id_rezervacija)
)
go

/*==============================================================*/
/* Index: postoji_FK                                            */
/*==============================================================*/




create nonclustered index postoji_FK on Rezervacija (id_nosilac ASC)
go

/*==============================================================*/
/* Index: naplacivanje_FK                                       */
/*==============================================================*/




create nonclustered index naplacivanje_FK on Rezervacija (id_tip_placanja ASC)
go

/*==============================================================*/
/* Index: Relationship_21_FK                                    */
/*==============================================================*/




create nonclustered index Relationship_21_FK on Rezervacija (id_aranzman ASC)
go

/*==============================================================*/
/* Table: Rezervisane_usluge                                    */
/*==============================================================*/
create table Rezervisane_usluge (
   id_dodatne_usluge_aranzmana int                  not null,
   id_rezervacija       int                  not null,
   constraint PK_REZERVISANE_USLUGE primary key (id_dodatne_usluge_aranzmana, id_rezervacija)
)
go

/*==============================================================*/
/* Index: Rezervisane_usluge2_FK                                */
/*==============================================================*/




create nonclustered index Rezervisane_usluge2_FK on Rezervisane_usluge (id_rezervacija ASC)
go

/*==============================================================*/
/* Index: Rezervisane_usluge_FK                                 */
/*==============================================================*/




create nonclustered index Rezervisane_usluge_FK on Rezervisane_usluge (id_dodatne_usluge_aranzmana ASC)
go

/*==============================================================*/
/* Table: Sezona                                                */
/*==============================================================*/
create table Sezona (
   id_sezona            int                  not null,
   godina               numeric(4)           not null,
   sezona               varchar(25)          not null,
   constraint PK_SEZONA primary key (id_sezona)
)
go

/*==============================================================*/
/* Table: Tip_placanja                                          */
/*==============================================================*/
create table Tip_placanja (
   id_tip_placanja      int                  not null,
   tip_placanja         varchar(30)          not null,
   constraint PK_TIP_PLACANJA primary key (id_tip_placanja)
)
go

/*==============================================================*/
/* Table: Turisticka_agencija                                   */
/*==============================================================*/
create table Turisticka_agencija (
   id_turisticka_agencija int                  not null,
   id_drzava            int                  not null,
   id_opstina           int                  not null,
   naziv                varchar(25)          not null,
   direktor             varchar(25)          not null,
   broj_telefona        varchar(20)          null,
   sajt                 varchar(25)          null,
   constraint PK_TURISTICKA_AGENCIJA primary key (id_turisticka_agencija)
)
go

/*==============================================================*/
/* Index: Opstini_nalaze_turisticke_agencije_FK                 */
/*==============================================================*/




create nonclustered index Opstini_nalaze_turisticke_agencije_FK on Turisticka_agencija (id_drzava ASC,
  id_opstina ASC)
go

/*==============================================================*/
/* Table: Turisticki_objekat                                    */
/*==============================================================*/
create table Turisticki_objekat (
   id_turisticki_objekat int                  not null,
   id_turisticko_mjesto int                  not null,
   naziv_objekta        varchar(50)          not null,
   constraint PK_TURISTICKI_OBJEKAT primary key (id_turisticki_objekat)
)
go

/*==============================================================*/
/* Index: Posjeduje_FK                                          */
/*==============================================================*/




create nonclustered index Posjeduje_FK on Turisticki_objekat (id_turisticko_mjesto ASC)
go

/*==============================================================*/
/* Table: Turisticko_mjesto                                     */
/*==============================================================*/
create table Turisticko_mjesto (
   id_turisticko_mjesto int                  not null,
   id_drzava            int                  not null,
   id_opstina           int                  not null,
   naziv_mjesta         varchar(50)          not null,
   constraint PK_TURISTICKO_MJESTO primary key (id_turisticko_mjesto)
)
go

/*==============================================================*/
/* Index: Opstini_nalaze_turisticka_mjesta_FK                   */
/*==============================================================*/




create nonclustered index Opstini_nalaze_turisticka_mjesta_FK on Turisticko_mjesto (id_drzava ASC,
  id_opstina ASC)
go

/*==============================================================*/
/* Table: opstina                                               */
/*==============================================================*/
create table opstina (
   id_drzava            int                  not null,
   id_opstina           int                  not null,
   naziv_opstine        varchar(25)          not null,
   constraint PK_OPSTINA primary key (id_drzava, id_opstina)
)
go

/*==============================================================*/
/* Index: Drzavi_nalaze_opstine_FK                              */
/*==============================================================*/




create nonclustered index Drzavi_nalaze_opstine_FK on opstina (id_drzava ASC)
go

/*==============================================================*/
/* Table: porez_na_uslugu                                       */
/*==============================================================*/
create table porez_na_uslugu (
   id_dodatne_usluge_aranzmana int                  not null,
   P_IDENTIFIKATOR      int                  not null,
   constraint PK_POREZ_NA_USLUGU primary key (id_dodatne_usluge_aranzmana, P_IDENTIFIKATOR)
)
go

/*==============================================================*/
/* Index: porez_na_uslugu2_FK                                   */
/*==============================================================*/




create nonclustered index porez_na_uslugu2_FK on porez_na_uslugu (P_IDENTIFIKATOR ASC)
go

/*==============================================================*/
/* Index: porez_na_uslugu_FK                                    */
/*==============================================================*/




create nonclustered index porez_na_uslugu_FK on porez_na_uslugu (id_dodatne_usluge_aranzmana ASC)
go

/*==============================================================*/
/* Table: rezervisu_korisnici                                   */
/*==============================================================*/
create table rezervisu_korisnici (
   id_korisnik_aranzmana int                  not null,
   id_rezervacija       int                  not null,
   constraint PK_REZERVISU_KORISNICI primary key (id_korisnik_aranzmana, id_rezervacija)
)
go

/*==============================================================*/
/* Index: rezervisu_korisnici2_FK                               */
/*==============================================================*/




create nonclustered index rezervisu_korisnici2_FK on rezervisu_korisnici (id_rezervacija ASC)
go

/*==============================================================*/
/* Index: rezervisu_korisnici_FK                                */
/*==============================================================*/




create nonclustered index rezervisu_korisnici_FK on rezervisu_korisnici (id_korisnik_aranzmana ASC)
go

/*==============================================================*/
/* Table: tip_komentara                                         */
/*==============================================================*/
create table tip_komentara (
   id_tip_komentara     int                  not null,
   tip_komentara        varchar(15)          not null,
   constraint PK_TIP_KOMENTARA primary key (id_tip_komentara)
)
go

alter table Aranzman
   add constraint FK_ARANZMAN_ARANZMAN__TURISTIC foreign key (id_turisticki_objekat)
      references Turisticki_objekat (id_turisticki_objekat)
go

alter table Aranzman
   add constraint FK_ARANZMAN_NUDI_ARAN_TURISTIC foreign key (id_turisticka_agencija)
      references Turisticka_agencija (id_turisticka_agencija)
go

alter table Aranzman
   add constraint FK_ARANZMAN_SADRZI_SEZONA foreign key (id_sezona)
      references Sezona (id_sezona)
go

alter table Aranzman_Sadrzi_usluge
   add constraint FK_ARANZMAN_ARANZMAN__DODATNE_ foreign key (id_dodatne_usluge_aranzmana)
      references Dodatne_usluge_aranzmana (id_dodatne_usluge_aranzmana)
go

alter table Aranzman_Sadrzi_usluge
   add constraint FK_ARANZMAN_ARANZMAN__ARANZMAN foreign key (id_aranzman)
      references Aranzman (id_aranzman)
go

alter table Komentari
   add constraint FK_KOMENTAR_VRSTA_KOM_TIP_KOME foreign key (id_tip_komentara)
      references tip_komentara (id_tip_komentara)
go

alter table Komentari
   add constraint FK_KOMENTAR_EVIDENTIR_REZERVAC foreign key (id_rezervacija)
      references Rezervacija (id_rezervacija)
go

alter table Rezervacija
   add constraint FK_REZERVAC_RELATIONS_ARANZMAN foreign key (id_aranzman)
      references Aranzman (id_aranzman)
go

alter table Rezervacija
   add constraint FK_REZERVAC_NAPLACIVA_TIP_PLAC foreign key (id_tip_placanja)
      references Tip_placanja (id_tip_placanja)
go

alter table Rezervacija
   add constraint FK_REZERVAC_POSTOJI_NOSILAC_ foreign key (id_nosilac)
      references Nosilac_aranzmana (id_nosilac)
go

alter table Rezervisane_usluge
   add constraint FK_REZERVIS_REZERVISA_DODATNE_ foreign key (id_dodatne_usluge_aranzmana)
      references Dodatne_usluge_aranzmana (id_dodatne_usluge_aranzmana)
go

alter table Rezervisane_usluge
   add constraint FK_REZERVIS_REZERVISA_REZERVAC foreign key (id_rezervacija)
      references Rezervacija (id_rezervacija)
go

alter table Turisticka_agencija
   add constraint FK_TURISTIC_OPSTINI_N_OPSTINA2 foreign key (id_drzava, id_opstina)
      references opstina (id_drzava, id_opstina)
go

alter table Turisticki_objekat
   add constraint FK_TURISTIC_POSJEDUJE_TURISTIC foreign key (id_turisticko_mjesto)
      references Turisticko_mjesto (id_turisticko_mjesto)
go

alter table Turisticko_mjesto
   add constraint FK_TURISTIC_OPSTINI_N_OPSTINA foreign key (id_drzava, id_opstina)
      references opstina (id_drzava, id_opstina)
go

alter table opstina
   add constraint FK_OPSTINA_DRZAVI_NA_DRZAVA foreign key (id_drzava)
      references Drzava (id_drzava)
go

alter table porez_na_uslugu
   add constraint FK_POREZ_NA_POREZ_NA__DODATNE_ foreign key (id_dodatne_usluge_aranzmana)
      references Dodatne_usluge_aranzmana (id_dodatne_usluge_aranzmana)
go

alter table porez_na_uslugu
   add constraint FK_POREZ_NA_POREZ_NA__POREZ foreign key (P_IDENTIFIKATOR)
      references Porez (P_IDENTIFIKATOR)
go

alter table rezervisu_korisnici
   add constraint FK_REZERVIS_REZERVISU_KORISNIK foreign key (id_korisnik_aranzmana)
      references Korisnik_aranzmana (id_korisnik_aranzmana)
go

alter table rezervisu_korisnici
   add constraint FK_REZERVIS_REZERVISU_REZERVAC foreign key (id_rezervacija)
      references Rezervacija (id_rezervacija)
go

