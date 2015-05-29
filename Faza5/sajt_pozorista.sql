-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2015 at 05:23 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sajt_pozorista`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `KomID` int(11) NOT NULL AUTO_INCREMENT,
  `Tekst` text NOT NULL,
  `PredID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  PRIMARY KEY (`KomID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`KomID`, `Tekst`, `PredID`, `Username`) VALUES
(32, 'Odlicna predstava', 11, 'LukaAdmin'),
(34, 'Izuzetna komedija', 12, 'LukaAdmin'),
(35, 'Ne propustiti...', 13, 'LukaAdmin'),
(36, 'Ostavlja izuzetno jak utisak', 14, 'LukaAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE IF NOT EXISTS `korisnik` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `ZeliPostu` tinyint(1) NOT NULL,
  `Telefon` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Starost` int(11) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`Username`, `Password`, `Role`, `ZeliPostu`, `Telefon`, `Email`, `Starost`) VALUES
('Kristina', 'admin123', 'registrovan', 1, '1234319', 'kristinakrasnic@yahoo.com', 22),
('Luka111', 'admin123', 'registrovan', 1, '1231231', 'lukapetrovicsi@gmail.com', 22),
('LukaAdmin', 'admin123', 'admin', 1, '1234319', 'lukapetrovicsi123@gmail.com', 22),
('LukaKriticar', 'admin123', 'kriticar', 1, '1234319', 'lukapetrovicsi1@gmail.com', 22),
('LukaModerator', 'admin123', 'moderator', 1, '1231231', 'lukapetrovicsi12@gmail.com', 22);

-- --------------------------------------------------------

--
-- Table structure for table `kritika`
--

CREATE TABLE IF NOT EXISTS `kritika` (
  `KritID` int(11) NOT NULL AUTO_INCREMENT,
  `Naslov` varchar(40) NOT NULL,
  `Sadrzaj` text NOT NULL,
  `PredID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  PRIMARY KEY (`KritID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `kritika`
--

INSERT INTO `kritika` (`KritID`, `Naslov`, `Sadrzaj`, `PredID`, `Username`) VALUES
(12, 'Kako politicka elita dozivljava umetnost', 'Scena iz predstave "Bajka o pozorištu" je odlična komedija. Iako naslovljen kao bajka, ovaj komad koji se igra u "Zvezdara teatru", na žalost, mnogo više korespondira sa stvarnošću od bajki koje znamo. Položaj kulture, a pre svega pozorišta, i kako kulturu i umetnost doživljava naša politička elita su glavne teme kojima se ova predstava bavi.', 11, 'LukaAdmin'),
(13, 'Sjajna izvedba uprkos krizi budzeta', 'Grupa mladih glumaca, kako su objasnili na konferenciji za novinare, okupila se sa željom da radi uprkos krizi budžeta u institucionalnim pozorištima. Odabrali su komad za koji veruju da će zanimati publiku, jer ima dovoljan broj lepih uloga i zatim su angažovali reditelja. Uspeli su da dobiju materijalu pomoć opštine Sremski Karlovci, kao i scensko-tehničku podršku u Zvezdara teatru.\r\n\r\n“Boing Boing” je hit komedija iz 60-ih godina 20. veka. Prve predstave u Londonu i Parizu igrale su se čitave dve decenije. Komad je imao više od 200 premijernih postavki širom sveta, uključujući Srbiju. Snimljena su i četiri filma, a najpoznatija je verzija sa Džeri Luisom i Tonijem Kertisom u glavnim ulogama.', 12, 'LukaAdmin'),
(14, 'О КОМАДУ', 'Драма Брајана Фрила „Плес са Боговима“ (у оригиналу „Плес на празник Лунасе) имала је светску премијеру у ирском позоришту Еби, у Даблину 1990. године, а потом је комад изведен у Њујорку на Бродвеју и у Лондону на Вест Енду. Добио је престижне награде Тони и Оливије за најбољу драму. Осам година касније, Пат О’Конор режирао је филм са Мерил Стрип и Мајкл Гамбоном у главним улогама.\r\nОва необична драма говори о успоменама и животу једне ирске, руралне породице, коју чине пет неудатих жена, једно ванбрачно дете и брат који се после 25 година враћа из Африке. Кроз њихове међусобне односе, који су истовремено прожети и смехом и тугом, и љубављу и огорченошћу, Фрил нам дочарава живот појединца у друштву које се бори са променама и транзицијом. Као централни мотив, Фрил узима ирску музику и мотиве келтског наслеђа, те се радња одвија уочи локалног празника Лунасе, то јест, традиционалног жетвеног плеса. Плес, као симбол слободе и човекове снаге и духа, директно је супротстављен наметнутим друштвеним нормама и ригидности мале средине у којој свако о сваком све зна. Комад, на духовит и понегде ироничан начин, представља сурову реалност друштва које се бори да помири традиционалне вредности са нормама савременог света које му се намећу.', 13, 'LukaAdmin'),
(15, 'UOBRAŽENI BOLESNIK', 'Jagoš Marković, jedan od vodećih srpskih pozorišnih reditelja, postavlja na scenu poslednje Molijerovo delo, Uobraženog bolesnika, kojim je ovaj klasik književnosti i scene definisao svoj konačni odnos prema konzervativizmu, nadriučenjaštvu i šarlatanstvu, ali pre svega, prema društvu i njegovim tužnim porodicama koje pate od pohlepe i sebičluka. Boljka od koje pati glavni junak ove drame nije lako izlečiva, a preti da bude pogubna za celu porodicu.\r\n\r\nMolijerova kritika savremene medicinske nauke zasnovana je na uverenju da je način na koji ljudska ‘mašina’ funkcioniše i dalje misterija. Međutim, kao i Molijer, Jagoš Marković u njoj prepoznaje i boljke jedne druge vrste, one koje se javljaju u telu društva, pa otud njemu nisu misterija. Njihova scenska dijagnoza neznalaštva izaziva smeh, ali je i istinski blagotvorna i lekovita. Komedija mora da radi na tome da ponovo prisvoji terapeutsku društvenu funkciju time što će i doktore uvrstiti u sopstveni smešni mizanscen.', 14, 'LukaAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `pozoriste`
--

CREATE TABLE IF NOT EXISTS `pozoriste` (
  `PozID` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(40) NOT NULL,
  `Adresa` varchar(40) NOT NULL,
  `Telefon` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Slika` text NOT NULL,
  `Opis` text NOT NULL,
  `Username` varchar(20) NOT NULL,
  PRIMARY KEY (`PozID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pozoriste`
--

INSERT INTO `pozoriste` (`PozID`, `Naziv`, `Adresa`, `Telefon`, `Email`, `Slika`, `Opis`, `Username`) VALUES
(4, 'Zvezdara teatar', 'Milana Rakica 38', '011 2417 687', 'zvezdarateatar@gmail.com', 'zvezdara-teatar.jpg', 'Lep prostor na divnom mestu, blizu Cvetkove pijace, gde skrece 79ka iz bulevara. Prijatno osoblje, koje vam je na usluzi za sva vasa pitanja i potrebe.\r\n\r\nDok cekate pocetak predstave mozete da sedite u njihovom kafeu, popijete kafu, razgledate fotografije glumaca.', 'LukaAdmin'),
(5, 'Beogradsko dramsko pozoriste', 'Mileševska 64a ', '011 283 5111', 'beogradskodramsko@gmail.com', 'Beogradsko-dramsko.jpg', 'Beogradsko dramsko pozoriste je gotovo uvek puno, te je tesko naci kartu u poslednjem casu. Ne volim sto ne daju nikakav popust za studente.\r\n\r\nScena je sasvim pristojna, a i ono je u onoj bez boji nekako prijatno. Jedino sto nije u samom centru, vec treba malo da bi se doslo do njega.\r\n\r\nNekada povladjuje publici i nema predstave sa visokim standardom ali nekada udovoljava i tim zahtevima.', 'LukaAdmin'),
(6, 'Jugoslovensko dramsko pozoriste', 'Kralja Milana 50', '011 306 1900', 'jugdramskopozoriste@gmail.com', 'jugoslovensko-dramsko.jpg', 'Jugoslovensko dramsko pozoriste je jedno od najboljih koje imamo. Imaju dobar repertoar (Sanjari, Hazerfild, Godine koje su pojeli skakaci, O psima i deci, Mletacki trgovac, itd.) i sjajne glumce poput Glogovca i mlade postavke.\r\n\r\nImaju sjajna resenja grafickog dizajnera za plakate. Jedino mi se ne dopada sef koji vreba posetioce, ali su uostalom pozoriste koje slovi za vrlo moderno i novo i ono koje postavlja komade Biljane Srbljanovic', 'LukaAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `predstava`
--

CREATE TABLE IF NOT EXISTS `predstava` (
  `PredID` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(40) NOT NULL,
  `Slika` text NOT NULL,
  `Glumci` text NOT NULL,
  `Reziser` varchar(30) NOT NULL,
  `PozID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  PRIMARY KEY (`PredID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `predstava`
--

INSERT INTO `predstava` (`PredID`, `Naziv`, `Slika`, `Glumci`, `Reziser`, `PozID`, `Username`) VALUES
(11, 'Bajka o pozoristu', 'bajka-o-pozoristu.jpg', 'Tihomir Stanić, Miloš Samolov, Petar Strugar, Snežana Savić, Iskra Brajović, Miodrag Krstović i Vesna Stanković', 'Marko Misirača', 4, 'LukaAdmin'),
(12, 'Boing Boing', 'predstava-boing-boing.jpg', 'BORKA TOMOVIĆ, JELENA GAVRILOVIĆ, JELENA GAVRILOVIĆ, NADA MACANKOVIĆ, NADA MACANKOVIĆ, VIKTOR SAVIĆ, VUK KOSTIĆ', 'PREDRAG STOJMENOVIĆ', 4, 'LukaAdmin'),
(13, 'ПЛЕС СА БОГОВИМА', '2-ples-sa-bogovima-1.jpg', 'Слађана Влајовић, Милица Зарић, Биљана Малетић Заверла', 'Александар Дунђеровић ', 5, 'LukaAdmin'),
(14, 'UOBRAŽENI BOLESNIK', '765x300-Uobrazeni-bolesnik.jpg', 'Dragan Mićanović Radovan Vujović Jelisaveta Sablić Goran Šušljik Vlasta Velisavljević Bojan Dimitrijević Nebojša Milovanović Slobodan Tešić Bjelica Mladen Sovilj Miloš Jevtović', 'Jagoš Marković', 6, 'LukaAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `vest`
--

CREATE TABLE IF NOT EXISTS `vest` (
  `VestID` int(11) NOT NULL AUTO_INCREMENT,
  `Naslov` varchar(40) NOT NULL,
  `Sadrzaj` text NOT NULL,
  `Slika` text NOT NULL,
  `Username` varchar(20) NOT NULL,
  PRIMARY KEY (`VestID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `vest`
--

INSERT INTO `vest` (`VestID`, `Naslov`, `Sadrzaj`, `Slika`, `Username`) VALUES
(16, 'Позоришни маратон - проведите дан у Беог', 'Београдско драмско позориште и ове године, позива вас да проведете дан заједно са нама и будете део “2. Позоришног маратона”. Најпопуларније представе са нашег репертоара одиграћемо 30. маја. Промотивна цена карте за сваку од представа је 300 динарa.', 'pozorisni-maraton.jpg', 'LukaAdmin'),
(17, '"Палилуски роман" у режији Егона Савина,', '„Палилуски роман“, по мотивима драме "Иза Божјих леђа" Бранислава Нушића наслов је новог пројекта Београдског драмског позоришта у режији Егона Савина, чија је премијера заказана за 12. јун, a репризе за 13. и 14. јун.\r\nТо је ретко извођена позна Нушићева драма на тему грађанског живота у Београду, бесмисла у ком се људи често налазе, можда против своје воље, често под утицајем друштвених околности и предрасуда. Ово, за живота великог драматичара нештампано дело, чији је рукопис изгубљен, реконструисано је према сачуваним улогама у архиву Народног позоришта у Београду.', 'novi-projekat-u-reziji-egona-savina-iza-bozjih-ledja-branislava-nusica.jpg', 'LukaAdmin'),
(18, 'БДП у Суботици, Новом Саду, Бору, Кучеву', 'Публику у Народном позоришту у Суботици 8. маја очекује једна од наших најнаграђиванијх представа, која је освојила 10 награда и коју је за само годину и по дана играња видело 15000 гледалаца, широм земље и региона.\r\nДруштвено ангажовани пројекат Милене Деполо и Бобана Скерлића „Трпеле“, у режији Бобана Скерлића померио је границе уметничког израза и на специфичан начин истражио механизме насиља. Седам брилијантних глумица покренуће велики број реакција након што погледате представу и доживећете катарзу какву нисте одавно доживели у позоришту. У представи играју: Ивана Николић/ Паулина Манов, Даница Ристовски, Јадранка Селец, Милена Павловић Чучиловић, Наташа Марковић, Слађана Влајовић и Милица Зарић. Након суботичког гостовања ова представа имаће 50. извођење на матичној сцени.', 'bdp-u-subotici-novom-sadu-boru-kucevu-i-pancevu-1.jpg', 'LukaAdmin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
