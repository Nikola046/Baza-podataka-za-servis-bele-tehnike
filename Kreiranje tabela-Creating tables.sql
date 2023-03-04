use master
go
create database ServisBeleTehnike
go

create table TipUredjaja(
TipUredjajaID int not null identity (1,1),
Vrsta_uredjaja nvarchar(20)
)

create table Komitent (
KomitentID int not null identity (1,1),
UredjajID int not null,
Ime nvarchar (20),
Prezime nvarchar (30),
Telefon int not null,
Adresa nvarchar (40)
)

create table Uredjaj (
UredjajID int not null identity (1,1),
TipUredjajaID int not null,
KomitentID int not null,
Marka nvarchar (30),
Boja nvarchar (20)
)

create table Serviser(
ServiserID int not null identity (1,1),
Ime nvarchar (20),
Prezime nvarchar (30),
Telefon int not null,
Adresa nvarchar (40)
)

create table Racun(
RacunID int not null identity (1,1),
PopravkaID int not null,
UredjajID int not null,
ServiserID int not null,
Broj_racuna int not null,
Vrednost_racuna float not null
)

create table StavkeRacuna(
StavkeRacunaID int not null identity (1,1), 
UgradnjaID int not null, 
RacunID int not null, 
Ukupno float not null)

create table RezervniDelovi(
RezervniDeloviID int not null identity (1,1), 
Naziv nvarchar (30), 
Cena float not null, 
Kolicina int not null, 
Minimalne_zalihe int not null, 
Optimalne_zalihe int not null
)

create table Popravka(
PopravkaID int not null identity (1,1), 
UredjajID int not null, 
ServiserID int not null, 
Datum date, 
Vreme time, 
Cena_po_casu float not null
)

create table Ugradnja(
UgradnjaID int not null identity (1,1), 
RezervniDeloviID int not null, 
PopravkaID int not null, 
UredjajID int not null, 
ServiserID int not null, 
Datum datetime, 
Kolicina int not null
)
