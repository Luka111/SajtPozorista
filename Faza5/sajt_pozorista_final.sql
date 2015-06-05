-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2015 at 02:46 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`KomID`, `Tekst`, `PredID`, `Username`) VALUES
(32, 'Odlicna predstava', 11, 'LukaAdmin'),
(34, 'Izuzetna komedija', 12, 'LukaAdmin'),
(35, 'Ne propustiti...', 13, 'LukaAdmin'),
(36, 'Ostavlja izuzetno jak utisak', 14, 'LukaAdmin'),
(38, 'Zanimljiva predstava, vredi pogledati', 15, 'LukaAdmin'),
(39, 'Dobra predstava! Glumci impresivni, rediteljska rešenja odlična, tema uvek aktuena.. Vredi odvojiti vreme i novac za ovaku predstavu.. Izdvoijo bih Srđana Dedića, Živića i gospođu Ristovski, ali i Jelenu Čvorović koja je sa malo teksta napravila fenomenlanu ulogu!', 16, 'LukaAdmin'),
(40, 'Predstava drzi paznju do samog kraja.FENOMENALNA.E ovo je gluma i dobra predstava.Svaka cast glumcima,a Bikovic je zaista dokazao koliko je talentovan.', 16, 'LukaAdmin'),
(41, 'Sjajna predstava! Gledala sam je dva puta ali pre par godina.Kada je mogu ocekivati ponovo na repertoaru?\n\nPozdrav', 14, 'LukaAdmin'),
(42, 'Definitivno jedna od najboljih i najsmesnijih predstava koje sam gledala! Komedija sa ukusom, satira o drustvu koja je hirurski precizna, i naravno, maestralna gluma, a posebno Nebojse Glogovca.\nSjajno!!!', 17, 'LukaAdmin'),
(43, 'Preporučujem! Dva sata kvalitetnog pozorišta!', 17, 'LukaAdmin'),
(44, 'Malopre pogledah predstavu. Ocena: pretenciozna papazjanija.\nOvakva režija je bila ''moderna'' i ''avangardna'' pre pedeset godina. Nije ni čudo da ljudi izbegavaju pozorište.', 18, 'LukaAdmin'),
(45, 'Ne postoje komentari za traženu predstavu!!!', 19, 'LukaAdmin'),
(46, 'Представа говори о чаробњаку Мерлину, најмоћнијем чаробњаку међу вилама и вилењацима који доводи злу вештицу на суђење, а за сведоке позива јунаке из популарних цртаних филмова Волта Дизнија', 20, 'LukaAdmin'),
(47, 'Ova predstava mi se stvarno dopada, moram priznati da je bilo strašno kad su ispadale oči polu sestrama i kadfa su sekle pete i prste na nogama!', 21, 'LukaAdmin'),
(48, '"Halo Beograd" večeras od 20h na sceni Madlenijanuma! Poklon karte za najlepši citat Mome Kapora koji stigne do 12h!', 22, 'LukaAdmin'),
(49, 'SAVETUJEM SVIMA DA POGLEDAJU PREDSTAVU, ODLIČNI GLUMCI, ODLIČNA RADNJA, ODUŠEVLJENA SAM!\n', 23, 'LukaAdmin'),
(50, 'davno sam gledao predstavu i mislio sam da cu malo splasnuti po pitanju nezadovoljstva vezanog za ninu jankovic, ali sve sto mi je u stvari i ostalo u secanju je JEZIVO LOSA NINA JANKOVIC KAO TEORIJA I DEFINICIJA U JEDNOM, ANA KARENJINA. gledajte samo ako zelite da se kaznite i pritom vam tasta plati kartu.', 23, 'LukaAdmin'),
(51, 'Obavezno pogledati!!!', 24, 'LukaAdmin'),
(52, '100 puta sam ga gledao, i svaki put bi me nasmejao. Legendarno!', 25, 'LukaAdmin'),
(53, 'Predstava je super, opet bih se vratio da je gledam :DDD\n', 26, 'LukaAdmin'),
(54, 'Potpuno se slazem sa prethodnim komentarom,a na sve to dodajem da taj Bojan o kome prica Natasa ima svoje pravo ime.Bojan je lik iz serije.\n', 26, 'LukaAdmin');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `kritika`
--

INSERT INTO `kritika` (`KritID`, `Naslov`, `Sadrzaj`, `PredID`, `Username`) VALUES
(12, 'Kako politicka elita dozivljava umetnost', 'Scena iz predstave "Bajka o pozorištu" je odlična komedija. Iako naslovljen kao bajka, ovaj komad koji se igra u "Zvezdara teatru", na žalost, mnogo više korespondira sa stvarnošću od bajki koje znamo. Položaj kulture, a pre svega pozorišta, i kako kulturu i umetnost doživljava naša politička elita su glavne teme kojima se ova predstava bavi.', 11, 'LukaAdmin'),
(13, 'Sjajna izvedba uprkos krizi budzeta', 'Grupa mladih glumaca, kako su objasnili na konferenciji za novinare, okupila se sa željom da radi uprkos krizi budžeta u institucionalnim pozorištima. Odabrali su komad za koji veruju da će zanimati publiku, jer ima dovoljan broj lepih uloga i zatim su angažovali reditelja. Uspeli su da dobiju materijalu pomoć opštine Sremski Karlovci, kao i scensko-tehničku podršku u Zvezdara teatru.\r\n\r\n“Boing Boing” je hit komedija iz 60-ih godina 20. veka. Prve predstave u Londonu i Parizu igrale su se čitave dve decenije. Komad je imao više od 200 premijernih postavki širom sveta, uključujući Srbiju. Snimljena su i četiri filma, a najpoznatija je verzija sa Džeri Luisom i Tonijem Kertisom u glavnim ulogama.', 12, 'LukaAdmin'),
(14, 'О КОМАДУ', 'Драма Брајана Фрила „Плес са Боговима“ (у оригиналу „Плес на празник Лунасе) имала је светску премијеру у ирском позоришту Еби, у Даблину 1990. године, а потом је комад изведен у Њујорку на Бродвеју и у Лондону на Вест Енду. Добио је престижне награде Тони и Оливије за најбољу драму. Осам година касније, Пат О’Конор режирао је филм са Мерил Стрип и Мајкл Гамбоном у главним улогама.\r\nОва необична драма говори о успоменама и животу једне ирске, руралне породице, коју чине пет неудатих жена, једно ванбрачно дете и брат који се после 25 година враћа из Африке. Кроз њихове међусобне односе, који су истовремено прожети и смехом и тугом, и љубављу и огорченошћу, Фрил нам дочарава живот појединца у друштву које се бори са променама и транзицијом. Као централни мотив, Фрил узима ирску музику и мотиве келтског наслеђа, те се радња одвија уочи локалног празника Лунасе, то јест, традиционалног жетвеног плеса. Плес, као симбол слободе и човекове снаге и духа, директно је супротстављен наметнутим друштвеним нормама и ригидности мале средине у којој свако о сваком све зна. Комад, на духовит и понегде ироничан начин, представља сурову реалност друштва које се бори да помири традиционалне вредности са нормама савременог света које му се намећу.', 13, 'LukaAdmin'),
(15, 'UOBRAŽENI BOLESNIK', 'Jagoš Marković, jedan od vodećih srpskih pozorišnih reditelja, postavlja na scenu poslednje Molijerovo delo, Uobraženog bolesnika, kojim je ovaj klasik književnosti i scene definisao svoj konačni odnos prema konzervativizmu, nadriučenjaštvu i šarlatanstvu, ali pre svega, prema društvu i njegovim tužnim porodicama koje pate od pohlepe i sebičluka. Boljka od koje pati glavni junak ove drame nije lako izlečiva, a preti da bude pogubna za celu porodicu.\r\n\r\nMolijerova kritika savremene medicinske nauke zasnovana je na uverenju da je način na koji ljudska ‘mašina’ funkcioniše i dalje misterija. Međutim, kao i Molijer, Jagoš Marković u njoj prepoznaje i boljke jedne druge vrste, one koje se javljaju u telu društva, pa otud njemu nisu misterija. Njihova scenska dijagnoza neznalaštva izaziva smeh, ali je i istinski blagotvorna i lekovita. Komedija mora da radi na tome da ponovo prisvoji terapeutsku društvenu funkciju time što će i doktore uvrstiti u sopstveni smešni mizanscen.', 14, 'LukaAdmin'),
(16, 'Kritika', 'O delu', 18, 'LukaAdmin'),
(17, 'O delu', '...', 21, 'LukaAdmin'),
(18, 'O delu', '...', 22, 'LukaAdmin'),
(19, 'o delu', '....', 26, 'LukaAdmin');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pozoriste`
--

INSERT INTO `pozoriste` (`PozID`, `Naziv`, `Adresa`, `Telefon`, `Email`, `Slika`, `Opis`, `Username`) VALUES
(4, 'Zvezdara teatar', 'Milana Rakica 38', '011 2417 687', 'zvezdarateatar@gmail.com', 'zvezdara-teatar1.jpg', 'Lep prostor na divnom mestu, blizu Cvetkove pijace, gde skrece 79ka iz bulevara. Prijatno osoblje, koje vam je na usluzi za sva vasa pitanja i potrebe.\r\n\r\nDok cekate pocetak predstave mozete da sedite u njihovom kafeu, popijete kafu, razgledate fotografije glumaca.', 'LukaAdmin'),
(5, 'Beogradsko dramsko pozoriste', 'Mileševska 64a ', '011 283 5111', 'beogradskodramsko@gmail.com', 'Beogradsko-dramsko1.jpg', 'Beogradsko dramsko pozoriste je gotovo uvek puno, te je tesko naci kartu u poslednjem casu. Ne volim sto ne daju nikakav popust za studente.\r\n\r\n', 'LukaAdmin'),
(6, 'Jugoslovensko dramsko pozoriste', 'Kralja Milana 50', '011 306 1900', 'jugdramskopozoriste@gmail.com', 'js2.jpg', 'Jugoslovensko dramsko pozoriste je jedno od najboljih koje imamo. Imaju dobar repertoar (Sanjari, Hazerfild, Godine koje su pojeli skakaci, O psima i deci, Mletacki trgovac, itd.) i sjajne glumce poput Glogovca i mlade postavke.\r\n\r\nImaju sjajna resenja grafickog dizajnera za plakate. Jedino mi se ne dopada sef koji vreba posetioce, ali su uostalom pozoriste koje slovi za vrlo moderno i novo i ono koje postavlja komade Biljane Srbljanovic', 'LukaAdmin'),
(7, 'Malo pozorište Duško Radović', 'Aberdareva 1 11000, Beograd, Srbija', '011/ 7858439', 'info@malopozoriste.co.rs', 'Logo12.jpg', 'Malo pozorište DUŠKO RADOVIĆ osnovano je 27. maja 1948. god. kao Pozorište lutaka NR Srbije, a svoju prvu premijeru Pepeljuga u režiji Predraga Dinulovića, izvelo je 23. oktobra 1949. god u hotelu Palas. ', 'LukaAdmin'),
(8, 'Madlenianum', 'BEOGRAD, 11080 ZEMUN Ul. Glavna 32', '011/316 25 33', 'mad.oper@madlenianum.rs', 'logo_23.jpg', 'Opera i teatar MADLENIANUM osnovan je 1998. godine, kao prva privatna opera u ovom delu Evrope.', 'LukaAdmin'),
(9, 'Pozorište na Terazijama', 'Trg Nikole Pašića 3, 11000 Beograd Srbij', '+381 11 33 02 6', 'office@pozoristeterazije.com', 'tera111.jpg', 'Pozorište na Terazijama je osnovano 1949. god kao "Humorističko pozorište" stalna, repertoarska ustanova pozorišne kulture, muzičkog i komedijskog žanra...', 'LukaAdmin');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `predstava`
--

INSERT INTO `predstava` (`PredID`, `Naziv`, `Slika`, `Glumci`, `Reziser`, `PozID`, `Username`) VALUES
(11, 'Bajka o pozoristu', 'bajka-o-pozoristu1.jpg', 'Tihomir Stanić, Miloš Samolov, Petar Strugar, Snežana Savić, Iskra Brajović, Miodrag Krstović i Vesna Stanković', 'Marko Misirača', 4, 'LukaAdmin'),
(12, 'Boing Boing', 'predstava-boing-boing1.jpg', 'BORKA TOMOVIĆ, JELENA GAVRILOVIĆ, JELENA GAVRILOVIĆ, NADA MACANKOVIĆ, NADA MACANKOVIĆ, VIKTOR SAVIĆ, VUK KOSTIĆ', 'PREDRAG STOJMENOVIĆ', 4, 'LukaAdmin'),
(13, 'Ples sa Bogovima', 'psbogovima1.jpg', 'Slađana Vlajović;  Milica Zarić;  Biljana Maletić Zaverla...', 'Aleksandar Dunđerović', 5, 'LukaAdmin'),
(14, 'UOBRAŽENI BOLESNIK', 'Uobrazeni-bolesnik1.jpg', 'Dragan Mićanović Radovan Vujović Jelisaveta Sablić Goran Šušljik Vlasta Velisavljević Bojan Dimitrijević Nebojša Milovanović Slobodan Tešić Bjelica Mladen Sovilj Miloš Jevtović', 'Jagoš Marković', 6, 'LukaAdmin'),
(15, 'Hotel Evropa', 'he1.jpg', 'Slobodan Boda Ninković;  Mateja Popović;  Danica Ristovski;  Jelena Čvorović Paunović;  Nebojša Ljubišić;  Boris Radmilović;  Dragoslav Ilić;  Azra Čengić;  Zoran Simonović...', 'Siniša Kovačević', 5, 'LukaAdmin'),
(16, 'Kad su cvetale tikve', 'kad-su-cvetale-tikve-31.jpg', 'Miloš Biković;  Mihailo Miša Janketić;  Danica Ristovski;  Srđan Dedić;  Anja Alač;  Petar Benčina/Uroš Jakovljević;  Jelena Čvorović Paunović;  Slobodan Boda Ninković...', 'Boban Skerlić', 5, 'LukaAdmin'),
(17, 'Razbijeni krčag', 'a12.jpg', 'Nebojša Glogovac;  Svetozar Cvetković;  Vladica Milosavljević;  Ljubomir Bandović;  Marko Baćović;  Jovana Gavrilović;  Marko Janketić;  Lazar Đukić', 'Igor Vuk Torbica', 6, 'LukaAdmin'),
(18, 'Zmajeubice', 'ym1.jpg', 'Jovana Gavrilović;  Milan Marić;  Dubravka Kovjanić;  Srđan Timarov;  Radovan Vujović;  Mirjana Karanović;  Nikola Rakočević', 'Iva Milošević', 6, 'LukaAdmin'),
(19, 'Pinokio', 'pinokio1.jpg', 'Jelena Petrović:  Nenad Radović;  Nikola Protulipac;  Miloš Anđelković;  Alek Rodić;  Jovana Cvetković', 'Ksenija Krnajski ', 7, 'LukaAdmin'),
(20, 'Noć u Merlinovom zamku', 'noc-u-merlinovom-zamku_05122.jpg', 'Bojan Lazarov;  Vladislava Đorđević;  Aleksandra Anđelković;  Alek Rodić;  Sandra Rodić Janković;  Jovana Cvetković ;  Nenad Radović ;  Ljiljana Peroš  ', 'Sandra Rodić Janković ', 7, 'LukaAdmin'),
(21, 'Strašne priče braće Grim', 'Noc-u-Merlinovom-zamku-1111.jpg', 'Miša Samolov;  Jovo Maksić;  Dušica Sinobad;  Dušan Murić;  Dušan Murić;  Jelica Vučinić;   Alek Rodić', 'Mik Gordon', 7, 'LukaAdmin'),
(22, 'HALO BEOGRAD', 'halo-beograd111.jpg', 'Rada Đuričin;  Vladimir Cvejić;  Vladimir Racković', 'Rada Đuričin', 8, 'LukaAdmin'),
(23, 'ANA KARENJINA', 'a111na.jpg', 'Nina Janković;  Viktor Savić;  Aleksandar Radojičić;  Tamara Aleksić;  Igor Đorđević;  Stefan Jovanović;  Petar Jekić', 'Jug Radivojević', 8, 'LukaAdmin'),
(24, 'GLORIJA', '111111Glorija-209x300.jpg', 'Ivana Knežević;  Rade Marjanović;  Duško Radović;  Ivan Bosiljčić;  Feđa Stojanović;  Milan Milosavljević;  Katarina Gojković', 'Iva Milošević', 9, 'LukaAdmin'),
(25, 'MARATONCI TRČE POČASNI KRUG', 'Maratonci_mjuzik1111l.jpg', 'Vladan Savić;  Janoš Tot;  Duško Radović;  Dragan Vujić / Desimir Stanojević;  Ivan Bosiljčić;   Kalina Kovačević;  Marko Živić;   Ivan Jeftović', 'Kokan Mladenović', 9, 'LukaAdmin'),
(26, 'ČIKAGO', 'ch1111ica.jpg', 'Ivana Knežević;  Jelena Jovičić/Sloboda Mićalović;  Milan Antonić/Nikola Bulatović;  Dragan Vujić;  Zinaida Dedakin/Dušica Novaković', ' Kokan Mladenović', 9, 'LukaAdmin');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `vest`
--

INSERT INTO `vest` (`VestID`, `Naslov`, `Sadrzaj`, `Slika`, `Username`) VALUES
(16, 'Позоришни маратон - проведите дан у Беог', 'Београдско драмско позориште и ове године, позива вас да проведете дан заједно са нама и будете део “2. Позоришног маратона”. Најпопуларније представе са нашег репертоара одиграћемо 30. маја. Промотивна цена карте за сваку од представа је 300 динарa.', 'pozorisni-maraton.jpg', 'LukaAdmin'),
(17, '"Палилуски роман" у режији Егона Савина,', '„Палилуски роман“, по мотивима драме "Иза Божјих леђа" Бранислава Нушића наслов је новог пројекта Београдског драмског позоришта у режији Егона Савина, чија је премијера заказана за 12. јун, a репризе за 13. и 14. јун.\r\nТо је ретко извођена позна Нушићева драма на тему грађанског живота у Београду, бесмисла у ком се људи често налазе, можда против своје воље, често под утицајем друштвених околности и предрасуда. Ово, за живота великог драматичара нештампано дело, чији је рукопис изгубљен, реконструисано је према сачуваним улогама у архиву Народног позоришта у Београду.', 'novi-projekat-u-reziji-egona-savina-iza-bozjih-ledja-branislava-nusica.jpg', 'LukaAdmin'),
(18, 'БДП у Суботици, Новом Саду, Бору, Кучеву', 'Публику у Народном позоришту у Суботици 8. маја очекује једна од наших најнаграђиванијх представа, која је освојила 10 награда и коју је за само годину и по дана играња видело 15000 гледалаца, широм земље и региона.\r\nДруштвено ангажовани пројекат Милене Деполо и Бобана Скерлића „Трпеле“, у режији Бобана Скерлића померио је границе уметничког израза и на специфичан начин истражио механизме насиља. Седам брилијантних глумица покренуће велики број реакција након што погледате представу и доживећете катарзу какву нисте одавно доживели у позоришту. У представи играју: Ивана Николић/ Паулина Манов, Даница Ристовски, Јадранка Селец, Милена Павловић Чучиловић, Наташа Марковић, Слађана Влајовић и Милица Зарић. Након суботичког гостовања ова представа имаће 50. извођење на матичној сцени.', 'bdp-u-subotici-novom-sadu-boru-kucevu-i-pancevu-1.jpg', 'LukaAdmin'),
(19, 'НАГРАДЕ 60. СТЕРИЈИНОГ ПОЗОРЈА 2015.', 'Стеријина награда за најбољу представу – КАЗИМИР И КАРОЛИНА Едена фон Хорвата, режија Снежана Тришић, Позориште Атеље 212 Београд. Одлука је донета једногласно.\r\n\r\nСтеријина награда за текст савремене драме – МИЛЕНА МАРКОВИЋ за текст ЗМАЈЕУБИЦЕ, режија Ива Милошевић, Југословенско драмско позориште Београд. Одлука је донета једногласно.\r\n\r\nСтеријина награда за режију – СНЕЖАНА ТРИШИЋ за представу КАЗИМИР И КАРОЛИНА Едена фон Хорвата, Позориште Атеље 212 Београд. Одлука је донета једногласно.', 'dodela-nagra1111da.jpg', 'LukaAdmin'),
(20, 'ПОПУСТИ У ЈУНУ', 'Цена улазнице за све репризне представе Српског народног позоришта – 200,00 динара.\r\nУз купљену улазницу за ОПЕРСКИ КОНЦЕРТ - гратис улазница за оперу ЕРО С ОНОГА СВИЈЕТА или балет ЛАБУДОВО ЈЕЗЕРО.', 'blagaj1111na.jpg', 'LukaAdmin'),
(21, 'ПРЕМИЈЕРНО ОДИГРАН „ВИОЛИНИСТА НА КРОВУ“', 'У суботу 23. маја је, после седам недеља интензивних проба, премијерно одигран „Виолиниста на крову“, мјузикл у копродукцији Српског народног позоришта и Новосадског позоришта ', 'violinist1111a-na-krovu3.jpg', 'LukaAdmin'),
(22, 'МИОДРАГ ПЕТРОВИЋ ДОБИТНИК ПРИЗНАЊА „ЗЛАТ', 'Велико нам је задовољство да вас обавестимо да је наш глумац Миодраг Петровић, добитник овогодишњег признања Златна значка Културно-просветне заједнице Србије за 2015. годину.', 'mi222222odrag-petrovic.jpg', 'LukaAdmin'),
(23, 'ДАН ИГРЕ – СРПСКО НАРОДНО ПОЗОРИШТЕ ', 'Класичан балет је инспирисан бајкама и легендама што ми на сцени дозвољава да изађем из света реалности и упловим у свет маште.\r\nБалет је уметност за коју су потребна чула и осећај да би је разумели. То је немилосрдан плес за вредне и упорне, за оне који верују да увек може боље.', 'svet111ski-dan-igre.jpg', 'LukaAdmin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
