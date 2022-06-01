-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Cze 2022, 10:18
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `estate_manager`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `em_dokumenty`
--

CREATE TABLE `em_dokumenty` (
  `dok_ID` int(11) NOT NULL,
  `dok_StronaJed` int(11) NOT NULL,
  `dok_StronaDw` int(11) NOT NULL,
  `dok_TypDok` varchar(50) NOT NULL,
  `dok_DataDodania` date NOT NULL,
  `dok_DataModyfikacji` date NOT NULL,
  `dok_SciezkaPliku` varchar(10000) NOT NULL,
  `dok_DataWygasania` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `em_finanse`
--

CREATE TABLE `em_finanse` (
  `fin_ID` int(11) NOT NULL,
  `fin_NrFaktury` varchar(50) CHARACTER SET latin7 NOT NULL,
  `fin_TypDok` varchar(50) NOT NULL,
  `fin_DataWystawienia` date NOT NULL,
  `fin_DataSprzedazy` date NOT NULL,
  `fin_WartoscBr` double NOT NULL,
  `fin_TerminPlatnosci` date NOT NULL,
  `fin_ID_Odbiorcy` int(11) NOT NULL,
  `fin_ID_Nieruchomosci` int(11) NOT NULL,
  `fin_Zaplacono` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `em_najemcy`
--

CREATE TABLE `em_najemcy` (
  `naj_ID` int(11) NOT NULL,
  `naj_Imie` varchar(20) CHARACTER SET latin7 NOT NULL,
  `naj_Nazwisko` varchar(20) CHARACTER SET latin7 NOT NULL,
  `naj_Plec` char(1) CHARACTER SET latin7 NOT NULL,
  `naj_Mail` varchar(50) CHARACTER SET latin7 NOT NULL,
  `naj_Telefon` smallint(9) NOT NULL,
  `naj_AdresZam` varchar(50) CHARACTER SET latin7 NOT NULL,
  `naj_MiastoZam` varchar(50) CHARACTER SET latin7 NOT NULL,
  `naj_KodPocztZam` char(8) CHARACTER SET latin7 NOT NULL,
  `naj_AdresKor` varchar(50) CHARACTER SET latin7 NOT NULL,
  `naj_MiastoKor` varchar(50) CHARACTER SET latin7 NOT NULL,
  `naj_KodPocztKor` varchar(50) CHARACTER SET latin7 NOT NULL,
  `naj_NrDowodu` varchar(50) CHARACTER SET latin7 NOT NULL,
  `naj_Pesel` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `em_nieruchomosci`
--

CREATE TABLE `em_nieruchomosci` (
  `nie_ID` int(11) NOT NULL,
  `nie_Adres` varchar(50) CHARACTER SET latin7 NOT NULL,
  `nie_Miasto` varchar(50) CHARACTER SET latin7 NOT NULL,
  `nie_KodPoczt` char(8) CHARACTER SET latin7 NOT NULL,
  `nie_NrLok` tinyint(4) NOT NULL,
  `nie_NrPietra` tinyint(2) NOT NULL,
  `nie_IloscPokoi` tinyint(2) NOT NULL,
  `nie_Powierzchnia` tinyint(6) NOT NULL,
  `nie_Umeblowane` tinyint(1) NOT NULL,
  `nie_StatusWynajmu` varchar(50) CHARACTER SET latin7 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `em_dokumenty`
--
ALTER TABLE `em_dokumenty`
  ADD PRIMARY KEY (`dok_ID`);

--
-- Indeksy dla tabeli `em_finanse`
--
ALTER TABLE `em_finanse`
  ADD PRIMARY KEY (`fin_ID`);

--
-- Indeksy dla tabeli `em_najemcy`
--
ALTER TABLE `em_najemcy`
  ADD PRIMARY KEY (`naj_ID`);

--
-- Indeksy dla tabeli `em_nieruchomosci`
--
ALTER TABLE `em_nieruchomosci`
  ADD PRIMARY KEY (`nie_ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `em_dokumenty`
--
ALTER TABLE `em_dokumenty`
  MODIFY `dok_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `em_finanse`
--
ALTER TABLE `em_finanse`
  MODIFY `fin_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `em_najemcy`
--
ALTER TABLE `em_najemcy`
  MODIFY `naj_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `em_nieruchomosci`
--
ALTER TABLE `em_nieruchomosci`
  MODIFY `nie_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
