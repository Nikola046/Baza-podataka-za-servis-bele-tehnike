
alter table TipUredjaja
add constraint Pk_TipUredjaja primary key (TipUredjajaID)

alter table Komitent
add constraint Pk_Komitent primary key (KomitentID)

alter table Uredjaj
add constraint Pk_Uredjaj primary key (UredjajID)

alter table Serviser
add constraint Pk_Serviser primary key (ServiserID)

alter table Racun
add constraint Pk_Racun primary key (RacunID)

alter table StavkeRacuna
add constraint Pk_StavkeRacuna primary key (StavkeRacunaID)

alter table RezervniDelovi
add constraint Pk_RezervniDelovi primary key (RezervniDeloviID)

alter table Popravka
add constraint Pk_Popravka primary key (PopravkaID)

alter table Ugradnja
add constraint Pk_Ugradnja primary key (UgradnjaID)


