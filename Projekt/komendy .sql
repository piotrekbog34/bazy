CREATE TABLE

CREATE TABLE Sprzet(
  id_Sprzet INT AUTO_INCREMENT NOT NULL,
  nazwa VARCHAR(45),
  rodzaj ENUM('pistolet','kamizelka','mundur','buty','kabura','gaz pieprzowy','inne'),
  sztuki INT
);


CREATE TABLE Grafik_Pracy(
  idGrafik_Pracy INT AUTO_INCREMENT NOT NULL,
  Poczatek_sluzby TIMESTAP(10),
  Koniec_sluzby TIMESTAP(10)
);
  

CREATE TABLE Funkcjonariusz(
  idFunkcjonariusz INT AUTO_INCREMENT NOT NULL,
  imie VARCHAR(40),
  nazwisko VARCHAR(60),
  pesel VARCHAR(11),
  data_urodzenia DATE,
  data_rozpoczecia_pracy,
  stopien ENUM('Nadinspektor','Inspektor','Podinspektor','Komisarz','Podkomisarz','Aspirant','Sierzant','Posterunkowy'),
  biuro ENUM('Biuro Prewencji','Biuro Ruchu Drogowego','Biuro Laczności i Informatyki','Biuro Logistyki Policji','Biuro Kryminalne','Biuro Wywiadu i Informacji Kryminalnych'),
  placa FLOAT
  FOREIGN KEY(Grafik_Pracy_idGrafik_Pracy) REFERENCES Grafik_Pracy(id)
  FOREIGN KEY(Sprzęt_idSprzęt) REFERENCES Sprzet(id)
);


CREATE TABLE Auto(
  Nr_rejestracyji VARCHAR(10),
  Marka VARCHAR(30),
  Data_rejestracji DATE
  FOREIGN KEY(Funkcjonariusz_idFunkcjonariusz) REFERENCES Funkcjonariusz(id)
);
 

CREATE TABLE Zdarzenie(
  idZdarzenia INT AUTO_INCREMENT NOT NULL,
  czas TIMESTAP(10),
  miejsce VARCHAR(100),
  ilosc_poszkodowanych INT,
  rodzaj_zdarzenia ENUM('kontrola trzezwosci', 'patrol', 'inne', 'interwencja'),
  opis VARCHAR(300),
  FOREIGN KEY(Funkcjonariusz_idFunkcjonariusz) REFERENCES Funkcjonariusz(id)
  FOREIGN KEY(Cywil_idCywil) REFERENCES Cywil(id)
);


CREATE TABLE Cywil(
  idCywil INT AUTO_INCREMENT NOT NULL,
  imie VARCHAR(40),
  nazwisko VARCHAR(60),
  pesel VARCHAR(11),
  data_urodzenia DATE,
  miejsce_urodzenia VARCHAR(30),
  rola_w_zdarzeniu ENUM('swiadek', 'podejzany', 'ofiara')
);
   

INSERT INTO

INSERT INTO Sprzet (nazwa, rodzaj, sztuki) VALUES
('glock', 'pistolet', '144'),
('kamizelka odblaskowa', 'kamizelka', '200'),
('mundur', 'mundur', '250'),
('gaz pieprzowy', 'gaz pieprzowy', '1000');


INSERT INTO Grafik_Pracy (Poczatek_sluzby, Koniec_sluzby) VALUES
('2021-01-01 06:00', '2021-01-01 18:00'),
('2021-01-01 18:00', '2021-01-02 06:00'),
('2021-01-02 06:00', '2021-01-02 18:00'),
('2021-01-02 18:00', '2021-01-03 06:00'),
('2021-01-03 06:00', '2021-01-03 18:00'),
('2021-01-03 18:00', '2021-01-04 06:00');

INSERT INTO Funkcjonariusz (imie, nazwisko, pesel, data_urodzenia, data_rozpoczecia_pracy, stopien, biuro, placa) VALUES
('Jacek', 'Król', '60010123456', '1960-01-01',
('Waldemar', 'Klimek', '65020265478', '1965-02-02',
('Adam', 'Bauman', '67030376589', '1967-03-03',
('Mikołaj', 'Kiszczak', '68040455434', '1960-04-04',
('Jarosław', 'Jaruzelski', '71050509654', '1971-05-05',
('Tomasz', 'Błasiak', '59060656470', '1959-06-06',
('Jacek', 'Klimek', '67070765478', '1967-07-07',
('Jacek', 'Bończyk', '55080867567', '1955-08-08',
('Artur', 'Dziuman', '88090967890', '1988-09-09',
('Tomasz', 'Jarosz', '81101009876', '1981-10-10',
('Artur', 'Kaczmarczyk', '89111155432', '1989-11-11',
('Michał', 'Konarski', '9012125431', '1990-12-12',



















  



 

    