
alter table Komitent
add constraint Fk_Komitent_Uredjaj foreign key (UredjajID) references Uredjaj(UredjajID)

alter table Uredjaj
add constraint Fk_Uredjaj_TipUredjaja foreign key (TipUredjajaID) references TipUredjaja(TipUredjajaID)

alter table Uredjaj
add constraint Fk_Uredjaj_Komitent foreign key (KomitentID) references Komitent(KomitentID)

alter table Racun
add constraint Fk_Racun_Popravka foreign key (PopravkaID) references Popravka(PopravkaID)

alter table Racun
add constraint Fk_Racun_Uredjaj foreign key (UredjajID) references Uredjaj(UredjajID)

alter table Racun
add constraint Fk_Racun_Serviser foreign key (ServiserID) references Serviser(ServiserID)

alter table StavkeRacuna
add constraint Fk_StavkeRacuna_Ugradnja foreign key (UgradnjaID) references Ugradnja(UgradnjaID)

alter table StavkeRacuna
add constraint Fk_StavkeRacuna_Racun foreign key (RacunID) references Racun(RacunID)

alter table Popravka
add constraint Fk_Popravka_Uredjaj foreign key (UredjajID) references Uredjaj(UredjajID)

alter table Popravka
add constraint Fk_Popravka_Serviser foreign key (ServiserID) references Serviser(ServiserID)

alter table Ugradnja
add constraint Fk_Ugradnja_RezervniDelovi foreign key (RezervniDeloviID) references RezervniDelovi(RezervniDeloviID)

alter table Ugradnja
add constraint Fk_Ugradnja_Popravka foreign key (PopravkaID) references Popravka(PopravkaID)

alter table Ugradnja
add constraint Fk_Ugradnja_Uredjaj foreign key (UredjajID) references Uredjaj(UredjajID)

alter table Ugradnja
add constraint Fk_Ugradnja_Serviser foreign key (ServiserID) references Serviser(ServiserID)
