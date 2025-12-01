/*==============================================================*/
/* DBMS name:      ORACLE Version 12c                           */
/* Created on:     23/11/2021 14:31:23                          */
/*==============================================================*/


alter table "Aranzman"
   drop constraint FK_ARANZMAN_ARANZMAN__TURISTIC;

alter table "Aranzman"
   drop constraint FK_ARANZMAN_NUDI_ARAN_TURISTIC;

alter table "Aranzman"
   drop constraint FK_ARANZMAN_SADRZI_SEZONA;

alter table "Aranzman_Sadrzi_usluge"
   drop constraint FK_ARANZMAN_ARANZMAN__DODATNE_;

alter table "Aranzman_Sadrzi_usluge"
   drop constraint FK_ARANZMAN_ARANZMAN__ARANZMAN;

alter table "Komentari"
   drop constraint FK_KOMENTAR_VRSTA_KOM_TIP_KOME;

alter table "Komentari"
   drop constraint FK_KOMENTAR_EVIDENTIR_REZERVAC;

alter table "Rezervacija"
   drop constraint FK_REZERVAC_RELATIONS_ARANZMAN;

alter table "Rezervacija"
   drop constraint FK_REZERVAC_NAPLACIVA_TIP_PLAC;

alter table "Rezervacija"
   drop constraint FK_REZERVAC_POSTOJI_NOSILAC_;

alter table "Rezervisane_usluge"
   drop constraint FK_REZERVIS_REZERVISA_DODATNE_;

alter table "Rezervisane_usluge"
   drop constraint FK_REZERVIS_REZERVISA_REZERVAC;

alter table "Turisticka_agencija"
   drop constraint FK_TURISTIC_OPSTINI_N_OPSTINA2;

alter table "Turisticki_objekat"
   drop constraint FK_TURISTIC_POSJEDUJE_TURISTIC;

alter table "Turisticko_mjesto"
   drop constraint FK_TURISTIC_OPSTINI_N_OPSTINA;

alter table "opstina"
   drop constraint FK_OPSTINA_DRZAVI_NA_DRZAVA;

alter table "porez_na_uslugu"
   drop constraint FK_POREZ_NA_POREZ_NA__DODATNE_;

alter table "porez_na_uslugu"
   drop constraint FK_POREZ_NA_POREZ_NA__POREZ;

alter table "rezervisu_korisnici"
   drop constraint FK_REZERVIS_REZERVISU_KORISNIK;

alter table "rezervisu_korisnici"
   drop constraint FK_REZERVIS_REZERVISU_REZERVAC;

drop index "nudi_aranzman_FK";

drop index "aranzman_turistickog_objekta_F";

drop index "sadrzi_FK";

drop table "Aranzman" cascade constraints;

drop index "Aranzman_Sadrzi_usluge_FK";

drop index "Aranzman_Sadrzi_usluge2_FK";

drop table "Aranzman_Sadrzi_usluge" cascade constraints;

drop table "Dodatne_usluge_aranzmana" cascade constraints;

drop table "Drzava" cascade constraints;

drop index "Vrsta_komentara_FK";

drop index "evidentiranje_komentara_FK";

drop table "Komentari" cascade constraints;

drop table "Korisnik_aranzmana" cascade constraints;

drop table "Nosilac_aranzmana" cascade constraints;

drop table "Porez" cascade constraints;

drop index "Relationship_21_FK";

drop index "naplacivanje_FK";

drop index "postoji_FK";

drop table "Rezervacija" cascade constraints;

drop index "Rezervisane_usluge_FK";

drop index "Rezervisane_usluge2_FK";

drop table "Rezervisane_usluge" cascade constraints;

drop table "Sezona" cascade constraints;

drop table "Tip_placanja" cascade constraints;

drop index "Opstini_nalaze_turisticke_agen";

drop table "Turisticka_agencija" cascade constraints;

drop index "Posjeduje_FK";

drop table "Turisticki_objekat" cascade constraints;

drop index "Opstini_nalaze_turisticka_mjes";

drop table "Turisticko_mjesto" cascade constraints;

drop index "Drzavi_nalaze_opstine_FK";

drop table "opstina" cascade constraints;

drop index "porez_na_uslugu_FK";

drop index "porez_na_uslugu2_FK";

drop table "porez_na_uslugu" cascade constraints;

drop index "rezervisu_korisnici_FK";

drop index "rezervisu_korisnici2_FK";

drop table "rezervisu_korisnici" cascade constraints;

drop table "tip_komentara" cascade constraints;

/*==============================================================*/
/* Table: "Aranzman"                                            */
/*==============================================================*/
create table "Aranzman" (
   "id_aranzman"        INTEGER               not null,
   "id_sezona"          INTEGER               not null,
   "id_turisticki_objekat" INTEGER               not null,
   "id_turisticka_agencija" INTEGER               not null,
   "nosilac_aranzmana"  VARCHAR2(20)          not null,
   "datum_od"           DATE                  not null,
   "datum_do"           DATE                  not null,
   "Cijena"             NUMBER(10,2)          not null,
   constraint PK_ARANZMAN primary key ("id_aranzman")
);

/*==============================================================*/
/* Index: "sadrzi_FK"                                           */
/*==============================================================*/
create index "sadrzi_FK" on "Aranzman" (
   "id_sezona" ASC
);

/*==============================================================*/
/* Index: "aranzman_turistickog_objekta_F"                      */
/*==============================================================*/
create index "aranzman_turistickog_objekta_F" on "Aranzman" (
   "id_turisticki_objekat" ASC
);

/*==============================================================*/
/* Index: "nudi_aranzman_FK"                                    */
/*==============================================================*/
create index "nudi_aranzman_FK" on "Aranzman" (
   "id_turisticka_agencija" ASC
);

/*==============================================================*/
/* Table: "Aranzman_Sadrzi_usluge"                              */
/*==============================================================*/
create table "Aranzman_Sadrzi_usluge" (
   "id_dodatne_usluge_aranzmana" INTEGER               not null,
   "id_aranzman"        INTEGER               not null,
   constraint PK_ARANZMAN_SADRZI_USLUGE primary key ("id_dodatne_usluge_aranzmana", "id_aranzman")
);

/*==============================================================*/
/* Index: "Aranzman_Sadrzi_usluge2_FK"                          */
/*==============================================================*/
create index "Aranzman_Sadrzi_usluge2_FK" on "Aranzman_Sadrzi_usluge" (
   "id_aranzman" ASC
);

/*==============================================================*/
/* Index: "Aranzman_Sadrzi_usluge_FK"                           */
/*==============================================================*/
create index "Aranzman_Sadrzi_usluge_FK" on "Aranzman_Sadrzi_usluge" (
   "id_dodatne_usluge_aranzmana" ASC
);

/*==============================================================*/
/* Table: "Dodatne_usluge_aranzmana"                            */
/*==============================================================*/
create table "Dodatne_usluge_aranzmana" (
   "id_dodatne_usluge_aranzmana" INTEGER               not null,
   "naziv_usluge"       VARCHAR2(50)          not null,
   "opis"               VARCHAR2(1000),
   constraint PK_DODATNE_USLUGE_ARANZMANA primary key ("id_dodatne_usluge_aranzmana")
);

/*==============================================================*/
/* Table: "Drzava"                                              */
/*==============================================================*/
create table "Drzava" (
   "id_drzava"          INTEGER               not null,
   "naziv_drzave"       VARCHAR2(50)          not null,
   constraint PK_DRZAVA primary key ("id_drzava")
);

/*==============================================================*/
/* Table: "Komentari"                                           */
/*==============================================================*/
create table "Komentari" (
   "id_komentar"        INTEGER               not null,
   "id_rezervacija"     INTEGER               not null,
   "id_tip_komentara"   INTEGER               not null,
   "opis"               VARCHAR2(1000)        not null,
   "ocjena"             INTEGER               not null,
   constraint PK_KOMENTARI primary key ("id_komentar")
);

/*==============================================================*/
/* Index: "evidentiranje_komentara_FK"                          */
/*==============================================================*/
create index "evidentiranje_komentara_FK" on "Komentari" (
   "id_rezervacija" ASC
);

/*==============================================================*/
/* Index: "Vrsta_komentara_FK"                                  */
/*==============================================================*/
create index "Vrsta_komentara_FK" on "Komentari" (
   "id_tip_komentara" ASC
);

/*==============================================================*/
/* Table: "Korisnik_aranzmana"                                  */
/*==============================================================*/
create table "Korisnik_aranzmana" (
   "id_korisnik_aranzmana" INTEGER               not null,
   "ime"                VARCHAR2(25)          not null,
   "prezime"            VARCHAR2(25)          not null,
   "imbg"               INTEGER               not null,
   "broj_telefona"      VARCHAR2(20),
   "email"              VARCHAR2(20),
   constraint PK_KORISNIK_ARANZMANA primary key ("id_korisnik_aranzmana")
);

/*==============================================================*/
/* Table: "Nosilac_aranzmana"                                   */
/*==============================================================*/
create table "Nosilac_aranzmana" (
   "id_nosilac"         INTEGER               not null,
   "ime"                VARCHAR2(25)          not null,
   "prezime"            VARCHAR2(25)          not null,
   "imbg"               INTEGER               not null,
   "broj_telefona"      VARCHAR2(20),
   "email"              VARCHAR2(20),
   constraint PK_NOSILAC_ARANZMANA primary key ("id_nosilac")
);

/*==============================================================*/
/* Table: "Porez"                                               */
/*==============================================================*/
create table "Porez" (
   P_IDENTIFIKATOR      INTEGER               not null,
   P_NAZIV              VARCHAR2(30)          not null,
   P_STOPA              NUMBER(3,2)           not null,
   constraint PK_POREZ primary key (P_IDENTIFIKATOR)
);

/*==============================================================*/
/* Table: "Rezervacija"                                         */
/*==============================================================*/
create table "Rezervacija" (
   "id_rezervacija"     INTEGER               not null,
   "id_nosilac"         INTEGER               not null,
   "id_tip_placanja"    INTEGER               not null,
   "id_aranzman"        INTEGER               not null,
   "rezervacija_od"     DATE                  not null,
   "rezervacija_do"     DATE                  not null,
   "Cijena"             NUMBER(10,2)          not null,
   constraint PK_REZERVACIJA primary key ("id_rezervacija")
);

/*==============================================================*/
/* Index: "postoji_FK"                                          */
/*==============================================================*/
create index "postoji_FK" on "Rezervacija" (
   "id_nosilac" ASC
);

/*==============================================================*/
/* Index: "naplacivanje_FK"                                     */
/*==============================================================*/
create index "naplacivanje_FK" on "Rezervacija" (
   "id_tip_placanja" ASC
);

/*==============================================================*/
/* Index: "Relationship_21_FK"                                  */
/*==============================================================*/
create index "Relationship_21_FK" on "Rezervacija" (
   "id_aranzman" ASC
);

/*==============================================================*/
/* Table: "Rezervisane_usluge"                                  */
/*==============================================================*/
create table "Rezervisane_usluge" (
   "id_dodatne_usluge_aranzmana" INTEGER               not null,
   "id_rezervacija"     INTEGER               not null,
   constraint PK_REZERVISANE_USLUGE primary key ("id_dodatne_usluge_aranzmana", "id_rezervacija")
);

/*==============================================================*/
/* Index: "Rezervisane_usluge2_FK"                              */
/*==============================================================*/
create index "Rezervisane_usluge2_FK" on "Rezervisane_usluge" (
   "id_rezervacija" ASC
);

/*==============================================================*/
/* Index: "Rezervisane_usluge_FK"                               */
/*==============================================================*/
create index "Rezervisane_usluge_FK" on "Rezervisane_usluge" (
   "id_dodatne_usluge_aranzmana" ASC
);

/*==============================================================*/
/* Table: "Sezona"                                              */
/*==============================================================*/
create table "Sezona" (
   "id_sezona"          INTEGER               not null,
   "godina"             NUMBER(4)             not null,
   "sezona"             VARCHAR2(25)          not null,
   constraint PK_SEZONA primary key ("id_sezona")
);

/*==============================================================*/
/* Table: "Tip_placanja"                                        */
/*==============================================================*/
create table "Tip_placanja" (
   "id_tip_placanja"    INTEGER               not null,
   "tip_placanja"       VARCHAR2(30)          not null,
   constraint PK_TIP_PLACANJA primary key ("id_tip_placanja")
);

/*==============================================================*/
/* Table: "Turisticka_agencija"                                 */
/*==============================================================*/
create table "Turisticka_agencija" (
   "id_turisticka_agencija" INTEGER               not null,
   "id_drzava"          INTEGER               not null,
   "id_opstina"         INTEGER               not null,
   "naziv"              VARCHAR2(25)          not null,
   "direktor"           VARCHAR2(25)          not null,
   "broj_telefona"      VARCHAR2(20),
   "sajt"               VARCHAR2(25),
   constraint PK_TURISTICKA_AGENCIJA primary key ("id_turisticka_agencija")
);

/*==============================================================*/
/* Index: "Opstini_nalaze_turisticke_agen"                      */
/*==============================================================*/
create index "Opstini_nalaze_turisticke_agen" on "Turisticka_agencija" (
   "id_drzava" ASC,
   "id_opstina" ASC
);

/*==============================================================*/
/* Table: "Turisticki_objekat"                                  */
/*==============================================================*/
create table "Turisticki_objekat" (
   "id_turisticki_objekat" INTEGER               not null,
   "id_turisticko_mjesto" INTEGER               not null,
   "naziv_objekta"      VARCHAR2(50)          not null,
   constraint PK_TURISTICKI_OBJEKAT primary key ("id_turisticki_objekat")
);

/*==============================================================*/
/* Index: "Posjeduje_FK"                                        */
/*==============================================================*/
create index "Posjeduje_FK" on "Turisticki_objekat" (
   "id_turisticko_mjesto" ASC
);

/*==============================================================*/
/* Table: "Turisticko_mjesto"                                   */
/*==============================================================*/
create table "Turisticko_mjesto" (
   "id_turisticko_mjesto" INTEGER               not null,
   "id_drzava"          INTEGER               not null,
   "id_opstina"         INTEGER               not null,
   "naziv_mjesta"       VARCHAR2(50)          not null,
   constraint PK_TURISTICKO_MJESTO primary key ("id_turisticko_mjesto")
);

/*==============================================================*/
/* Index: "Opstini_nalaze_turisticka_mjes"                      */
/*==============================================================*/
create index "Opstini_nalaze_turisticka_mjes" on "Turisticko_mjesto" (
   "id_drzava" ASC,
   "id_opstina" ASC
);

/*==============================================================*/
/* Table: "opstina"                                             */
/*==============================================================*/
create table "opstina" (
   "id_drzava"          INTEGER               not null,
   "id_opstina"         INTEGER               not null,
   "naziv_opstine"      VARCHAR2(25)          not null,
   constraint PK_OPSTINA primary key ("id_drzava", "id_opstina")
);

/*==============================================================*/
/* Index: "Drzavi_nalaze_opstine_FK"                            */
/*==============================================================*/
create index "Drzavi_nalaze_opstine_FK" on "opstina" (
   "id_drzava" ASC
);

/*==============================================================*/
/* Table: "porez_na_uslugu"                                     */
/*==============================================================*/
create table "porez_na_uslugu" (
   "id_dodatne_usluge_aranzmana" INTEGER               not null,
   P_IDENTIFIKATOR      INTEGER               not null,
   constraint PK_POREZ_NA_USLUGU primary key ("id_dodatne_usluge_aranzmana", P_IDENTIFIKATOR)
);

/*==============================================================*/
/* Index: "porez_na_uslugu2_FK"                                 */
/*==============================================================*/
create index "porez_na_uslugu2_FK" on "porez_na_uslugu" (
   P_IDENTIFIKATOR ASC
);

/*==============================================================*/
/* Index: "porez_na_uslugu_FK"                                  */
/*==============================================================*/
create index "porez_na_uslugu_FK" on "porez_na_uslugu" (
   "id_dodatne_usluge_aranzmana" ASC
);

/*==============================================================*/
/* Table: "rezervisu_korisnici"                                 */
/*==============================================================*/
create table "rezervisu_korisnici" (
   "id_korisnik_aranzmana" INTEGER               not null,
   "id_rezervacija"     INTEGER               not null,
   constraint PK_REZERVISU_KORISNICI primary key ("id_korisnik_aranzmana", "id_rezervacija")
);

/*==============================================================*/
/* Index: "rezervisu_korisnici2_FK"                             */
/*==============================================================*/
create index "rezervisu_korisnici2_FK" on "rezervisu_korisnici" (
   "id_rezervacija" ASC
);

/*==============================================================*/
/* Index: "rezervisu_korisnici_FK"                              */
/*==============================================================*/
create index "rezervisu_korisnici_FK" on "rezervisu_korisnici" (
   "id_korisnik_aranzmana" ASC
);

/*==============================================================*/
/* Table: "tip_komentara"                                       */
/*==============================================================*/
create table "tip_komentara" (
   "id_tip_komentara"   INTEGER               not null,
   "tip_komentara"      VARCHAR2(15)          not null,
   constraint PK_TIP_KOMENTARA primary key ("id_tip_komentara")
);

alter table "Aranzman"
   add constraint FK_ARANZMAN_ARANZMAN__TURISTIC foreign key ("id_turisticki_objekat")
      references "Turisticki_objekat" ("id_turisticki_objekat");

alter table "Aranzman"
   add constraint FK_ARANZMAN_NUDI_ARAN_TURISTIC foreign key ("id_turisticka_agencija")
      references "Turisticka_agencija" ("id_turisticka_agencija");

alter table "Aranzman"
   add constraint FK_ARANZMAN_SADRZI_SEZONA foreign key ("id_sezona")
      references "Sezona" ("id_sezona");

alter table "Aranzman_Sadrzi_usluge"
   add constraint FK_ARANZMAN_ARANZMAN__DODATNE_ foreign key ("id_dodatne_usluge_aranzmana")
      references "Dodatne_usluge_aranzmana" ("id_dodatne_usluge_aranzmana");

alter table "Aranzman_Sadrzi_usluge"
   add constraint FK_ARANZMAN_ARANZMAN__ARANZMAN foreign key ("id_aranzman")
      references "Aranzman" ("id_aranzman");

alter table "Komentari"
   add constraint FK_KOMENTAR_VRSTA_KOM_TIP_KOME foreign key ("id_tip_komentara")
      references "tip_komentara" ("id_tip_komentara");

alter table "Komentari"
   add constraint FK_KOMENTAR_EVIDENTIR_REZERVAC foreign key ("id_rezervacija")
      references "Rezervacija" ("id_rezervacija");

alter table "Rezervacija"
   add constraint FK_REZERVAC_RELATIONS_ARANZMAN foreign key ("id_aranzman")
      references "Aranzman" ("id_aranzman");

alter table "Rezervacija"
   add constraint FK_REZERVAC_NAPLACIVA_TIP_PLAC foreign key ("id_tip_placanja")
      references "Tip_placanja" ("id_tip_placanja");

alter table "Rezervacija"
   add constraint FK_REZERVAC_POSTOJI_NOSILAC_ foreign key ("id_nosilac")
      references "Nosilac_aranzmana" ("id_nosilac");

alter table "Rezervisane_usluge"
   add constraint FK_REZERVIS_REZERVISA_DODATNE_ foreign key ("id_dodatne_usluge_aranzmana")
      references "Dodatne_usluge_aranzmana" ("id_dodatne_usluge_aranzmana");

alter table "Rezervisane_usluge"
   add constraint FK_REZERVIS_REZERVISA_REZERVAC foreign key ("id_rezervacija")
      references "Rezervacija" ("id_rezervacija");

alter table "Turisticka_agencija"
   add constraint FK_TURISTIC_OPSTINI_N_OPSTINA2 foreign key ("id_drzava", "id_opstina")
      references "opstina" ("id_drzava", "id_opstina");

alter table "Turisticki_objekat"
   add constraint FK_TURISTIC_POSJEDUJE_TURISTIC foreign key ("id_turisticko_mjesto")
      references "Turisticko_mjesto" ("id_turisticko_mjesto");

alter table "Turisticko_mjesto"
   add constraint FK_TURISTIC_OPSTINI_N_OPSTINA foreign key ("id_drzava", "id_opstina")
      references "opstina" ("id_drzava", "id_opstina");

alter table "opstina"
   add constraint FK_OPSTINA_DRZAVI_NA_DRZAVA foreign key ("id_drzava")
      references "Drzava" ("id_drzava");

alter table "porez_na_uslugu"
   add constraint FK_POREZ_NA_POREZ_NA__DODATNE_ foreign key ("id_dodatne_usluge_aranzmana")
      references "Dodatne_usluge_aranzmana" ("id_dodatne_usluge_aranzmana");

alter table "porez_na_uslugu"
   add constraint FK_POREZ_NA_POREZ_NA__POREZ foreign key (P_IDENTIFIKATOR)
      references "Porez" (P_IDENTIFIKATOR);

alter table "rezervisu_korisnici"
   add constraint FK_REZERVIS_REZERVISU_KORISNIK foreign key ("id_korisnik_aranzmana")
      references "Korisnik_aranzmana" ("id_korisnik_aranzmana");

alter table "rezervisu_korisnici"
   add constraint FK_REZERVIS_REZERVISU_REZERVAC foreign key ("id_rezervacija")
      references "Rezervacija" ("id_rezervacija");

