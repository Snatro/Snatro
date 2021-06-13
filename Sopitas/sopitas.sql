-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 10:26 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sopitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `clanak`
--

CREATE TABLE `clanak` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clanak`
--

INSERT INTO `clanak` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(21, '10.06.2021.', 'Nina objavila fotografiju s ocem, ljudi pišu: Kopija si', 'Neque porro quisquam est qui dolorem ipsum ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vulputate orci nisi, eget commodo ex mattis non. Praesent erat nulla, consequat malesuada ante sed, gravida egestas nisl. Phasellus cursus arcu nec vulputate hendrerit. In maximus a tellus in pulvinar. Nullam viverra enim quis tellus ultricies faucibus. Nullam iaculis orci sed augue finibus, in egestas augue ultricies. Pellentesque facilisis orci ut mauris convallis, non viverra urna congue. Aenean feugiat maximus mi vitae sollicitudin. Aliquam fringilla dolor est, quis tempor sapien blandit et. Cras a velit placerat, accumsan orci sit amet, gravida dolor. Nullam fermentum tempor finibus. Etiam et enim ut quam ultrices mattis non eu est. Sed sodales augue nec congue eleifend. Nam lacinia ac urna ac lacinia. Nunc convallis quam id purus finibus, nec dignissim odio pellentesque. Fusce commodo quam tellus, et maximus arcu accumsan eget.\r\n\r\nInteger cursus, felis nec venenatis lobortis, erat nisl posuere enim, vitae dapibus lectus neque eu tellus. Quisque tempus elementum ligula, id molestie magna blandit id. Donec consequat lacinia pulvinar. Duis at aliquam arcu, sit amet vestibulum ex. Integer eleifend non metus in ullamcorper. In imperdiet, odio vel euismod fringilla, leo libero aliquet arcu, at dapibus metus sapien ut metus. Proin placerat, massa at finibus suscipit, enim magna feugiat tellus, ut tincidunt metus nisl sed arcu. Nullam sit amet efficitur lorem. Suspendisse eu fermentum ex, vel laoreet nisl. In ac felis rutrum lorem pharetra ornare eu commodo augue. Suspendisse et sem sollicitudin, tincidunt urna ut, bibendum tellus. Sed nec tincidunt nibh. Sed tincidunt augue et risus mattis condimentum.\r\n\r\nPellentesque eu sollicitudin erat, sed varius erat. Sed vel varius mauris. Aenean vel tortor nibh. Donec pulvinar sit amet eros ut sodales. Fusce ac tempor nulla, ac tincidunt odio. Nulla facilisi. Duis lectus justo, sodales sit amet ullamcorper sit amet, molestie a ex. Vestibulum euismod bibendum ante quis mollis. Maecenas luctus ultrices sodales. Aliquam hendrerit mi id bibendum efficitur. Praesent malesuada nulla nec luctus convallis. Morbi accumsan fermentum mauris sed vehicula.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur arcu massa, varius nec mauris non, laoreet venenatis metus. Nulla eu leo a felis condimentum viverra. Pellentesque eu euismod nulla, ac accumsan augue. Mauris lobortis ullamcorper lacus pharetra luctus. Cras sodales augue eget gravida laoreet. Curabitur hendrerit nec leo ac ultricies.\r\n\r\nPellentesque nisi leo, consectetur a faucibus ac, maximus hendrerit sem. Vivamus sit amet ligula id tortor aliquet faucibus vitae sit amet augue. Sed malesuada nunc ut urna aliquam mattis. Duis eget nunc viverra, sodales enim aliquet, dignissim leo. Suspendisse potenti. Donec eget dignissim nunc. Aenean ut nisl est. Morbi sed elit sit amet sem pellentesque rutrum quis tincidunt ipsum. Fusce at blandit lacus. Nam congue arcu sed massa porttitor, in dapibus est mattis. Morbi volutpat eleifend vestibulum. Sed ac iaculis ipsum, vel dictum quam. Pellentesque semper lectus eu facilisis ullamcorper. Duis hendrerit imperdiet est ac pellentesque.', 'nina.jpg', 'musica', 0),
(22, '10.06.2021.', 'Petković se na presici pojavio s masnicom ispod oka: Ovo mi se p', 'javnosti se na konferenciji za novinare obratio Bruno Petkoviću', 'HRVATSKA prvu utakmicu na Europskom prvenstvu igra u nedjelju protiv Engleske, a tri dana uoči susreta javnosti se na konferenciji za novinare obratio Bruno Petković.\r\n\r\nPažnju na presici privukla je masnica ispod oka napadača Dinama. Objasnio je da je to posljedica utakmice s Belgijom koju je Hrvatska izgubila 1:0.\r\n\r\n\"Prvi put u životu da sam je dobio od udarca lopte. Nevjerojatno. Još mi se to nije dogodilo\", rekao je Petković.', 'football.jpeg', 'deportes', 0),
(23, '10.06.2021.', 'Ovo je Obamima play lista za trening, ali nešto je malo čudno na', 'Obamina play lista za vježbanje', 'NA portalu Wired.com nedavno je iskočila Obamina play lista za vježbanje no kako sve pjesme nisu u ekstra nadahnjujućem ritmu mediji su se naravno već zapitali tko je i po kojem kriteriju slagao njegovu listu.  \r\n\r\n \"Lets Get It Started\"  The Black Eyed Peas-a svakako je dobra motivacija za start. \r\n\"Sinnerman\" Nina Simone  (Tu vjerojatno još uvijek traje lagano zagrijavanje i istezanje?)\r\nA onda prelazi na Stinga i \"If You Love Somebody\"\r\nThe Isley Brotherse s \"Live It Up, pts 1&2\", što bi odabrao vjerojatno svaki prosječni tata u Americi. tata\r\nAli onda stiže iznenađenje - Icona Pop i \"Emergency\". Nekako se ne uklapa baš i nije joj neki prijelaz pa bi to mogao lako biti odabir njegovih kćeri Sashe i Malie? \r\nPogotovo što nakon nje stiže neka hipsterska strana Obame s pjesmom \"Pero Loco\" brazilskog benda Forro in the Dark.\r\nA nakon nje vjerojatno obavezna pjevačica na svačijoj listi - Beyoncé, samo što je kod Obame  izbor \"Get Me Bodied\". \r\nZa finiš žešćih vježbi Obama je odabrao \"Off That\" Jay Z-a i Drakea - inače ne baš drilajući instrumental. \r\nI za kraj dvije spuštalice (ta ipak je on čovjek od 55 godina) - kul spuštalice - Bob Marley \"Could You Be Loved\" i \"Elevator Operator\" Courtney Barnett.\r\nPreslušavajući cijelu listu, priznajemo, baš se nismo zamislili da motivirano vježbamo, no eh, tko smo mi da sudimo tuđim ukusima', 'obama.jpg', 'musica', 0),
(24, '10.06.2021.', 'Tom Hanks i Justin Bieber snimaju spot', 'POPULARNI holivudski glumac', 'POPULARNI holivudski glumac, odgovoran za mnoge filmske uspješnice (primjerice \"Captain Philips\") uhvaćen je u New Yorku kako snima spot s Justinom Bieberom. Da, dobro ste pročitali.\r\npak, Hanks ne snima spot za Biebera, već za njegovu kolegicu Carly Rae Jepsen koja se proslavila pjesmom \"Call Me Maybe\", a svoju slavu može zahvaliti upravo Justinu Bieberu koji joj je davao razne korisne savjete pri snimanju pjesme i spota', 'tomhanks.jpg', 'Musica', 0),
(25, '10.06.2021.', 'Dinamo vraća igrača kojeg je prodao za 14 milijuna eura?', 'Dinamo vraća igrača ', 'DINAMO nakon povratka Duje Čopa planira još jedan zanimljiv transfer. Na Maksimir bi se trebao vratiti Filip Benković.\r\n\r\nRadi se o 23-godišnjem stoperu koji je bio jedan od najvećih talenata hrvatskog nogometa i koji je za Dinamo odigrao 77 utakmica prije nego što je 2018. godine otišao u Leicester za 14 milijuna eura. Međutim, u Engleskoj nije dobio priliku, pa je odlazio na posudbe u Celtic, Bristol, Cardiff i Leuven. Danas mu je procijenjena vrijednost na manje od tri milijuna eura.\r\n\r\nU posljednjoj sezoni odigrao je samo 70 minuta na posudbi u Cardiffu, dok za Leuven nije ni zaigrao u 2021. godini. Najviše je nastupao dok je bio u Celticu (27 nastupa) i Bristolu (10).\r\nBenković je već stupio u kontakt s Dinamom, javljaju Sportske novosti, te je još samo potrebna dozvola Leicestera da mladi stoper dođe u Maksimir na posudbu. Naravno, postoji opcija i da ga Leicester pošalje na posudbu u neki engleski klub kako bi ga lakše i više pratio. Prije dvije godine je Benković debitirao za Hrvatsku u prijateljskoj utakmici protiv Tunisa. To mu je zasad jedini nastup u reprezentaciji.\r\n\r\nDinamo na stoperskim pozicijama ima Dinu Perića, Kevina Theophile-Catherinea i Rasmusa Lauritsena te ovog ljeta planira dovesti još jednog stopera.', 'benkovic.jpg', 'Deportes', 0),
(26, '10.06.2021.', 'Lorem Ipsum', 'Neque porro quisquam est qui dolorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin mattis in metus vitae pretium. Nulla blandit pharetra urna, et hendrerit magna rhoncus nec. Mauris semper fermentum nulla, eu finibus nulla faucibus nec. Aenean velit purus, auctor ac volutpat at, semper ut tortor. Aliquam condimentum non est at eleifend. Proin fermentum bibendum euismod. Integer vel nulla ultrices diam commodo bibendum. Nulla facilisi. Phasellus pellentesque tincidunt dui, sagittis consequat lorem blandit a. Quisque eget enim nunc. Suspendisse ullamcorper rutrum enim eu gravida. Quisque et ultrices odio. Ut vulputate felis porttitor, aliquam libero molestie, feugiat lacus.\r\n\r\nCras diam tortor, eleifend hendrerit egestas eget, posuere vitae leo. Sed ut sem ut mauris sagittis tincidunt a nec lacus. Quisque ullamcorper, ligula id malesuada posuere, arcu nisl pulvinar metus, sit amet maximus leo arcu sed urna. In sit amet pulvinar turpis. Nullam ornare, arcu ac ultrices interdum, nisl magna tincidunt justo, quis fermentum lorem leo vitae dui. Maecenas id purus laoreet, mollis urna vitae, tristique nunc. Etiam metus sem, blandit eget efficitur ac, rhoncus in libero. Ut elementum, mauris tempor convallis feugiat, purus ligula varius nunc, vel ullamcorper erat magna ut elit. Vestibulum eleifend mattis sodales.\r\n\r\nPellentesque eu finibus nunc. Integer sagittis velit quis dui interdum convallis. Quisque eu eleifend felis. Nunc vel ultricies sapien. Donec ex diam, luctus sit amet cursus a, euismod sit amet elit. Vivamus tincidunt, leo nec malesuada accumsan, risus ex pellentesque augue, a convallis mauris odio eget nulla. Praesent faucibus, odio quis sodales semper, ligula nisi finibus lectus, vitae eleifend enim ipsum eu libero. Praesent sagittis eget sapien vel ornare. Morbi vulputate vitae metus vel tincidunt. Suspendisse semper lectus eget nisl ultrices, non pellentesque nibh iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu pellentesque turpis. Duis velit nibh, commodo tristique libero in, ultricies congue nisi.\r\n\r\nVivamus fermentum lacus quis turpis tempus iaculis. Nunc ac metus nisi. Duis in massa metus. Proin efficitur magna maximus, tincidunt ex id, vestibulum ipsum. Vestibulum ligula odio, tristique non molestie nec, ultrices quis elit. Cras facilisis, erat eu luctus bibendum, quam risus dictum eros, vel pharetra lacus felis sit amet sapien. Pellentesque dapibus, urna eget congue placerat, mi urna tincidunt arcu, ac vehicula tellus odio sit amet turpis. Integer nec accumsan eros. Donec non porta nulla. Nulla ac pretium purus, a porta ex. Suspendisse nec turpis purus. Donec eget ex lobortis mi egestas dapibus. Sed a commodo ligula. Mauris elementum velit id lobortis facilisis. Fusce tristique, nunc ac suscipit aliquam, nibh elit faucibus velit, eget semper lacus diam vel libero.\r\n\r\nDuis in eros in dui sagittis efficitur. Sed finibus accumsan justo in faucibus. Pellentesque hendrerit eu felis id elementum. Nullam ut metus lacinia, aliquam nisl vel, tristique turpis. Fusce metus mauris, tincidunt in lacinia id, pretium a mauris. Curabitur eget pretium libero. Morbi semper malesuada sapien, eu elementum orci iaculis vel. Ut consequat facilisis libero, efficitur tempus augue lacinia quis. Vestibulum blandit ornare nunc, ut iaculis sapien dignissim sit amet.', 'Yameii_1.jpg', 'Musica', 0),
(27, '11.06.2021.', 'Od fudbala je zaradio 100-injak miliona', 'uživa u svjetskoj slavi', 'a s utakmice se vraća biciklom\r\nDok se u modernom fudbalu mnogi takmiče koji će vozati skuplji automobil, ima i onih koji pokazuju poniznost i skromnost. \r\nArjen Robben je igrajući za Chelsea, Real i Bayern u itekako uspješnoj karijeri od plata, bonusa i sponzorskih ugovora zaradio oko 100 miliona eura, ali čini se da se kao osoba uopšte nije promijenio.\r\n\r\nRobben se prvi put od fudbala oprostio na ljeto 2019., nakon godinu u penziji prošle godine se vratio tamo gdje je sve počelo, u svoj Groningen.\r\n\r\nKako to obično biva kada je u pitanju sjajni Nizozemac na startu je imao određenih problema s povredama, međutim čini se da 37-godišnjak opet uživa u fudbalu.\r\n\r\nJučer je na gostovanju kod Emmena odigrao sjajan meč. Groningen je upisalo visok trijumf s 0:4. Robben je upisao dvije asistencije, a na kraju meča je i zaplakao.\r\n\"Prošao sam kroz dosta toga. Ovo je ono što sam želio\", rekao je Robben uz suze u očima te poručio da i dalje ima ogromnu želju da igra.\r\n\r\n\"Želim pomoći klubu, želim igrati. Bit ću sretan ako u tome uspijem. Bio je ovo dug i težak put za mene, ali sam se nastavio boriti. Nagrada kad-tad mora doći.\"\r\n\r\nNa sebe je skrenuo veliku pažnju i poslije utakmice. Naime, jedan od njegovih sugrađana ga je fotografisao kako se kući vraća s biciklom.\r\n\r\nRobben je planetarno popularan igrač, međutim očigledno je da mu slava nije udarila u glavu. Nastoji da živi normalan i opušten život što pokazuje i izbor njegovog prevoznog sredstva.\r\n\r\nU karijeri je osvojio 31 torfeja, skupio je preko 700 nastupa i postigao skoro 250 golova za klubove i reprezentaciju. Osvajao je Ligu prvaka, igrao je finale Svjetskog prvenstva, međutim sve to ga nije promijenilo.', 'ripery.jpg', 'Deportes', 0),
(28, '11.06.2021.', 'Musica Lo Silento', 'Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob ', 'Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob BobBob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob  Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob ', 'bob.jpg', 'Deportes', 0),
(29, '13.06.2021.', 'Sopitas Tu Eres', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vestibulum tincidunt metus, sit amet accumsan metus iaculis ut. Quisque vitae sollicitudin quam. Nullam bibendum laoreet lacus, vitae aliquam urna dapibus sed. Nullam eget ipsum euismod, interdum arcu pharetra, malesuada eros. Integer ultricies congue felis, et iaculis tortor sagittis quis. Cras pulvinar faucibus odio vel viverra. Cras turpis dolor, cursus vitae tempor vitae, ullamcorper quis mauris. Vivamus urna est, rutrum ut ante consectetur, vulputate pretium massa. Donec sed ex turpis. Praesent ac ornare lorem, ac consequat urna. In eros dolor, vestibulum non quam at, ultricies viverra velit. Nunc venenatis erat nec sodales blandit. Donec tellus enim, venenatis quis mi sed, consequat consequat libero.\r\n\r\nSed purus leo, eleifend nec semper eget, congue nec dui. Praesent maximus nisl aliquet urna rutrum, in mattis lectus mollis. Aenean vel mauris eu orci faucibus interdum. Sed ultrices vestibulum augue sit amet suscipit. Aenean venenatis mattis turpis et dapibus. Sed sit amet maximus ante. Vivamus sodales tempor massa, at efficitur eros fermentum sit amet. Vivamus non bibendum odio. Duis ex tellus, elementum at massa nec, ultrices elementum justo. Aenean gravida ex nec tellus finibus tristique. Nunc in condimentum mauris. Mauris dapibus risus quis lacus tincidunt dictum. Fusce quis convallis eros. Suspendisse tempor ut sapien vel consectetur. Pellentesque dictum diam nunc, a dictum enim varius vel.\r\n\r\nFusce eget velit ultrices, luctus felis vitae, hendrerit felis. Maecenas pretium mattis dapibus. Nulla arcu sem, cursus eu libero sed, cursus imperdiet nisl. Phasellus auctor consectetur commodo. Fusce eget viverra ipsum. Proin sollicitudin libero eget aliquet molestie. Etiam id metus tincidunt ligula vestibulum ultricies ac a risus. Phasellus bibendum nulla ac mattis malesuada. In a felis elit.\r\n\r\nAenean sapien quam, lacinia quis interdum sed, accumsan eu ligula. Ut vitae aliquam libero. Fusce aliquet ligula eget condimentum porttitor. Suspendisse potenti. Mauris venenatis libero sit amet erat vestibulum, eget faucibus nibh dictum. Maecenas erat turpis, consequat eget luctus et, porta faucibus odio. In fermentum velit dictum, convallis massa ac, dictum sapien. Fusce fringilla luctus facilisis. Mauris ultricies, ex ultrices molestie dapibus, odio ante tincidunt dui, in posuere augue orci non sapien. Integer eu viverra velit.\r\n\r\nNam tincidunt massa quam. Ut rutrum nibh nec erat venenatis, fringilla fermentum ligula iaculis. Fusce ullamcorper sed tortor sit amet aliquet. Ut vel porta est. Integer ultricies molestie enim in tristique. Suspendisse condimentum purus sit amet molestie finibus. Proin aliquam vitae nisl sed mattis. Praesent sollicitudin dolor mi, et varius urna tempor non. Quisque vestibulum sodales mauris vitae dictum. Mauris pretium erat vitae massa elementum, ut facilisis leo lobortis. Donec euismod lacus ut ligula dapibus maximus. In hac habitasse platea dictumst. Suspendisse potenti. In rhoncus placerat velit, sed consequat ante pulvinar eget.', 'vlcsnap-2020-06-09-01h08m04s081.png', 'Musica', 0);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL,
  `prezime` varchar(32) NOT NULL,
  `korisnicko_ime` varchar(32) CHARACTER SET cp1250 COLLATE cp1250_croatian_ci NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(3, 'Ivan ', 'Dumančić', 'ivanwild123', '$2y$10$DKhqKEzYVgl7N2BEnQR.CegvkNdIeoOoB5wh8T.KOtG5hVRBAJ54C', 0),
(4, 'Dino', 'Santro', 'administrator', '$2y$10$yxh4ulWSmZ1F259Lplq23u0NWliUx7S.yWQjo4uASE1MHxQ9KKFXy', 1),
(5, 'Vesna ', 'Pisarović', 'Popisar', '$2y$10$FVTusieGPSKiudpFvMmQS.YMDobCuXRdOxxpZZwB3llW2bcoueheC', 0),
(6, 'Dino', 'Bozic', 'Dozic', '$2y$10$YslXjnpIHPj5M8M9l1HSe.RZ09UVBCVse.rSh4BgLIckEKglQ8JCu', 0),
(7, 'Žan', 'Zuanović', 'deez', '$2y$10$SprNAieUz8Wrf7/HY4hFUOkNfY9dBDPpL8UioGFUqQaSA00avxIgO', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanak`
--
ALTER TABLE `clanak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanak`
--
ALTER TABLE `clanak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
