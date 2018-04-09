-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-04-2018 a las 05:12:30
-- Versión del servidor: 5.5.42
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_moviesf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_arating`
--

CREATE TABLE `tbl_arating` (
  `arating_id` smallint(5) unsigned NOT NULL,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cast`
--

CREATE TABLE `tbl_cast` (
  `cast_id` mediumint(8) unsigned NOT NULL,
  `cast_name` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) unsigned NOT NULL,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` smallint(3) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D''Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_director`
--

CREATE TABLE `tbl_director` (
  `director_id` smallint(5) unsigned NOT NULL,
  `director_name` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) unsigned NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` smallint(5) unsigned NOT NULL,
  `lang_name` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) unsigned NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(3, 'coco.jpg', 'Coco', '2017', '1h 35m', 'Despite his family''s baffling generations-old ban on music, Miguel dreams of becoming an accomplished musician like his idol, Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way, he meets charming trickster Hector, and together, they set off on an extraordinary journey to unlock the real story behind Miguel''s family history.', 'coco.mp4', 'November 26,2017'),
(4, 'bookoflife.jpg', 'Book of life', '2015', '1h 15m', ' Meet Mija, a young girl who risks everything to prevent a powerful, multi-national company from kidnapping her best friend - a fascinating animal named Okja. ', 'bookoflife.mp4', 'February 14,2015'),
(5, 'dragon1.jpg', 'How to train your Dragon 1', '2010', '1h 38min', 'Long ago up North on the Island of Berk, the young Viking, Hiccup, wants to join his town''s fight against the dragons that continually raid their town. However, his macho father and village leader, Stoik the Vast, will not allow his small, clumsy, but inventive son to do so. Regardless, Hiccup ventures out into battle and downs a mysterious Night Fury dragon with his invention, but can''t bring himself to kill it. Instead, Hiccup and the dragon, whom he dubs Toothless, begin a friendship that would open up both their worlds as the observant boy learns that his people have misjudged the species. But even as the two each take flight in their own way, they find that they must fight the destructive ignorance plaguing their world.', 'dragon1.mp4', 'March 23, 2010'),
(6, 'dragon2.jpg', 'How to train your Dragon 2', '2014', '2h 19m', 'It''s been five years since Hiccup and Toothless successfully united dragons and vikings on the island of Berk. While Astrid, Snotlout and the rest of the gang are challenging each other to dragon races (the island''s new favorite contact sport), the now inseparable pair journey through the skies, charting unmapped territories and exploring new worlds. When one of their adventures leads to the discovery of a secret ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace. Now, Hiccup and Toothless must unite to stand up for what they believe while recognizing that only together do they have the power to change the future of both men and dragons.', 'dragon2.mp4', 'Agoust 1, 2014'),
(7, 'liloystitch.jpg', 'Lilo & Stitch', '2002', '1h 25m', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love. ', 'liloystitch.mp4', 'July 5, 2002'),
(8, 'panslabyrinths.jpg', 'Pan`s Labyrinth', '2006', '1h 58m', 'In 1944 falangist Spain, a girl, fascinated with fairy-tales, is sent along with her pregnant mother to live with her new stepfather, a ruthless captain of the Spanish army. During the night, she meets a fairy who takes her to an old faun in the center of the labyrinth. He tells her she''s a princess, but must prove her royalty by surviving three gruesome tasks. If she fails, she will never prove herself to be the the true princess and will never see her real father, the king, again.', 'panslabyrinths.mp4', 'October 4, 2006'),
(9, ' secret.jpg', 'The secret in their eyes', '2009', '2h 02m', 'In 1999, retired Argentinian federal justice agent Benjamín Espósito is writing a novel, using an old closed case as the source material. That case is the brutal rape and murder of Liliana Coloto. In addition to seeing the extreme grief of the victim''s husband Ricardo Morales, Benjamín, his assistant Pablo Sandoval, and newly hired department chief Irene Menéndez-Hastings were personally affected by the case as Benjamín and Pablo tracked the killer, hence the reason why the unsatisfactory ending to the case has always bothered him. Despite the department already having two other suspects, Benjamín and Pablo ultimately were certain that a man named Isidoro Gómez is the real killer. Although he is aware that historical accuracy is not paramount for the novel, the process of revisiting the case is more an issue of closure for him. He tries to speak to the key players in the case, most specifically Irene, who still works in the justice department and who he has always been attracted to', 'secret.mp4', 'September 25, 2009'),
(10, 'shapeofwater.jpg', 'the shape of water', '2018', '2h 03m', 'From master storyteller Guillermo del Toro comes THE SHAPE OF WATER, an otherworldly fable set against the backdrop of Cold War era America circa 1962. In the hidden high-security government laboratory where she works, lonely Elisa (Sally Hawkins) is trapped in a life of isolation. Elisa''s life is changed forever when she and co-worker Zelda (Octavia Spencer) discover a secret classified experiment. Rounding out the cast are Michael Shannon, Richard Jenkins, Michael Stuhlbarg, and Doug Jones', 'shapeofwater.mp4', 'February 16, 2016'),
(11, 'wonderwoman.jpg', 'The Revenant', '2017', '2h 27m', 'Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, when a pilot crashes on their shores and tells of a massive conflict raging in the outside world, Diana leaves her home, convinced she can stop the threat. Fighting alongside man in a war to end all wars, Diana will discover her full powers and her true destiny.', 'wonderwoman.mp4', 'June 23, 2017'),
(12, 'xfiles.jpg', 'X files: fight the future', '2015', '1h 57m', 'With problems appearing between FBI agents Fox Mulder and Dana Scully, a dangerous conspiracy is starting to appear. A deadly virus, which appears to be of extraterrestrial origin has appeared, which could destroy all life on Earth. With the help of a paranoid doctor, Alvin Kurtzweil, Mulder and Scully must act fast in order to save everyone on the planet.', 'xfiles.mp4', 'Agoust 7, 1998'),
(13, 'xfiles2.jpg', 'X files: I want to believe', '2008', '2h 34m', 'Fox Mulder and Dana Scully both worked at the FBI as partners, a bond between them that led to their becoming lovers. But now they''re out of the FBI and have begun new careers. Scully works as a staff physician at a Catholic hospital. Her focus these days is on a young boy with an incurable brain disease. Administration wants to give up on him. Scully, who feels a special bond with the boy, does not. Meanwhile, Mulder''s focus is on clipping newspaper articles, throwing pencils into his ceiling and writing about the paranormal. Scully and Mulder are brought together as partners again when a special case requires Mulder''s expertise and Scully is prevailed upon to convince him to help. The case involves a pedophile priest who claims he is having psychic visions regarding the whereabouts of a missing FBI agent.', 'xfiles2.mp4', 'July 24, 2008'),
(14, 'vendeta.jpg', 'V for vendetta', '2005', '2h 46m', 'Tells the story of Evey Hammond and her unlikely but instrumental part in bringing down the fascist government that has taken control of a futuristic Great Britain. Saved from a life-and-death situation by a man in a Guy Fawkes mask who calls himself V, she learns a general summary of V''s past and, after a time, decides to help him bring down those who committed the atrocities that led to Britain being in the shape that it is in.', 'vendeta.mp4', 'April 15, 2005'),
(15, 'carandiru.jpg', 'Carandiru', '2003', '2h 00m', 'Brazilian MD Drauzio Varella starts AIDS prevention in Brazil''s largest prison, Carandiru, in São Paulo, where the population is nearly double its 4,000 maximum. Doc learns from experience and mainly stories the tragic stories of hideous crimes which landed scum there and passionate dramas adding otherwise decent people. Just when he believes to leave the prisoners happy with a soccer tournament, a silly clothing line argument kick-starts a politically opportune revolt repression.', 'carandiru.mp4', 'November 18, 2003'),
(16, 'sin.jpg', 'Sin City', '2005', '1h 20m', 'Four tales of crime adapted from Frank Miller''s popular comics, focusing around a muscular brute who''s looking for the person responsible for the death of his beloved Goldie, a man fed up with Sin City''s corrupt law enforcement who takes the law into his own hands after a horrible mistake, a cop who risks his life to protect a girl from a deformed pedophile, and a hitman looking to make a little cash.', 'sin.mp4', 'March 15, 2005'),
(17, 'perros.jpg', 'Amores Perros', '2001', '1h 18m', 'On the brink of the new Millennium in the bustling City of Mexico, one horrible car accident intertwines inextricably the lives of three perfect strangers. Octavio, a rebellious adolescent who is secretly in love with his sister-in-law, dreams of escaping his miserable life, and for this reason, he enters reluctantly the obscure world of dog fighting with his lethal dog Cofi. And then unexpectedly, Valeria, a stunning woman and famous supermodel, will cross paths with Octavio, while in the meantime, her pampered little dog Richie manages to vanish into thin air in the confined space of her apartment. Lastly, Chivo, an ex-guerrilla vagabond, after abandoning his little daughter, unable to make up for lost time, he channels his love to the city''s strays and a mortally wounded Rottweiler. In the end, even though all the weary characters, men and beasts, wish for a bright future, in this life-changing journey in the pursuit of love, sometimes infidelity, sin and death can get in the way.', 'perros.mp4', 'January 1, 2001'),
(18, 'dios.jpg', 'City od god', '2002', '1h 30m', 'Brazil, 1960s, City of God. The Tender Trio robs motels and gas trucks. Younger kids watch and learn well...too well. 1970s: Li''l Zé has prospered very well and owns the city. He causes violence and fear as he wipes out rival gangs without mercy. His best friend Bené is the only one to keep him on the good side of sanity. Rocket has watched these two gain power for years, and he wants no part of it. Yet he keeps getting swept up in the madness. All he wants to do is take pictures. 1980s: Things are out of control between the last two remaining gangs...will it ever end? Welcome to the City of God.', 'dios.mp4', 'December 10, 2002'),
(19, 'wild.jpg', 'Wild tales', '2013', '2h 02m', 'The film is divided into six segments. (1) "Pasternak": While being on a plane, a model and a music critic realise they have a common acquaintance called Pasternak. Soon they discover that every passenger and crew member on board know Pasternak. Is this coincidence? (2) "The Rats": A waitress recognizes her client - it''s the loan shark who caused a tragedy in her family. The cook suggests mixing rat poison with his food, but the waitress refuses. The stubborn cook, however, decides to proceed with her plan. (3) "The Strongest": Two drivers on a lone highway have an argument with tragic consequences. (4) "Little Bomb": A demolition engineer has his car towed by a truck for parking in a wrong place and he has an argument with the employee of the towing company. This event destroys his private and professional life, and he plots revenge against the corrupt towing company and the city hall. (5) "The Proposal": A reckless son of a wealthy family has an overnight hit-and-run accident,', 'wild.mp4', 'October 4, 2014'),
(20, 'silence.jpg', 'The silence of the lambs', '1991', '2h 7m', 'FBI trainee Clarice Starling works hard to advance her career, while trying to hide/put behind her West Virginia roots, of which if some knew, would automatically classify her as being backward or white trash. After graduation, she aspires to work in the agency''s Behavioral Science Unit under the leadership of Jack Crawford. While she is still a trainee, Crawford asks her to question Dr. Hannibal Lecter, a psychiatrist imprisoned, thus far, for eight years in maximum security isolation for being a serial killer who cannibalized his victims. Clarice is able to figure out the assignment is to pick Lecter''s brains to help them solve another serial murder case, that of someone coined by the media as Buffalo Bill, who has so far killed five victims, all located in the eastern US, all young women who are slightly overweight (especially around the hips), all who were drowned in natural bodies of water, and all who were stripped of large swaths of skin. She also figures that Crawford chose ', 'silence.jpg', 'January 30, 1991'),
(21, 'kill1.jpg', 'Kill Bill 1', '2004', '2h 2m', 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.The lead character, called ''The Bride,'' was a member of the Deadly Viper Assassination Squad, led by her lover ''Bill.'' Upon realizing she was pregnant with Bill''s child, ''The Bride'' decided to escape her life as a killer. She fled to Texas, met a young man, who, on the day of their wedding rehearsal was gunned down by an angry and jealous Bill (with the assistance of the Deadly Viper Assassination Squad). Four years later, ''The Bride'' wakes from a coma, and discovers her baby is gone. She, then, decides to seek revenge upon the five people who destroyed her life and killed her baby. The saga of Kill Bill Volume I begins. ', 'kill1.jpg', 'March 25, 2004'),
(22, 'joven karl.jpg', 'Joven Karl Marx', '2017', 'prueba', 'prueba', 'prueba', 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mov_cast`
--

CREATE TABLE `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) unsigned NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mov_country`
--

CREATE TABLE `tbl_mov_country` (
  `mov_country_id` mediumint(8) unsigned NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mov_director`
--

CREATE TABLE `tbl_mov_director` (
  `mov_director_id` mediumint(8) unsigned NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) unsigned NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5),
(37, 22, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mov_lang`
--

CREATE TABLE `tbl_mov_lang` (
  `mov_lang_id` smallint(5) unsigned NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mov_studio`
--

CREATE TABLE `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) unsigned NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_studio`
--

CREATE TABLE `tbl_studio` (
  `studio_id` smallint(5) unsigned NOT NULL,
  `studio_name` varchar(125) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_urating`
--

CREATE TABLE `tbl_urating` (
  `rating_id` tinyint(3) unsigned NOT NULL,
  `rating_number` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `lvllist` varchar(22) NOT NULL,
  `first_time` int(1) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `lvllist`, `first_time`, `active`) VALUES
(9, 'Alba', 'Albam', 'mendez', 'alba_caro5@hotmail.com', '2018-03-01 05:47:15', 'no', '2', 1, 0),
(10, 'ana', 'anajara', 'anajara', 'analujm@hotmail.com', '2018-03-01 06:25:36', '::1', '2', 0, 1),
(11, 'Luna mendez', 'luna1', 'luna1', 'luna@luna.com', '2018-03-01 10:04:54', '::1', '2', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_arating`
--
ALTER TABLE `tbl_arating`
  ADD PRIMARY KEY (`arating_id`);

--
-- Indices de la tabla `tbl_cast`
--
ALTER TABLE `tbl_cast`
  ADD PRIMARY KEY (`cast_id`),
  ADD UNIQUE KEY `cast_name` (`cast_name`);

--
-- Indices de la tabla `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indices de la tabla `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indices de la tabla `tbl_director`
--
ALTER TABLE `tbl_director`
  ADD PRIMARY KEY (`director_id`);

--
-- Indices de la tabla `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indices de la tabla `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indices de la tabla `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indices de la tabla `tbl_mov_cast`
--
ALTER TABLE `tbl_mov_cast`
  ADD PRIMARY KEY (`mov_cast_id`);

--
-- Indices de la tabla `tbl_mov_country`
--
ALTER TABLE `tbl_mov_country`
  ADD PRIMARY KEY (`mov_country_id`);

--
-- Indices de la tabla `tbl_mov_director`
--
ALTER TABLE `tbl_mov_director`
  ADD PRIMARY KEY (`mov_director_id`);

--
-- Indices de la tabla `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indices de la tabla `tbl_mov_lang`
--
ALTER TABLE `tbl_mov_lang`
  ADD PRIMARY KEY (`mov_lang_id`);

--
-- Indices de la tabla `tbl_mov_studio`
--
ALTER TABLE `tbl_mov_studio`
  ADD PRIMARY KEY (`mov_studio_id`);

--
-- Indices de la tabla `tbl_studio`
--
ALTER TABLE `tbl_studio`
  ADD PRIMARY KEY (`studio_id`);

--
-- Indices de la tabla `tbl_urating`
--
ALTER TABLE `tbl_urating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_arating`
--
ALTER TABLE `tbl_arating`
  MODIFY `arating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbl_cast`
--
ALTER TABLE `tbl_cast`
  MODIFY `cast_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de la tabla `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` smallint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT de la tabla `tbl_director`
--
ALTER TABLE `tbl_director`
  MODIFY `director_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT de la tabla `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `tbl_mov_cast`
--
ALTER TABLE `tbl_mov_cast`
  MODIFY `mov_cast_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de la tabla `tbl_mov_country`
--
ALTER TABLE `tbl_mov_country`
  MODIFY `mov_country_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `tbl_mov_director`
--
ALTER TABLE `tbl_mov_director`
  MODIFY `mov_director_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `tbl_mov_lang`
--
ALTER TABLE `tbl_mov_lang`
  MODIFY `mov_lang_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `tbl_mov_studio`
--
ALTER TABLE `tbl_mov_studio`
  MODIFY `mov_studio_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `tbl_studio`
--
ALTER TABLE `tbl_studio`
  MODIFY `studio_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `tbl_urating`
--
ALTER TABLE `tbl_urating`
  MODIFY `rating_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
