CREATE TABLE Produkt (
ID_Produkt INT PRIMARY KEY,
Nazwa VARCHAR(50) NOT NULL,
Stan_magazynowy INT NOT NULL,
Kategoria VARCHAR(20) NOT NULL,
Cena_Netto DECIMAL(6,2) NOT NULL,
Stawka_Vat INT NOT NULL
);

CREATE TABLE Klienci (
ID_Klienta INT PRIMARY KEY,
Imie VARCHAR(20) NOT NULL,
Nazwisko VARCHAR(30) NOT NULL,
Numer_telefonu INT NOT NULL,
Adres_email VARCHAR(45) NOT NULL,
Ulica VARCHAR(30) NOT NULL,
Nr_budynku VARCHAR(5) NOT NULL,
Nr_lokalu INT NOT NULL,
Miasto VARCHAR(25) NOT NULL,
Kod_pocztowy VARCHAR(6) NOT NULL,
Wojewodztwo VARCHAR(30) NOT NULL
);

CREATE TABLE Zamowienia (
ID_Zamowienia INT PRIMARY KEY,
Klienci_ID_Klienta INT NOT NULL,
Data_zamowienia DATE NOT NULL,
Data_wysylki DATE NOT NULL,
FOREIGN KEY (Klienci_ID_Klienta) REFERENCES Klienci(ID_Klienta)
);

CREATE TABLE Produkt_Zamowienie (
ID_Produkt INT NOT NULL,
ID_Zamowienia INT NOT NULL,
Ilosc INT NOT NULL,
FOREIGN KEY (ID_Produkt) REFERENCES Produkt(ID_Produkt),
FOREIGN KEY (ID_Zamowienia) REFERENCES Zamowienia(ID_Zamowienia)
);


INSERT INTO Klienci VALUES (1, 'Adam', 'Nowak', '123456789', 'adam.nowak@wp.pl', 'Kwiatowa', '12', '2', 'Warszawa', '02-123', 'Mazowieckie');
INSERT INTO Klienci VALUES (2, 'Anna', 'Kowalska', '987654321', 'anna.kow@wp.pl', 'Kolorowa', '5', '1', 'Krakow', '30-123', 'Malopolskie');
INSERT INTO Klienci VALUES (3, 'Piotr', 'Wisniewski', '456789123', 'piotr.wis@wp.pl', 'Sloneczna', '7', '4', 'Lodz', '90-123', 'Lodzkie');
INSERT INTO Klienci VALUES (4, 'Jan', 'Kowalski', '589724924', 'jan.kow@wp.pl', 'Babelekowa', '15', '3', 'Lublin', '20-559', 'Lubelskie');
INSERT INTO Klienci VALUES (5, 'Katarzyna', 'Wojciechowska', '321456987', 'katarzyna.woj@wp.pl', 'Krotka', '2', '1', 'Gdansk', '80-123', 'Pomorskie');
INSERT INTO Klienci VALUES (6, 'Tomasz', 'Lewandowski', '789456123', 'tomasz.lew@wp.pl', 'Dluga', '9', '2', 'Szczecin', '70-123', 'Zachodniopomorskie');
INSERT INTO Klienci VALUES (7, 'Krzysztof', 'Dabrowski', '654321987', 'krzysztof.dab@wp.pl', 'Kolorowa', '3', '4', 'Bydgoszcz', '85-123', 'Kujawsko-pomorskie');
INSERT INTO Klienci VALUES (8, 'Barbara', 'Mazur', '963852741', 'barbara.maz@wp.pl', 'Sloneczna', '5', '1', 'Olsztyn', '10-123', 'Warminsko-mazurskie');
INSERT INTO Klienci VALUES (9, 'Marcin', 'Krawczyk', '852741963', 'marcin.kra@wp.pl', 'Kwiatowa', '7', '2', 'Rzeszow', '35-123', 'Podkarpackie');
INSERT INTO Klienci VALUES (10, 'Agnieszka', 'Zielinska', '741963258', 'agnieszka.zie@wp.pl', 'Babelekowa', '9', '3', 'Kielce', '25-123', 'Swietokrzyskie');
INSERT INTO Klienci VALUES (11, 'Michal', 'Jankowski', '632587941', 'michal.jan@wp.pl', 'Krotka', '2', '4', 'Opole', '45-123', 'Opolskie');
INSERT INTO Klienci VALUES (12, 'Ewa', 'Wozniak', '258794163', 'ewa.woz@wp.pl', 'Dluga', '5', '1', 'Gliwice', '40-123', 'Slaskie');
INSERT INTO Klienci VALUES (13, 'Andrzej', 'Kozlowski', '879416352', 'andrzej.koz@wp.pl', 'Kolorowa', '7', '2', 'Zielona Gora', '65-123', 'Lubuskie');
INSERT INTO Klienci VALUES (14, 'Magdalena', 'Jablonska', '794163528', 'magdalena.jab@wp.pl', 'Sloneczna', '9', '3', 'Bytom', '41-123', 'Slaskie');
INSERT INTO Klienci VALUES (15, 'Dawid', 'Wrobel', '941635287', 'dawid.wro@wp.pl', 'Kwiatowa', '2', '4', 'Czestochowa', '42-123', 'Slaskie');
INSERT INTO Klienci VALUES (16, 'Monika', 'Kaczmarek', '416352879', 'monika.kac@wp.pl', 'Babelekowa', '5', '1', 'Torun', '87-123', 'Kujawsko-pomorskie');
INSERT INTO Klienci VALUES (17, 'Lukasz', 'Piotrowski', '635287941', 'lukasz.pio@wp.pl', 'Krotka', '7', '2', 'Koszalin', '75-123', 'Zachodniopomorskie');
INSERT INTO Klienci VALUES (18, 'Kamil', 'Grabowski', '352879416', 'kamil.gra@wp.pl', 'Dluga', '9', '3', 'Gorzow Wielkopolski', '66-123', 'Lubuskie');
INSERT INTO Klienci VALUES (19, 'Patrycja', 'Zajac', '528794163', 'patrycja.zaj@wp.pl', 'Kolorowa', '2', '4', 'Slupsk', '76-123', 'Pomorskie');
INSERT INTO Klienci VALUES (20, 'Karol', 'Wieczorek', '287941635', 'karol.wie@wp.pl', 'Sloneczna', '5', '1', 'Elblag', '82-123', 'Warminsko-mazurskie');
INSERT INTO Klienci VALUES (21, 'Pawel', 'Kucharski', '879416352', 'pawel.kuc@wp.pl', 'Kwiatowa', '7', '2', 'Bialystok', '15-123', 'Podlaskie');
INSERT INTO Klienci VALUES (22, 'Julia', 'Wilk', '794163528', 'julia.wil@wp.pl', 'Babelekowa', '9', '3', 'Ostrow Wielkopolski', '63-123', 'Wielkopolskie');
INSERT INTO Klienci VALUES (23, 'Damian', 'Duda', '941635287', 'damian.dud@wp.pl', 'Krotka', '2', '4', 'Walbrzych', '58-123', 'Dolnoslaskie');
INSERT INTO Klienci VALUES (24, 'Aleksandra', 'Kowalczyk', '416352879', 'aleksandra.kow@wp.pl', 'Dluga', '5', '1', 'Tarnow', '33-123', 'Malopolskie');
INSERT INTO Klienci VALUES (25, 'Sebastian', 'Mikolajewski', '635287941', 'sebastian.mik@wp.pl', 'Kolorowa', '7', '2', 'Kalisz', '62-123', 'Wielkopolskie');

INSERT INTO Produkt VALUES (1, 'iPhone 11', 10, 'Telefon', 2000.00, 23);
INSERT INTO Produkt VALUES (2, 'Samsung Galaxy A53', 6, 'Telefon', 1700.00, 23);
INSERT INTO Produkt VALUES (3, 'Sony Xperia XZ3', 8, 'Telefon', 1500.00, 23);
INSERT INTO Produkt VALUES (4, 'LG G8', 5, 'Telefon', 1200.00, 23);
INSERT INTO Produkt VALUES (5, 'Huawei P30', 4, 'Telefon', 1000.00, 23);
INSERT INTO Produkt VALUES (6, 'Xiaomi Mi 9', 9, 'Telefon', 800.00, 23);
INSERT INTO Produkt VALUES (7, 'Asus Zenfone 6', 7, 'Telefon', 600.00, 23);
INSERT INTO Produkt VALUES (8, 'Lenovo K5', 2, 'Telefon', 400.00, 23);
INSERT INTO Produkt VALUES (9, 'Samsung Galaxy Tab S6', 10, 'Tablet', 1500.00, 23);
INSERT INTO Produkt VALUES (10, 'iPad Pro', 8, 'Tablet', 2000.00, 23);
INSERT INTO Produkt VALUES (11, 'Huawei MediaPad M5', 6, 'Tablet', 1200.00, 23);
INSERT INTO Produkt VALUES (12, 'Lenovo Tab 4', 4, 'Tablet', 800.00, 23);
INSERT INTO Produkt VALUES (13, 'Asus ZenPad 3S', 9, 'Tablet', 600.00, 23);
INSERT INTO Produkt VALUES (14, 'Acer Iconia One', 7, 'Tablet', 400.00, 23);
INSERT INTO Produkt VALUES (15, 'HP Pavilion', 10, 'Laptop', 2000.00, 23);
INSERT INTO Produkt VALUES (16, 'Dell Inspiron', 8, 'Laptop', 1700.00, 23);
INSERT INTO Produkt VALUES (17, 'Acer Aspire', 6, 'Laptop', 1500.00, 23);
INSERT INTO Produkt VALUES (18, 'Lenovo IdeaPad', 4, 'Laptop', 1200.00, 23);
INSERT INTO Produkt VALUES (19, 'MSI GL63', 9, 'Laptop', 1000.00, 23);
INSERT INTO Produkt VALUES (20, 'Apple MacBook Pro', 7, 'Laptop', 800.00, 23);
INSERT INTO Produkt VALUES (21, 'Samsung UE50RU7172', 10, 'Telewizor', 1500.00, 23);
INSERT INTO Produkt VALUES (22, 'LG OLED55C9PLA', 8, 'Telewizor', 2000.00, 23);
INSERT INTO Produkt VALUES (23, 'Sony KD-55XG8505', 6, 'Telewizor', 1200.00, 23);
INSERT INTO Produkt VALUES (24, 'Philips 55PUS7304', 4, 'Telewizor', 800.00, 23);
INSERT INTO Produkt VALUES (25, 'Panasonic TX-55GX550E', 9, 'Telewizor', 600.00, 23);

INSERT INTO Zamowienia VALUES (1, 1, '2020-04-01', '2020-04-06');
INSERT INTO Zamowienia VALUES (2, 2, '2020-05-02', '2020-05-07');
INSERT INTO Zamowienia VALUES (3, 3, '2020-06-03', '2020-06-08');
INSERT INTO Zamowienia VALUES (4, 4, '2020-07-04', '2020-07-09');
INSERT INTO Zamowienia VALUES (5, 5, '2020-08-05', '2020-08-10');
INSERT INTO Zamowienia VALUES (6, 6, '2020-09-06', '2020-09-11');
INSERT INTO Zamowienia VALUES (7, 7, '2020-10-07', '2020-10-12');
INSERT INTO Zamowienia VALUES (8, 8, '2020-11-08', '2020-11-13');
INSERT INTO Zamowienia VALUES (9, 9, '2020-12-09', '2020-12-14');
INSERT INTO Zamowienia VALUES (10, 10, '2021-01-10', '2021-01-15');
INSERT INTO Zamowienia VALUES (11, 11, '2021-02-11', '2021-02-16');
INSERT INTO Zamowienia VALUES (12, 12, '2021-03-12', '2021-03-17');
INSERT INTO Zamowienia VALUES (13, 13, '2021-04-13', '2021-04-18');
INSERT INTO Zamowienia VALUES (14, 14, '2021-05-14', '2021-05-19');
INSERT INTO Zamowienia VALUES (15, 15, '2021-06-15', '2021-06-20');

INSERT INTO Produkt_Zamowienie VALUES (1, 1, 3);
INSERT INTO Produkt_Zamowienie VALUES (2, 1, 3);
INSERT INTO Produkt_Zamowienie VALUES (2, 2, 2);
INSERT INTO Produkt_Zamowienie VALUES (3, 3, 1);
INSERT INTO Produkt_Zamowienie VALUES (4, 4, 4);
INSERT INTO Produkt_Zamowienie VALUES (5, 5, 5);
INSERT INTO Produkt_Zamowienie VALUES (6, 6, 2);
INSERT INTO Produkt_Zamowienie VALUES (7, 7, 3);
INSERT INTO Produkt_Zamowienie VALUES (8, 8, 1);
INSERT INTO Produkt_Zamowienie VALUES (9, 9, 4);
INSERT INTO Produkt_Zamowienie VALUES (10, 10, 5);
INSERT INTO Produkt_Zamowienie VALUES (11, 11, 2);
INSERT INTO Produkt_Zamowienie VALUES (12, 12, 3);
INSERT INTO Produkt_Zamowienie VALUES (13, 13, 1);
INSERT INTO Produkt_Zamowienie VALUES (14, 14, 4);
INSERT INTO Produkt_Zamowienie VALUES (15, 15, 5);

CREATE VIEW Zamowienia_K AS
SELECT Zamowienia.ID_Zamowienia, Klienci.Imie, Klienci.Nazwisko, Data_zamowienia, Data_wysylki, SUM(((Produkt.Cena_Netto * Produkt_Zamowienie.Ilosc) * (1 + Produkt.Stawka_Vat/100))) AS Wartosc_Brutto
FROM Zamowienia JOIN Klienci ON Zamowienia.Klienci_ID_Klienta=Klienci.ID_Klienta
JOIN Produkt_Zamowienie ON Zamowienia.ID_Zamowienia=Produkt_Zamowienie.ID_Zamowienia
JOIN Produkt ON Produkt_Zamowienie.ID_Produkt=Produkt.ID_Produkt
WHERE Nazwisko LIKE 'K%'
GROUP BY Zamowienia.ID_Zamowienia;

SELECT * FROM Zamowienia_K;

CREATE VIEW Zamowienia_Daty AS
SELECT Zamowienia.*, SUM(Produkt.Cena_Netto * Produkt_Zamowienie.Ilosc) AS Wartosc_Netto, SUM((Produkt.Cena_Netto * Produkt_Zamowienie.Ilosc) * (1 + Produkt.Stawka_Vat/100)) AS Wartosc_Brutto
FROM Zamowienia
JOIN Produkt_Zamowienie ON Zamowienia.ID_Zamowienia = Produkt_Zamowienie.ID_Zamowienia
JOIN Produkt ON Produkt_Zamowienie.ID_Produkt = Produkt.ID_Produkt
WHERE Data_zamowienia BETWEEN '2020-05-07' AND '2021-05-19'
GROUP BY Zamowienia.ID_Zamowienia;

SELECT * FROM Zamowienia_Daty;

CREATE VIEW wartosc_zamowienia AS
SELECT z.ID_Zamowienia, SUM(p.Cena_Netto * pz.Ilosc) AS wartosc_netto, SUM((p.Cena_Netto * pz.Ilosc) * (p.Stawka_Vat/100 + 1)) AS wartosc_brutto
FROM Produkt p
JOIN Produkt_Zamowienie pz ON p.ID_Produkt = pz.ID_Produkt
JOIN Zamowienia z ON pz.ID_Zamowienia = z.ID_Zamowienia
GROUP BY z.ID_Zamowienia;

select * from wartosc_zamowienia;

CREATE VIEW Zamowienia_Slaskie AS
SELECT * FROM Zamowienia
JOIN Klienci
ON Zamowienia.Klienci_ID_Klienta=Klienci.ID_Klienta
WHERE Wojewodztwo = 'Slaskie';

SELECT * FROM Zamowienia_Slaskie;

CREATE VIEW Klienci_Produkty AS
SELECT Zamowienia.ID_Zamowienia, Klienci.Imie, Klienci.Nazwisko, Produkt.Nazwa AS Produkt, Produkt.Kategoria, Produkt.Cena_Netto, Produkt_Zamowienie.Ilosc, (Produkt.Cena_Netto * Produkt_Zamowienie.Ilosc * (1 + Produkt.Stawka_Vat/100)) AS Cena_Brutto
FROM Produkt
INNER JOIN Produkt_Zamowienie ON Produkt.ID_Produkt = Produkt_Zamowienie.ID_Produkt
INNER JOIN Zamowienia ON Produkt_Zamowienie.ID_Zamowienia = Zamowienia.ID_Zamowienia
INNER JOIN Klienci ON Klienci.ID_Klienta = Zamowienia.Klienci_ID_Klienta;

SELECT * FROM Klienci_Produkty;

CREATE VIEW Zamowienia_Produkty as
SELECT Zamowienia.ID_Zamowienia, Produkt_Zamowienie.ID_Produkt
FROM Zamowienia
INNER JOIN Produkt_Zamowienie ON Zamowienia.ID_Zamowienia = Produkt_Zamowienie.ID_Zamowienia
WHERE Zamowienia.ID_Zamowienia BETWEEN 1 AND 5;



