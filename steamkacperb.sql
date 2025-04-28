-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2025 at 09:26 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `steamkacperb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `developers`
--

CREATE TABLE `developers` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `logo_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `name`, `logo_url`) VALUES
(1, 'Valve', 'https://avatars.akamai.steamstatic.com/7ba781b5f0b8a99d4cc0b0b0dcaa22df73db7db2_full.jpg'),
(2, 'CD Projekt Red', 'https://avatars.akamai.steamstatic.com/4f1187c11ad41f8aa58b9109efd52c2f8bca9918_full.jpg'),
(3, 'SCS Software', 'https://avatars.akamai.steamstatic.com/c06b129955ddcd3ea7785771899c012cbf207bdc_full.jpg'),
(4, 'FromSoftware INC', 'https://avatars.akamai.steamstatic.com/fe04975c5d6e9d84bee9efb394f2ea57f24eef0c_full.jpg'),
(5, 'Larian Studios', 'https://avatars.akamai.steamstatic.com/ba71798107fdd46eccc571ae9157a424c8d1cbb6_full.jpg'),
(6, 'Game Science', 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Game_Science_logo.png'),
(7, 'Rare LTD', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d9/Rare_logo_2015.svg/130px-Rare_logo_2015.svg.png'),
(8, 'Edninght Games LTD', 'https://upload.wikimedia.org/wikipedia/commons/b/b7/Endnight_Games_logo_white.png'),
(9, 'Behaviour Interactive Inc', 'https://avatars.akamai.steamstatic.com/86a26819b6601fb4ad83e10c32e95317253b1808_full.jpg'),
(10, 'Santa Monica Studio', 'https://en.wikipedia.org/wiki/Santa_Monica_Studio#/media/File:Santa_Monica_Studio.svg'),
(11, 'Rockstar North', 'https://avatars.akamai.steamstatic.com/d83a1786f23929deb5f20326f128bbc13a9a1e85_full.jpg'),
(12, 'Naughty Dogs', 'https://pl.wikipedia.org/wiki/Naughty_Dog#/media/Plik:Naughty_Dog_logo.svg'),
(13, 'Innersloth', 'https://avatars.akamai.steamstatic.com/4167260a3656ada655afd5cf43f0a3ab50c7b2a5_full.jpg'),
(14, 'Rockstar Games', 'https://avatars.akamai.steamstatic.com/d83a1786f23929deb5f20326f128bbc13a9a1e85_full.jpg'),
(15, 'VOID Interactive', 'https://media.licdn.com/dms/image/v2/C560BAQGKp3K3xs1hGQ/company-logo_200_200/company-logo_200_200/0/1638653203188/voidinteractive_logo?e=2147483647&v=beta&t=I8ZFn4tACXk_9Q1ZtJPzfPgR4LY2rXmRIxNTmCwLQpY'),
(16, 'Avalanche Software', 'https://en.wikipedia.org/wiki/Avalanche_Software#/media/File:Avalanche.svg'),
(17, 'Respawn Entertainment', 'https://pl.wikipedia.org/wiki/Respawn_Entertainment#/media/Plik:Respawn_Logo.png'),
(18, 'Techland', 'https://avatars.akamai.steamstatic.com/009ddefda0c89fb7009af91bd1d92791d257d372_full.jpg'),
(19, 'The Molasses Flood', 'https://en.wikipedia.org/wiki/The_Molasses_Flood#/media/File:The_molasses_flood_logo.png'),
(20, 'Treyarch', 'https://pbs.twimg.com/profile_images/1624186818773258241/IDCz0cge_400x400.jpg'),
(21, 'EA Canada', 'https://avatars.akamai.steamstatic.com/618cc2a46fad78ed1259df505c2de5bb4d806532_full.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desctription` text DEFAULT NULL,
  `developers_id` int(11) DEFAULT NULL,
  `publishers_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `title`, `desctription`, `developers_id`, `publishers_id`) VALUES
(1, 'Counter Strike 2', 'For over two decades, Counter-Strike has offered an elite competitive experience, one shaped by millions of players from across the globe. And now the next chapter in the CS story is about to begin. This is Counter-Strike 2.', 1, 1),
(2, 'Witcher 3', 'You are Geralt of Rivia, mercenary monster slayer. Before you stands a war-torn, monster-infested continent you can explore at will. Your current contract? Tracking down Ciri — the Child of Prophecy, a living weapon that can alter the shape of the world.', 2, 2),
(3, 'Euro Truck Simulator', 'Travel across Europe as king of the road, a trucker who delivers important cargo across impressive distances! With dozens of cities to explore, your endurance, skill and speed will all be pushed to their limits.', 3, 3),
(4, 'Cyberpunk 2077', 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.', 2, 2),
(5, 'Elden Ring', 'THE CRITICALLY ACCLAIMED FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.', 4, 4),
(6, 'Baldurs Gate 3', 'Baldur’s Gate 3 is a story-rich, party-based RPG set in the universe of Dungeons & Dragons, where your choices shape a tale of fellowship and betrayal, survival and sacrifice, and the lure of absolute power.', 5, 5),
(7, 'Balck Myth: Wukong', 'Black Myth: Wukong is an action RPG rooted in Chinese mythology. You shall set out as the Destined One to venture into the challenges and marvels ahead, to uncover the obscured truth beneath the veil of a glorious legend from the past.', 6, 6),
(8, 'Sea of Thieves', 'Sea of Thieves is a smash-hit pirate adventure game, offering the quintessential pirate experience of plundering lost treasures, intense battles, vanquishing sea monsters and more. Dive in with this revised edition of the game, which includes access to digital bonus media.', 7, 7),
(9, 'The Forest', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator.', 8, 8),
(10, 'Dead by Daylight', 'Dead by Daylight is a multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught and killed.', 9, 9),
(11, 'God of War', 'His vengeance against the Gods of Olympus years behind him, Kratos now lives as a man in the realm of Norse Gods and monsters. It is in this harsh, unforgiving world that he must fight to survive… and teach his son to do the same.', 10, 10),
(12, 'God of War Ragnarol', 'Kratos and Atreus embark on a mythic journey for answers before Ragnarök arrives – now on PC.', 10, 10),
(13, 'Drake Hollow', 'Build and defend villages of vegetable folk from deadly feral beasts in the blighted world of The Hollow. Explore, gather, and fight! You can even invite your friends. Can you craft the perfect village?', 19, 2),
(14, 'GTA V', 'Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.', 11, 11),
(15, 'The Last of Us Part 1', 'Discover the award-winning game that inspired the critically acclaimed television show. Guide Joel and Ellie through a post-apocalyptic America, and encounter unforgettable allies and enemies in The Last of Us™.', 12, 10),
(16, 'UNCHARTED: Legacy of Thieves', 'Play as Nathan Drake and Chloe Frazer in their own standalone adventures as they confront their pasts and forge their own legacies. This game includes the critically acclaimed single-player stories from both UNCHARTED 4: A Thief’s End and UNCHARTED: The Lost Legacy.', 12, 10),
(17, 'Among Us', 'An online and local party game of teamwork and betrayal for 4-15 players...in space!', 13, 12),
(18, 'Sekiro: Shadows Die Twice', 'Game of the Year - The Game Awards 2019 Best Action Game of 2019 - IGN Carve your own clever path to vengeance in the award winning adventure from developer FromSoftware, creators of Bloodborne and the Dark Souls series. Take Revenge. Restore Your Honor. Kill Ingeniously.', 4, 13),
(19, 'Red Dead Redemption 2', 'Winner of over 175 Game of the Year Awards and recipient of over 250 perfect scores, RDR2 is the epic tale of outlaw Arthur Morgan and the infamous Van der Linde gang, on the run across America at the dawn of the modern age. Also includes access to the shared living world of Red Dead Online.', 14, 11),
(20, 'Ready or Not', 'Ready or Not is an intense, tactical, first-person shooter that depicts a modern-day world in which SWAT police units are called to defuse hostile and confronting situations.', 15, 14),
(21, 'Hogwarts Legacy', 'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.', 16, 15),
(22, 'Jedi: Fallen Order', 'A galaxy-spanning adventure awaits in Star Wars Jedi: Fallen Order, a 3rd person action-adventure title from Respawn. An abandoned Padawan must complete his training, develop new powerful Force abilities, and master the art of the lightsaber - all while staying one step ahead of the Empire.', 17, 16),
(23, 'Jedi: Survivor', 'The story of Cal Kestis continues in STAR WARS Jedi: Survivor™, a galaxy-spanning, third-person, action-adventure game.', 17, 16),
(24, 'Dying Light', 'First-person action survival game set in a post-apocalyptic open world overrun by flesh-hungry zombies. Roam a city devastated by a mysterious virus epidemic. Scavenge for supplies, craft weapons, and face hordes of the infected.', 18, 17),
(25, 'Dying Light 2: Stay Human', 'Humanity is fighting a losing battle against the virus. Experience a post-apocalyptic open world overrun by hordes of zombies, where your parkour and combat skills are key to survival. Traverse the City freely during the day, but watch the monsters take over during the night.', 18, 17),
(26, 'Dark Souls 3', 'Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!', 4, 4),
(27, 'Dark Souls 2', 'Developed by FROM SOFTWARE, DARK SOULS™ II is the highly anticipated sequel to the gruelling 2011 breakout hit Dark Souls. The unique old-school action RPG experience captivated imaginations of gamers worldwide with incredible challenge and intense emotional reward.', 4, 4),
(28, 'Dark Souls ', 'Then, there was fire. Re-experience the critically acclaimed, genre-defining game that started it all. Beautifully remastered, return to Lordran in stunning high-definition detail running at 60fps.', 4, 4),
(29, 'Call of Duty: Balck Ops 6', 'Call of Duty®: Black Ops 6 is signature Black Ops across a cinematic single-player Campaign, a best-in-class Multiplayer experience and with the epic return of Round-Based Zombies.', 20, 13),
(30, 'Call of Duty: Warzone', 'Welcome to Call of Duty®: Warzone™, the massive free-to-play combat arena which now features Urzikstan, Rebirth Island and Fortune’s Keep.', 20, 13),
(31, 'EA SPORTS FC 25', 'EA SPORTS FC™ 25 gives you more ways to win for the club. Team up with friends in your favourite modes with the new 5v5 Rush, and manage your club to victory as FC IQ delivers more tactical control than ever before.', 21, 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `game_library`
--

CREATE TABLE `game_library` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_library`
--

INSERT INTO `game_library` (`id`, `user_id`, `game_id`) VALUES
(1, 1, 2),
(2, 1, 4),
(3, 1, 6),
(4, 2, 8),
(5, 2, 1),
(6, 3, 8),
(7, 3, 9),
(8, 3, 10),
(9, 4, 3),
(10, 4, 7),
(11, 5, 1),
(12, 5, 5),
(13, 5, 9),
(14, 5, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `platform`
--

CREATE TABLE `platform` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `company_owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`id`, `name`, `version`, `company_owner`) VALUES
(1, 'Windows', '7', 'Microsoft'),
(2, 'Windows', '8', 'Microsoft'),
(3, 'Windows', '10', 'Microsoft'),
(4, 'Windows', '11', 'Microsoft'),
(5, 'MAC', 'OSX', 'Apple'),
(6, 'Playstation', '4', 'Sony'),
(7, 'Playstation', '5', 'Sony'),
(8, 'XBox', 'One', 'Microsoft'),
(9, 'Xbox', 'Series X', 'Microsoft'),
(10, 'Nintendo', 'Switch', 'Nintendo'),
(11, 'Nintendo', '3DS', 'Nintendo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `platforms_games`
--

CREATE TABLE `platforms_games` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `platform_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platforms_games`
--

INSERT INTO `platforms_games` (`id`, `game_id`, `platform_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 2, 5),
(8, 2, 6),
(9, 2, 7),
(10, 2, 8),
(11, 2, 9),
(12, 2, 10),
(13, 3, 3),
(14, 3, 4),
(15, 3, 5),
(16, 4, 3),
(17, 4, 4),
(18, 4, 5),
(19, 4, 6),
(20, 4, 7),
(21, 4, 8),
(22, 4, 9),
(23, 5, 3),
(24, 5, 4),
(25, 5, 6),
(26, 5, 7),
(27, 5, 8),
(28, 5, 9),
(29, 6, 3),
(30, 6, 4),
(31, 6, 5),
(32, 6, 7),
(33, 7, 3),
(34, 7, 4),
(35, 7, 7),
(36, 8, 3),
(37, 8, 4),
(38, 8, 7),
(39, 8, 8),
(40, 8, 9),
(41, 9, 1),
(42, 9, 2),
(43, 9, 3),
(44, 9, 4),
(45, 9, 6),
(46, 10, 1),
(47, 10, 2),
(48, 10, 3),
(49, 10, 4),
(50, 10, 6),
(51, 10, 7),
(52, 10, 8),
(53, 10, 9),
(54, 10, 10),
(55, 11, 3),
(56, 11, 4),
(57, 11, 6),
(58, 11, 7),
(59, 12, 3),
(60, 12, 4),
(61, 12, 6),
(62, 12, 7),
(63, 13, 1),
(64, 13, 2),
(65, 13, 3),
(66, 13, 4),
(67, 13, 8),
(68, 13, 9),
(69, 14, 1),
(70, 14, 2),
(71, 14, 3),
(72, 14, 4),
(73, 14, 6),
(74, 14, 7),
(75, 14, 8),
(76, 14, 9),
(77, 15, 3),
(78, 15, 4),
(79, 15, 6),
(80, 15, 7),
(81, 16, 3),
(82, 16, 4),
(83, 16, 7),
(84, 17, 1),
(85, 17, 2),
(86, 17, 3),
(87, 17, 4),
(88, 17, 10),
(89, 17, 6),
(90, 17, 7),
(91, 17, 8),
(92, 17, 9),
(93, 18, 1),
(94, 18, 2),
(95, 18, 3),
(96, 18, 4),
(97, 18, 6),
(98, 18, 7),
(99, 18, 8),
(100, 18, 9),
(101, 19, 3),
(102, 19, 4),
(103, 19, 6),
(104, 19, 7),
(105, 19, 8),
(106, 19, 9),
(107, 20, 1),
(108, 20, 2),
(109, 20, 3),
(110, 20, 4),
(111, 21, 3),
(112, 21, 4),
(113, 21, 6),
(114, 21, 7),
(115, 21, 8),
(116, 21, 9),
(117, 21, 10),
(118, 22, 1),
(119, 22, 2),
(120, 22, 3),
(121, 22, 4),
(122, 22, 6),
(123, 22, 7),
(124, 22, 8),
(125, 22, 9),
(126, 23, 3),
(127, 23, 4),
(128, 23, 7),
(129, 23, 9),
(130, 24, 1),
(131, 24, 2),
(132, 24, 3),
(133, 24, 4),
(134, 24, 6),
(135, 24, 7),
(136, 24, 8),
(137, 24, 9),
(138, 24, 10),
(139, 25, 1),
(140, 25, 2),
(141, 25, 3),
(142, 25, 4),
(143, 25, 6),
(144, 25, 7),
(145, 25, 8),
(146, 25, 9),
(147, 26, 1),
(148, 26, 2),
(149, 26, 3),
(150, 26, 4),
(151, 26, 6),
(152, 26, 7),
(153, 26, 8),
(154, 26, 9),
(155, 27, 1),
(156, 27, 2),
(157, 27, 3),
(158, 27, 4),
(159, 27, 6),
(160, 27, 7),
(161, 27, 8),
(162, 27, 9),
(163, 28, 1),
(164, 28, 2),
(165, 28, 3),
(166, 28, 4),
(167, 28, 6),
(168, 28, 7),
(169, 28, 8),
(170, 28, 9),
(171, 28, 10),
(172, 29, 3),
(173, 29, 4),
(174, 29, 6),
(175, 29, 7),
(176, 29, 8),
(177, 29, 9),
(178, 30, 3),
(179, 30, 4),
(180, 30, 6),
(181, 30, 7),
(182, 30, 8),
(183, 30, 9),
(184, 31, 3),
(185, 31, 4),
(186, 31, 6),
(187, 31, 7),
(188, 31, 8),
(189, 31, 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `logo_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `logo_url`) VALUES
(1, 'Valve', 'https://avatars.akamai.steamstatic.com/7ba781b5f0b8a99d4cc0b0b0dcaa22df73db7db2_full.jpg'),
(2, 'CD Projekt Red', 'https://avatars.akamai.steamstatic.com/4f1187c11ad41f8aa58b9109efd52c2f8bca9918_full.jpg'),
(3, 'SCS Software', 'https://avatars.akamai.steamstatic.com/c06b129955ddcd3ea7785771899c012cbf207bdc_full.jpg'),
(4, 'Bandai Namco Entertainment', 'https://avatars.akamai.steamstatic.com/97ea9619ba3076b8549c1484bef9308a67f0c64d_full.jpg'),
(5, 'Larian Studios', 'https://avatars.akamai.steamstatic.com/ba71798107fdd46eccc571ae9157a424c8d1cbb6_full.jpg'),
(6, 'Game Science', 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Game_Science_logo.png'),
(7, 'XBOX Game Studios', 'https://avatars.akamai.steamstatic.com/160d7b7d4811951be05e64e821cc93698fccf310_full.jpg'),
(8, 'Edninght Games LTD', 'https://upload.wikimedia.org/wikipedia/commons/b/b7/Endnight_Games_logo_white.png'),
(9, 'Behaviour Interactive Inc', 'https://avatars.akamai.steamstatic.com/86a26819b6601fb4ad83e10c32e95317253b1808_full.jpg'),
(10, 'Playstation Publishing LLC', 'https://avatars.akamai.steamstatic.com/40a85b52747a78b26e393e3f9e58f319194b1b33_full.jpg'),
(11, 'Rockstar Games', 'https://avatars.akamai.steamstatic.com/d83a1786f23929deb5f20326f128bbc13a9a1e85_full.jpg'),
(12, 'Innersloth', 'https://avatars.akamai.steamstatic.com/4167260a3656ada655afd5cf43f0a3ab50c7b2a5_full.jpg'),
(13, 'Activision', 'https://avatars.akamai.steamstatic.com/751c4faad6133699315ca7d4ae03293cd3abbe49_full.jpg'),
(14, 'VOID Interactive', 'https://media.licdn.com/dms/image/v2/C560BAQGKp3K3xs1hGQ/company-logo_200_200/company-logo_200_200/0/1638653203188/voidinteractive_logo?e=2147483647&v=beta&t=I8ZFn4tACXk_9Q1ZtJPzfPgR4LY2rXmRIxNTmCwLQpY'),
(15, 'Warner Bros Games', 'https://avatars.akamai.steamstatic.com/39b0e6abc744ada557a3d415746b7bc2d009f959_full.jpg'),
(16, 'Electronic Arts', 'https://avatars.akamai.steamstatic.com/618cc2a46fad78ed1259df505c2de5bb4d806532_full.jpg'),
(17, 'Techland', 'https://avatars.akamai.steamstatic.com/009ddefda0c89fb7009af91bd1d92791d257d372_full.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag_name`) VALUES
(1, 'FPS'),
(2, 'Shooter'),
(3, 'Multiplayer'),
(4, 'Competetive'),
(5, 'Open World'),
(6, 'RPG'),
(7, 'Singleplayer'),
(8, 'Fantasy'),
(9, 'Simulation'),
(10, 'Driving'),
(11, 'Difficult'),
(12, 'Atmospheric'),
(13, 'Horror'),
(14, 'Co-op'),
(15, 'Survival'),
(16, 'Mythology'),
(17, 'Realistic'),
(18, 'Action'),
(19, 'Sport');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags_games`
--

CREATE TABLE `tags_games` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags_games`
--

INSERT INTO `tags_games` (`id`, `game_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 12),
(10, 2, 18),
(11, 3, 9),
(12, 3, 10),
(13, 3, 5),
(14, 3, 17),
(15, 4, 5),
(16, 4, 6),
(17, 4, 7),
(18, 4, 1),
(19, 4, 18),
(20, 5, 6),
(21, 5, 5),
(22, 5, 18),
(23, 5, 8),
(24, 5, 7),
(25, 5, 11),
(26, 5, 12),
(27, 6, 6),
(28, 6, 8),
(29, 6, 7),
(30, 6, 14),
(31, 6, 5),
(32, 7, 16),
(33, 7, 11),
(34, 7, 18),
(35, 7, 8),
(36, 7, 6),
(37, 7, 7),
(38, 8, 14),
(39, 8, 1),
(40, 8, 5),
(41, 8, 18),
(42, 8, 3),
(43, 9, 15),
(44, 9, 13),
(45, 9, 5),
(46, 10, 13),
(47, 10, 14),
(48, 10, 3),
(49, 11, 18),
(50, 11, 16),
(51, 11, 6),
(52, 11, 12),
(53, 11, 8),
(54, 11, 7),
(55, 12, 18),
(56, 12, 16),
(57, 12, 6),
(58, 12, 12),
(59, 12, 8),
(60, 12, 7),
(61, 13, 18),
(62, 13, 15),
(63, 13, 5),
(64, 14, 2),
(65, 14, 5),
(66, 14, 7),
(67, 14, 3),
(68, 14, 18),
(69, 15, 13),
(70, 15, 7),
(71, 15, 18),
(72, 15, 12),
(73, 16, 2),
(74, 16, 7),
(75, 16, 18),
(76, 16, 12),
(77, 17, 3),
(78, 17, 14),
(79, 18, 7),
(80, 18, 12),
(81, 18, 11),
(82, 18, 18),
(83, 18, 6),
(84, 18, 5),
(85, 19, 7),
(86, 19, 3),
(87, 19, 17),
(88, 19, 18),
(89, 19, 12),
(90, 20, 1),
(91, 20, 2),
(92, 20, 17),
(93, 20, 3),
(94, 20, 14),
(95, 21, 8),
(96, 21, 7),
(97, 21, 5),
(98, 21, 6),
(99, 22, 6),
(100, 22, 5),
(101, 22, 7),
(102, 22, 18),
(103, 23, 6),
(104, 23, 5),
(105, 23, 7),
(106, 23, 18),
(107, 24, 7),
(108, 24, 14),
(109, 24, 5),
(110, 24, 18),
(111, 24, 13),
(112, 25, 7),
(113, 25, 14),
(114, 25, 5),
(115, 25, 18),
(116, 25, 13),
(117, 26, 7),
(118, 26, 6),
(119, 26, 5),
(120, 26, 11),
(121, 26, 12),
(122, 26, 18),
(123, 27, 7),
(124, 27, 6),
(125, 27, 5),
(126, 27, 11),
(127, 27, 12),
(128, 27, 18),
(129, 28, 7),
(130, 28, 6),
(131, 28, 5),
(132, 28, 11),
(133, 28, 12),
(134, 28, 18),
(135, 29, 1),
(136, 29, 2),
(137, 29, 3),
(138, 29, 4),
(139, 30, 1),
(140, 30, 2),
(141, 30, 3),
(142, 30, 4),
(143, 31, 3),
(144, 31, 9),
(145, 31, 4),
(146, 31, 19),
(147, 31, 17);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`) VALUES
(1, 'kacperb@example.com', 'kacperb', '12266ab3e984aacb7411b978acf589fd14948bbdaf0cebeaeffa0eedc164ce3a'),
(2, 'jann@example.com', 'jann', '2242f7046fd384802f5b47cc937f68c818e79a25f894dbdc15e54d1f31a9f746'),
(3, 'kamilk@example.com', 'kamilk', 'd12d9b7c07da8353be1c5b25d23d52c1ae95ea8d1e3efd47777f4184dcd079be'),
(4, 'maksyml@example.com', 'maksyml', '0262417bce6ce7bd891dc2c3386484bd3903ecd7c298ec847f31dbd6abe83ad2'),
(5, 'franekb@example.com', 'franekb', 'd39413f7dd518d56348c6aa627623d4339d12e4ef0a3c24dec366a5daf9913ab'),
(10, 'oskara@example.com', 'oskara', '5b73f288840d7ffa21abfc39bacd19351f7d647ce1ec30aad88e0c03147350f3'),
(11, 'oskara@example.com', 'oskara', '5b73f288840d7ffa21abfc39bacd19351f7d647ce1ec30aad88e0c03147350f3'),
(15, '', '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855');

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE `sessions` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user_id` INT,
    `session_key` VARCHAR(255),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
);


--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `developers_ID` (`developers_id`),
  ADD KEY `publishers_ID` (`publishers_id`);

--
-- Indeksy dla tabeli `game_library`
--
ALTER TABLE `game_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indeksy dla tabeli `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `platforms_games`
--
ALTER TABLE `platforms_games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `platform_id` (`platform_id`);

--
-- Indeksy dla tabeli `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tags_games`
--
ALTER TABLE `tags_games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `game_library`
--
ALTER TABLE `game_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `platforms_games`
--
ALTER TABLE `platforms_games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tags_games`
--
ALTER TABLE `tags_games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `developers_ID` FOREIGN KEY (`developers_id`) REFERENCES `developers` (`id`),
  ADD CONSTRAINT `publishers_ID` FOREIGN KEY (`publishers_id`) REFERENCES `publishers` (`id`);

--
-- Constraints for table `game_library`
--
ALTER TABLE `game_library`
  ADD CONSTRAINT `game_library_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `game_library_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

--
-- Constraints for table `platforms_games`
--
ALTER TABLE `platforms_games`
  ADD CONSTRAINT `platforms_games_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  ADD CONSTRAINT `platforms_games_ibfk_2` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`);

--
-- Constraints for table `tags_games`
--
ALTER TABLE `tags_games`
  ADD CONSTRAINT `tags_games_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  ADD CONSTRAINT `tags_games_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
