-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 01 dec 2022 om 12:52
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `picture`, `description`) VALUES
(1, '', 'categories/adidas.png', 'adidas'),
(2, '', '/categories/nike.png', 'nike'),
(3, '', '/categories/puma.png', 'Puma'),
(4, '', '/categories/jordan.png', 'jordan');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `category_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `img`, `category_id`) VALUES
(5, 'Superstar', 'Ben jij een echte sneakerfan en op zoek naar adidas sneakers? Dan is de adidas Superstar Wit/Zwart Dames - FV3284 - echt een must have voor in jouw collectie! De sneaker combineer je makkelijk met al jouw outfits en is ideaal voor elke gelegenheid. Wannee', 99.99, 'product/adidas2.jpg', 1),
(7, 'ZX 750', 'Verfris je loopvlakrotatie met deze ZX 750-sneakers voor heren van adidas Originals. In een Core Black, Grey Four en Footwear White colourway, deze JD-exclusieve sneaks zijn gemaakt van glad, duurzaam leer met ademende textiel onderlagen. Ze hebben een ve', 110.00, 'product/adidas1.webp', 1),
(8, 'Yeezy 350', 'High end sneakers van merken zoals adidas Yeezy Boost 350 vind je bij SNEAKERS. Kijk eens naar de adidas Yeezy Boost 350 V2 Zwart/Rood - CP9652 - sneakers. Een luxe sneaker die populair is onder sneakerliefhebbers. De gebruikte materialen zijn van top kwa', 220.00, 'product/adidas4.png', 1),
(9, 'Ozweego', 'De adidas archive style fuseert samen met futuristische tech tot deze Ozweego trainers van adidas Originals. Deze ‘90s inspired heren sneakers zijn ontworpen met een ademend mesh bovenwerk in een triple black colourway. Deze zwarte trainers zijn uitgerust', 125.00, 'product/adidas3.jpg', 1),
(10, 'Air Force One', 'Behoud je stijlvolle look in de Nike Air Force 1 \'07, het basketbalicoon dat een nieuwe draai geeft aan je favoriete onderdelen: fris leer, opvallende kleuren en precies de juiste hoeveelheid glans zodat jij kunt schitteren.', 129.99, 'product/nike1.jpg', 2),
(11, 'Air Max 90', 'Ontzettend strak, ontzettend comfortabel, ontzettend populair. De Nike Air Max 90 blijft trouw aan zijn OG hardlooproots met de iconische zool met wafelpatroon, gestikte overlays en klassieke TPU-details. De klassieke kleuren zorgen voor een frisse look e', 149.99, 'product/nike2.png', 2),
(12, 'Huarache', 'De Nike Air Huarache betekent de terugkeer van een streetwearfavoriet met een goede pasvorm, ontworpen voor comfort. Soepel leer op het bovenwerk wordt gecombineerd met superventilerend, perfect glanzend neopreenachtig materiaal voor een eenvoudige stylin', 84.99, 'product/nike3.png', 2),
(13, 'Air Max 270', 'De Nike Air Max 270 is Nike\'s eerste lifestyle Air Max, en is alles wat je je had voorgesteld en meer. Wat we het allermooist vinden (voor om de hand liggende redenen) is de GROTE, opvallende, omwikkelende 270 Air unit die onze beste technologie laat zien', 129.99, 'product/nike4.png', 2),
(14, 'Mayze Classic', 'Stap in de edgy streetstyle met de Mayze Classic, met een explosieve combinatie van urban glamour en atletisch chic. De robuuste gelaagde zool en het bovenwerk van echt leer geven deze trendy sneakers een stoere uitstraling, terwijl de metallic details in', 74.95, 'product/puma1.webp', 3),
(15, 'Suéde classic', 'De Suede verscheen in 1968 en veranderde sindsdien de streetwear-game. Van de courts tot de straat, van b-boys uit de jaren 80 tot de hedendaagse hustlers, de schoen is gedragen door de iconen van elke generatie en het is altijd klassiek gebleven. De stij', 90.00, 'product/puma2.webp', 3),
(16, 'RS-X', 'De RS-X is opnieuw ontworpen om grenzen te doorbreken. Dit model verstoort de negatieve ruimte met de overdreven ontwerpdetails en technische overlays, allemaal bovenop een tussenzool met de meest comfortabele RS-technologie.', 120.00, 'product/puma3.jpg', 3),
(17, 'RS-Z', 'Deze lage sneaker van Puma is een echte must-have. Geweldig aan dit model is de sportieve stijl die versterkt wordt door de leren en textielen schacht en de meerkleurige kleur. Comfort en welzijn worden verzekerd door de zool in . Een ontwerp dat in de sm', 94.99, 'product/puma4.jpg', 3),
(18, 'Air Jordan 1 \'Lost and Found\'', 'The \"Lost and Found\" AJ 1 Highs come ready with a vintage finish to deliver nostalgic vibes. Unboxing these will give you the feeling of finding an original pair from 1985.', 180.00, 'product/jordan2.webp', 4),
(19, 'Air Jordan 5 \'Top 3\'', 'De Air Jordan 5 Retro \'Top 3\' combineert designelementen uit een trio van de OG-releases van het model. De nubuck-upper is afkomstig uit de Black/Metallic Silver-kleurstelling, compleet met vetersluitingen, kwartpanelen en Nike Air-branding op de hiel. De', 199.99, 'product/jordan3.webp', 4),
(20, 'Air Jordan 6 \'Retro\'', 'De zesde kenmerkende schoen van MJ debuteerde tijdens het seizoen 1990-1991, toen His Airness een gooi deed naar het eerste kampioenschap waar hij zo hartstochtelijk naar verlangde. Nu is hij terug in verschillende kleurencombinaties. Vier het 30-jarig ju', 189.99, 'product/jordan4.webp', 4),
(21, 'Air Jordan 4 \'Military Black\'', 'Het eerste paar Air Jordan droeg Michael Jordan tijdens een NBA-wedstrijd in 1985, toen hij net voor de Chicago Bulls uitkwam en de grote successen nog ver voor hem lagen. De sneakers zijn ontworpen door Peter Moore en de rest is geschiedenis.', 350.00, 'product/jordan1.webp', 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `rating` decimal(10,1) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `product_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexen voor tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Beperkingen voor tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
