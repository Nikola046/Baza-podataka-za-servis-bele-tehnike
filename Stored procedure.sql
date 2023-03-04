CREATE PROCEDURE TipUredjaja_Insert
(
@Vrsta_uredjaja NVARCHAR(20)
)
AS
BEGIN
	INSERT INTO TipUredjaja(Vrsta_uredjaja) VALUES (@Vrsta_uredjaja)
END
GO

CREATE PROCEDURE TipUredjaja_Update
(
@TipUredjajaID INT,
@Vrsta_uredjaja NVARCHAR(20)
)
AS
BEGIN
	UPDATE TipUredjaja SET Vrsta_uredjaja=@Vrsta_uredjaja
	WHERE TipUredjajaID=@TipUredjajaID
END
GO

CREATE PROCEDURE TipUredjaja_Delete
(
@TipUredjajaID INT
)
AS
BEGIN
	DELETE FROM TipUredjaja
	WHERE TipUredjajaID=@TipUredjajaID
END
GO

----------------------------------------------------------------------------------------------------------

CREATE PROCEDURE Uredjaj_Insert
(
@Marka NVARCHAR (30),
@Boja NVARCHAR (20),
@TipUredjajaID INT,
@KomitentID INT
)
AS
BEGIN
	INSERT INTO Uredjaj(Marka, Boja, TipUredjajaID, KomitentID)
	VALUES (@Marka, @Boja, @TipUredjajaID, @KomitentID)
END
GO

CREATE PROCEDURE Uredjaj_Update
(
@UredjajID INT,
@Marka NVARCHAR (30),
@Boja NVARCHAR (20),
@TipUredjajaID INT,
@KomitentID INT
)
AS
BEGIN
	UPDATE Uredjaj SET Marka=@Marka, Boja=@Boja, TipUredjajaID=@TipUredjajaID, KomitentID=@KomitentID
	WHERE UredjajID=@UredjajID
END
GO

CREATE PROCEDURE Uredjaj_Delete
(
@UredjajID INT
)
AS
BEGIN
	DELETE FROM Uredjaj
	WHERE UredjajID=@UredjajID
END
GO

------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE Komitent_Insert
(
@UredjajID INT,
@Ime NVARCHAR (20),
@Prezime NVARCHAR (30),
@Telefon INT ,
@Adresa NVARCHAR (40)
)
AS
BEGIN 
	INSERT INTO Komitent(UredjajID, Ime, Prezime, Telefon, Adresa)
	VALUES (@UredjajID, @Ime, @Prezime, @Telefon, @Adresa)
END
GO

CREATE PROCEDURE Komitent_Update
(
@KomitentID INT,
@UredjajID INT,
@Ime NVARCHAR (20),
@Prezime NVARCHAR (30),
@Telefon INT ,
@Adresa NVARCHAR (40)
)
AS
BEGIN
	UPDATE Komitent SET UredjajID=@UredjajID, Ime=@Ime, Prezime=@Prezime, Telefon=@Telefon, Adresa=@Adresa
	WHERE KomitentID=@KomitentID
END
GO

CREATE PROCEDURE Komitent_Delete
(
@KomitentID INT
)
AS
BEGIN
	DELETE FROM Komitent
	WHERE KomitentID=@KomitentID
END
GO

--------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE Serviser_Insert
(
@Ime NVARCHAR (20),
@Prezime NVARCHAR (30),
@Telefon INT ,
@Adresa NVARCHAR (40)
)
AS
BEGIN
	INSERT INTO Serviser(Ime, Prezime, Telefon, Adresa)
	VALUES (@Ime, @Prezime, @Telefon, @Adresa)
END
GO

CREATE PROCEDURE Serviser_Update
(
@ServiserID INT, 
@Ime NVARCHAR (20),
@Prezime NVARCHAR (30),
@Telefon INT ,
@Adresa NVARCHAR (40)
)
AS
BEGIN
	UPDATE Serviser SET Ime=@Ime, Prezime=@Prezime, Telefon=@Telefon, Adresa=@Adresa
	WHERE ServiserID=@ServiserID
END
GO

CREATE PROCEDURE ServiserID_Delete
(
@ServiserID INT
)
AS
BEGIN
	DELETE FROM Serviser
	WHERE ServiserID=@ServiserID
END
GO

----------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE RezervniDelovi_Insert
(
@Naziv NVARCHAR(30),
@Cena FLOAT,
@Kolicina INT,
@Minimalne_zalihe INT,
@Optimalne_zalihe INT
)
AS
BEGIN
	INSERT INTO RezervniDelovi (Naziv, Cena, Kolicina, Minimalne_zalihe, Optimalne_zalihe)
	VALUES (@Naziv, @Cena, @Kolicina, @Minimalne_zalihe, @Optimalne_zalihe)
END
GO

CREATE PROCEDURE RezervniDelovi_Update
(
@RezervniDeloviID INT, 
@Naziv NVARCHAR(30),
@Cena FLOAT,
@Kolicina INT,
@Minimalne_zalihe INT,
@Optimalne_zalihe INT
)
AS
BEGIN
	UPDATE RezervniDelovi SET Naziv=@Naziv, Cena=@Cena, Kolicina=@Kolicina, Minimalne_zalihe=@Minimalne_zalihe, Optimalne_zalihe=@Optimalne_zalihe
	WHERE RezervniDeloviID=@RezervniDeloviID
END
GO

CREATE PROCEDURE RezervniDelovi_Delete
(
@RezervniDeloviID INT
)
AS
BEGIN
	DELETE FROM RezervniDelovi
	WHERE RezervniDeloviID=@RezervniDeloviID
END
GO

-----------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE Racun_Insert
(
@PopravkaID INT,
@UredjajID INT,
@ServiserID INT,
@Broj_racuna INT,
@Vrednost_racuna FLOAT
)
AS
BEGIN
	INSERT INTO Racun(PopravkaID, UredjajID, ServiserID, Broj_racuna, Vrednost_racuna)
	VALUES (@PopravkaID, @UredjajID, @ServiserID, @Broj_racuna, @Vrednost_racuna)
END
GO

CREATE PROCEDURE Racun_Update
(
@RacunID INT,
@PopravkaID INT,
@UredjajID INT,
@ServiserID INT,
@Broj_racuna INT,
@Vrednost_racuna FLOAT
)
AS
BEGIN
	UPDATE Racun SET PopravkaID=@PopravkaID, UredjajID=@UredjajID, ServiserID=@ServiserID, Broj_racuna=@Broj_racuna, Vrednost_racuna=@Vrednost_racuna
	WHERE RacunID=@RacunID
END
GO

CREATE PROCEDURE Racun_Delete
(
@RacunID INT
)
AS
BEGIN
	DELETE FROM Racun
	WHERE RacunID=@RacunID
END
GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE StavkeRacuna_Insert
(
@UgradnjaID INT,
@RacunID INT,
@Ukupno FLOAT
)
AS
BEGIN
	INSERT INTO StavkeRacuna (UgradnjaID, RacunID, Ukupno)
	VALUES (@UgradnjaID, @RacunID, @Ukupno)
END
GO

CREATE PROCEDURE StavkeRacuna_Update
(
@StavkeRacunaID INT,
@UgradnjaID INT,
@RacunID INT,
@Ukupno FLOAT
)
AS
BEGIN
	UPDATE StavkeRacuna SET UgradnjaID=@UgradnjaID, RacunID=@RacunID, Ukupno=@Ukupno
	WHERE StavkeRacunaID=@StavkeRacunaID
END
GO

CREATE PROCEDURE StavkeRacuna_Delete
(
@StavkeRacunaID INT
)
AS
BEGIN
	DELETE FROM StavkeRacuna
	WHERE StavkeRacunaID=@StavkeRacunaID
END
GO

---------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE Popravka_Insert
(
@UredjajID INT,
@ServiserID INT,
@Datum DATE,
@Vreme TIME(7),
@Cena_po_casu FLOAT
)
AS
BEGIN
	INSERT INTO Popravka (UredjajID, ServiserID, Datum, Vreme, Cena_po_casu)
	VALUES (@UredjajID, @ServiserID, @Datum, @Vreme, @Cena_po_casu)
END
GO

CREATE PROCEDURE Popravka_Update
(
@PopravkaID INT,
@UredjajID INT,
@ServiserID INT,
@Datum DATE,
@Vreme TIME(7),
@Cena_po_casu FLOAT
)
AS
BEGIN
	UPDATE Popravka SET UredjajID=@UredjajID, ServiserID=@ServiserID, Datum=@Datum, Vreme=@Vreme, Cena_po_casu=@Cena_po_casu
	WHERE PopravkaID=@PopravkaID
END
GO

CREATE PROCEDURE Popravka_Delete
(
@PopravkaID INT
)
AS
BEGIN
	DELETE FROM Popravka
	WHERE PopravkaID=@PopravkaID
END
GO

----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE Ugradnja_Insert
(
@RezervniDeloviID INT,
@PopravkaID INT,
@UredjajID INT,
@ServiserID INT,
@Datum DATETIME,
@Kolicina INT
)
AS
BEGIN
	INSERT INTO Ugradnja (RezervniDeloviID, PopravkaID, UredjajID, ServiserID, Datum, Kolicina)
	VALUES (@RezervniDeloviID, @PopravkaID, @UredjajID, @ServiserID, @Datum, @Kolicina)
END
GO

CREATE PROCEDURE Ugradnja_Update
(
@UgradnjaID INT,
@RezervniDeloviID INT,
@PopravkaID INT,
@UredjajID INT,
@ServiserID INT,
@Datum DATETIME,
@Kolicina INT
)
AS
BEGIN
	UPDATE Ugradnja SET RezervniDeloviID=@RezervniDeloviID, PopravkaID=@PopravkaID, UredjajID=@UredjajID, ServiserID=@ServiserID, Datum=@Datum, Kolicina=@Kolicina
	WHERE UgradnjaID=@UgradnjaID
END
GO

CREATE PROCEDURE Ugradnja_Delete
(
@UgradnjaID INT
)
AS
BEGIN
	DELETE FROM Ugradnja
	WHERE UgradnjaID=@UgradnjaID
END 
GO
