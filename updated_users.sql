-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 18 Lut 2022, 09:45
-- Wersja serwera: 8.0.13-4
-- Wersja PHP: 7.2.24-0ubuntu0.18.04.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `hQ7rGx2IBJ`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uuid()',
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `comments` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `phone`, `comments`, `status`) VALUES
('04ae602f-686e-4f8c-a775-d91aafba924f', '112', '342', '23', '34556', '363456456', 'removed'),
('39c7d41d-32ed-4737-a011-93888f1b8e48', 'John', 'Long', 'longj@to.us', '865432432', 'No commnet', 'active'),
('44c05d77-954d-44b1-a9f2-1c1100f29195', 'Zenonf', 'Bomb', 'zenon@b.b', '53321123', 'No comment', 'active'),
('5e7ab28c-afd2-4a11-b08a-aabb158482ac', 'Zee', 'qweeqw', 'Mtytest@email.com', '1', 'No any comment', 'removed'),
('62a91819-aee8-425f-bf88-b94a0c8fdadd', 'rsdgsdgs', 'dgsdg', 'sdg', 'sgsdgsdg', 'sdg', 'removed'),
('6b8847f3-24e7-4712-b0c5-c045713cd8e0', 'asdasd', '', 'sdasd', '', 'a', 'removed'),
('73c4aa79-7daa-4c08-a32c-4447a8a6c256', 'i', '', '', '', '', 'removed'),
('7a55eb6d-b98d-4cff-b16e-bf45413cbc1b', 'fgc', 'fdghdfghfdghfgh', 'cbvcvb', '', 'cvbcbcv', 'removed'),
('7cfda6b8-b1e8-474e-92af-e9f6b42bb33f', 'Thorstein', 'Solo', 'th@aab.com', '234234234', 'hh', 'active'),
('810205dd-099a-413b-ba5c-eff5e03169d5', '1', 'asdasd', 'sasd', 'asd', 'asdasdas', 'removed'),
('91c3304c-351d-4409-a612-0b6ed569bbb4', 'asdasdasd', 'asdasd', 'asdasd', '', '', 'removed'),
('98d16fd2-3542-48d1-aaa5-48f47c58767b', 'asdasdasd', 'asdasd', 'asdasd', '', '', 'removed'),
('9f13dbd3-2b88-40e0-960e-95c604e436ad', 'dfdsgfd', 'sgfsdf', 'gdsfg', 'sdfgdsfg', 'dfsgdsf', 'removed'),
('b7295999-3c7f-49ed-9bb3-0c012b59f948', 'Katrin', 'Sellers', 'Katrins@google.com', '007003323', 'Katrin like work in garden', 'active'),
('c5564d17-601f-43ef-8e32-b272824e22b1', 'fdsdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdfsdrf2352352', 'ewtdsfg', 'removed'),
('c676d48a-7f04-48bb-84fb-069edf357d94', 'fdsgfdsgd', 'dfgdfgdfg', '2134235345345', '345345345', '345345', 'removed'),
('c92edaf1-f937-4d83-ba6d-098327c1a7a1', 'Henry', 'Wolf', 'henryw@aol.com', '654654654', 'nope', 'active'),
('ce2a5280-cec5-49c3-bf95-6308f5cca266', 'ghjg', '', '', '', '', 'removed'),
('d1cc4604-2561-48e2-bebd-e14baec4b8f5', 'Kaj', 'Konami', 'kajko@o.l', '5645322323', ':)', 'active'),
('f0748a52-bdef-450a-b866-bf1b52141e27', 'Trala', 'Lala', 'trala@lala', '723521332', '', 'active'),
('f2c1756e-fb3d-491a-8854-a883d6805e72', 'Max', 'Kuga', 'max@xd.xd', '554444243', ':)', 'active'),
('f9e4d192-b335-44e4-9993-dff8da5259bb', 'I WAS REMOVED', '', 'asd', '', '', 'removed'),
('ff218807-4517-4dcc-936f-674e44c2b29a', 'Ciki', 'Ba', 'klik@k.k', '21452', '', 'removed');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
