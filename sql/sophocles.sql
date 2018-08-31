-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 31, 2018 at 06:14 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sophocles`
--
CREATE DATABASE IF NOT EXISTS `sophocles` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sophocles`;

-- --------------------------------------------------------

--
-- Table structure for table `_authors`
--

DROP TABLE IF EXISTS `_authors`;
CREATE TABLE `_authors` (
  `author_id` int(11) NOT NULL,
  `author_firstname` varchar(255) NOT NULL,
  `author_lastname` varchar(255) NOT NULL,
  `author_email` varchar(255) NOT NULL,
  `author_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_authors`
--

INSERT INTO `_authors` (`author_id`, `author_firstname`, `author_lastname`, `author_email`, `author_active`) VALUES
(1, 'Jon', 'Merchant', 'jonathan.merchant@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `_books`
--

DROP TABLE IF EXISTS `_books`;
CREATE TABLE `_books` (
  `book_id` int(11) NOT NULL,
  `book_label` text NOT NULL,
  `book_value` text NOT NULL,
  `book_genre` int(11) NOT NULL,
  `book_plot` text NOT NULL,
  `book_outline` text NOT NULL,
  `book_image` varchar(255) NOT NULL,
  `book_author` int(11) NOT NULL,
  `book_font` varchar(255) NOT NULL,
  `book_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_books`
--

INSERT INTO `_books` (`book_id`, `book_label`, `book_value`, `book_genre`, `book_plot`, `book_outline`, `book_image`, `book_author`, `book_font`, `book_active`) VALUES
(1, 'The Black Ships', 'the_black_ships', 1, '<p>It looks like Sandpeople did this, all right. Look, here are Gaffi sticks, Bantha tracks. It\'s just...I never heard of them hitting anything this big before. They didn\'t. But we are meant to think they did. These tracks are side by side. Sandpeople always ride single file to hide there numbers. These are the same Jawas that sold us Artoo and Threepio. And these blast points, too accurate for Sandpeople. Only Imperial stormtroopers are so precise. Why would Imperial troops want to slaughter Jawas? If they traced the robots here, they may have learned who they sold them to. And that would lead them home! Wait, Luke! It\'s too dangerous. Uncle Owen! Aunt Beru! Uncle Owen!</p> <p>Oh! The garbage chute was a really wonderful idea. What an incredible smell you\'ve discovered! Let\'s get out of here! Get away from there... No! wait! Will you forget it? I already tried it. It\'s magnetically sealed! Put that thing away! You\'re going to get us all killed. Absolutely, Your Worship. Look, I had everything under control until you led us down here. You know, it\'s not going to take them long to figure out what happened to us. It could be worst... It\'s worst. There\'s something alive in here! That\'s your imagination. Something just moves past my leg! Look! Did you see that? What? Help!</p> <p>That malfunctioning little twerp. This is all his fault! He tricked me into going this way, but he\'ll do no better. Wait, what\'s that? A transport! I\'m saved! Over here! Help! Please, help! Artoo-Detoo! It\'s you! It\'s you!</p> <p>They\'ve coming in! Three marks at two ten. I\'ll take them myself! Cover me! Yes, sir. I can\'t maneuver! Stay on target. We\'re too close. Stay on target! Loosen up! Gold Five to Red Leader... Lost Tiree, lost Dutch. I copy, Gold Five. They came from behind.... We\'ve analyzed their attack, sir, and there is a danger. Should I have your ship standing by? Evacuate? In out moment of triumph? I think you overestimate their chances! Rebel base, three minutes and closing. Red Group, this is Red Leader.</p> <p>All flight trooper, man your stations. All flight troops, man your stations. So...you got your reward and you\'re just leaving then? That\'s right, yeah! I got some old debts I\'ve got to pay off with this stuff. Even if I didn\'t, you don\'t think I\'d be fool enough to stick around here, do you? Why don\'t you come with us? You\'re pretty good in a fight. I could use you. Come on! Why don\'t you take a look around? You know what\'s about to happen, what they\'re up against. They could use a good pilot like you. You\'re turning your back on them.</p>', '', 'the_black_ships_upl_1534712066.jpg', 1, 'wallpoet', 1),
(2, 'Renegade Runaway', 'renegade_runaway', 3, '<p>What is it, General? My lord, the fleet has moves out of light-speed. Com-Scan has detected an energy field protecting an area around the sixth planet of the Hoth system. The field is strong enough to deflect any bombardment. The Rebels are alerted to our presence. Admiral Ozzel came out of light-speed too close to the system. He felt surprise was wiser... He is as clumsy as he is stupid. General, prepare your troops for a surface attack. Yes, my lord.</p> <p>Luke. Father. Son, come with me. Ben, why didn\'t you tell me? Chewie! It\'s Vader. Luke...it is your destiny. Ben, why didn\'t you tell me?</p> <p>Luke! You must complete the training. I can\'t keep the vision out of my head. They\'re my friends. I\'ve got to help them. You must not go! But Han and Leia will die if I don\'t. You don\'t know that. Even Yoda cannot see their fate. But I can help them! I feel the Force! But you cannot control it. This is a dangerous time for you, when you will be tempted by the dark side of the Force. Yes, yes. To Obi-Wan you listen. The cave. Remember your failure at the cave! But I\'ve learned so much since then. Master Yoda, I promise to return and finish what I\'ve begun. You have my word. It is you and your abilities the Emperor wants. that is why your friends are made to suffer. And that is why I have to go. Luke, I don\'t want to lose you to the Emperor the way I lost Vader. You won\'t. Stopped they must be. On this depends.</p> <p>Artoo? Artoo! Where are you?</p> <p>Yes, that\'s it. Dagobah. No, I\'m not going to change my mind about this. I\'m not picking up any cities or technology. Massive life-form readings, though. There\'s something alive down there... Yes, I\'m sure it\'s perfectly safe for droids. I know, I know! All the scopes are dead. I can\'t see a thing! Just hang on, I\'m going to start the landing cycle... No, Artoo, you stay put. I\'ll have a look around.</p>', '', 'renegade_runaway_1564712066.jpg', 1, 'metamorphouse', 1),
(3, 'Arog\'s Dragon ', 'arogs_dragon', 2, '<p>Bounty hunters. We don\'t need that scum. Those Rebels won\'t escape us. Sir, we have a priority signal from the Star Destroyer Avenger. Right. ...there will be a substantial reward for the one who finds the Millennium Falcon. You are free to use any methods necessary, but I want them alive. No disintegrations. As you wish. Lord Vader! My lord, we have them.</p>\r\n<p>The security codes has been changed! Artoo, you can tell the computer to override the security system. Attention! This is Lando Calrissian. The Empire has takes control of the city. I advise everyone to leave before more Imperial troops arrive. This way. Don\'t blame me. I\'m an interpreter. I\'m not supposed to know a power socket from a computer terminal. What are you talking about? We\'re not interested in the hyperdrive on the Millennium Falcon. It\'s fixed! Just open the door, you stupid lump.</p>\r\n<p>Well done. Hold them in the security tower - and keep it quiet. Move. What do you think you\'re doing? We\'re getting out of here. I knew all along it had to be a mistake. Do you think that after what you did to Han we\'re going to trust you? I had no choice... What are you doing? Trust him, trust him! Oh, so we understand, don\'t we, Chewie? He had no choice. I\'m just trying to help... We don\'t need any of your help. H-a-a-a... What? It sounds like Han. There\'s still a chance to save Han...I mean, at the East Platform... Chewie. I\'m terribly sorry about all this. After all, he\'s only a Wookiee.</p>', '', 'arogs_dragon_1534909947.jpg', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `_chapters`
--

DROP TABLE IF EXISTS `_chapters`;
CREATE TABLE `_chapters` (
  `chapter_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `chapter_number` int(11) NOT NULL,
  `chapter_label` text NOT NULL,
  `chapter_notes` text NOT NULL,
  `chapter_text` text NOT NULL,
  `chapter_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_chapters`
--

INSERT INTO `_chapters` (`chapter_id`, `book_id`, `author_id`, `chapter_number`, `chapter_label`, `chapter_notes`, `chapter_text`, `chapter_active`) VALUES
(1, 1, 1, 1, 'Charge cycle complete', '<p>You all right? Why are you still here? I heard the command center had been hit. You got your clearance to leave. Don\'t worry. I\'ll leave. First I\'m going to get you to your ship. Your Highness, we must take this last transport. It\'s our only hope. Send all troops in sector twelve to the south slope to protect the fighters. Imperial troops have entered the base. Come on...that\'s it. Give the evacuation code signal. And get to your transports! K-one-zero...all troops disengage. Oh! Wait for me! Begin retreat! Fall back!</p>', '<p>Princess...we have a visitor. We\'ve picked up something outside the base in zone twelve, moving east. It\'s metal. Then it couldn\'t be one of those creatures that attacked Luke. It could be a speeder, one of ours. No. Wait - there\'s something very weak coming through. Sir, I am fluent in six million forms of communication. This signal is not used by the Alliance. It could be an Imperial code. It isn\'t friendly, whatever it is. Come on, Chewie, let\'s check it out. Send Rouges Ten and Eleven to station three-eight.</p>\r\n<p>You all right? Why are you still here? I heard the command center had been hit. You got your clearance to leave. Don\'t worry. I\'ll leave. First I\'m going to get you to your ship. Your Highness, we must take this last transport. It\'s our only hope. Send all troops in sector twelve to the south slope to protect the fighters. Imperial troops have entered the base. Come on...that\'s it. Give the evacuation code signal. And get to your transports! K-one-zero...all troops disengage. Oh! Wait for me! Begin retreat! Fall back!</p>\r\n<p>I never doubted you for a second. Wonderful! Ouch! Oh! Ah! That hurt, Bend down, you thoughtless...Ow! Leia! Go! I thought that hairy beast would be the end of me. Of course, I\'ve looked better.</p>\r\n<p>This ground sure feels strange. It doesn\'t feel like rock at all. There\'s an awful lot of moisture in here. I don\'t know. I have a bad feeling about this. Yeah. Watch out! Yeah, that\'s what I thought. Mynock. Chewie, check the rest of the ship, make sure there aren\'t any more attached. They\'re chewing on the power cables. Mynocks? Go on inside. We\'ll clean them off if there are any more. Ohhh! Go away! Go away! Beastly thing. Shoo! Shoo! Wait a minute... All right, Chewie, let\'s get out of here!</p>\r\n<p>The Empire is still out there. I don\'t think it\'s wise to... No time to discuss this as a committee. I am not a committee! You can\'t make the jump to light-speed in this asteroid field... Sit down, sweetheart. We\'re taking off! Look! I see it, I see it. We\'re doomed! The cave is collapsing. This is no cave. What?</p>\r\nOh, where is Artoo when I need him? Sir, I don\'t know where your ship learned to communicate, but it has the most peculiar dialect. I believe, sir, it says that the power coupling on the negative axis has been polarized. I\'m afraid you\'ll have to replace it. Well, of course I\'ll have to replace it. Here! And Chewie... ...I think we\'d better replace the negative power coupling.\r\n\r\nLuke? Lord Vader has set a trap for him. And we\'re the bait. Well, he\'s on his way. Perfect. You fixed us all pretty good, didn\'t you? My friend! Stop! I\'ve done all I can do. I\'m sorry I couldn\'t do better, but I have my own problems. Yeah, you\'re a real hero. You certainly have a way with people.\r\n\r\nArtoo says the chances of survival are seven hundred seventy-five...to one. Actually, Artoo has been known to make mistakes...from time to time. Oh, dear, oh, dear. Don\'t worry about Master Luke. I\'m sure he\'ll be all right. He\'s quite clever, you know...for a human being.\r\n\r\nAaargh! Chewie! All right, don\'t lose your temper. I\'ll come right back and give you a hand. Solo? No sign of life out there, General. The sensors are in place.You\'ll know if anything comes around. Commander Skywalker reported in yet? No. He\'s checking out a meteorite that hit near him. With all the meteor activity in this system, it\'s going to be difficult to spot approaching ships.\r\n\r\nReady for some power? Okay. Let\'s see now. Put that in there. There you go. Now all I have to do is find this Yoda...if he even exists. Still...there\'s something familiar about this place. I feel like...I don\'t know... Like we\'re being watched! Away with your weapon! I mean you no harm. I am wondering, why are you here? I\'m looking for someone. Looking? Found someone, you have, I would say, hmmm? Right. Help you I can. Yes, mmmm. don\'t think so. I\'m looking for a great warrior. Ahhh! A great warrior. Wars not make one great.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `_characters`
--

DROP TABLE IF EXISTS `_characters`;
CREATE TABLE `_characters` (
  `character_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `book_ids` json NOT NULL,
  `world_ids` json NOT NULL,
  `character_first` varchar(255) NOT NULL,
  `character_last` varchar(255) NOT NULL,
  `character_story` text NOT NULL,
  `character_dead` tinyint(1) NOT NULL,
  `character_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_characters`
--

INSERT INTO `_characters` (`character_id`, `author_id`, `book_ids`, `world_ids`, `character_first`, `character_last`, `character_story`, `character_dead`, `character_active`) VALUES
(1, 1, '[1]', '[1]', 'Uldir', 'Pax', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_genres`
--

DROP TABLE IF EXISTS `_genres`;
CREATE TABLE `_genres` (
  `genre_id` int(11) NOT NULL,
  `genre_label` varchar(255) NOT NULL,
  `genre_font` varchar(255) NOT NULL,
  `genre_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_genres`
--

INSERT INTO `_genres` (`genre_id`, `genre_label`, `genre_font`, `genre_active`) VALUES
(1, 'Science Fiction', 'font-wallpoet', 1),
(2, 'Fantasy', 'font-metamorphouse', 1),
(3, 'Horror', 'font-special-elite', 1);

-- --------------------------------------------------------

--
-- Table structure for table `_help`
--

DROP TABLE IF EXISTS `_help`;
CREATE TABLE `_help` (
  `help_id` int(11) NOT NULL,
  `help_label` text NOT NULL,
  `help_text` text NOT NULL,
  `help_element` varchar(255) NOT NULL,
  `help_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_help`
--

INSERT INTO `_help` (`help_id`, `help_label`, `help_text`, `help_element`, `help_active`) VALUES
(1, 'Storyboard Help', '<p>This is where the help text would be, it\'ll have all kinds of stuff, maybe even images.</p>', 'storyboard', 1);

-- --------------------------------------------------------

--
-- Table structure for table `_navigation`
--

DROP TABLE IF EXISTS `_navigation`;
CREATE TABLE `_navigation` (
  `nav_id` int(11) NOT NULL,
  `menu_label` varchar(255) NOT NULL,
  `menu_value` varchar(255) NOT NULL,
  `menu_link` text NOT NULL,
  `parent` varchar(255) NOT NULL,
  `level` int(1) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_navigation`
--

INSERT INTO `_navigation` (`nav_id`, `menu_label`, `menu_value`, `menu_link`, `parent`, `level`, `active`) VALUES
(1, 'Books', 'books', '', '', 0, 1),
(2, 'Chapters', 'chapters', '', 'books', 1, 1),
(3, 'Characters', 'characters', '', '', 0, 1),
(4, 'Universes', 'universes', '', '', 0, 1),
(5, 'Worlds', 'worlds', '', 'universe', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_site`
--

DROP TABLE IF EXISTS `_site`;
CREATE TABLE `_site` (
  `site_name` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_site`
--

INSERT INTO `_site` (`site_name`, `brand_image`) VALUES
('Sophocles', 'icons8-study-96.png');

-- --------------------------------------------------------

--
-- Table structure for table `_storyboards`
--

DROP TABLE IF EXISTS `_storyboards`;
CREATE TABLE `_storyboards` (
  `sb_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `sb_position` int(11) NOT NULL,
  `sb_label` varchar(255) NOT NULL,
  `sb_text` text NOT NULL,
  `sb_converted` tinyint(1) DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `sb_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_storyboards`
--

INSERT INTO `_storyboards` (`sb_id`, `book_id`, `sb_position`, `sb_label`, `sb_text`, `sb_converted`, `chapter_id`, `sb_active`) VALUES
(1, 1, 1, 'Part 1', 'Did you hear that? They\'ve shut down the main reactor. We\'ll be destroyed for sure. This is madness! We\'re doomed! There\'ll be no escape for the Princess this time. What\'s that? Artoo! Artoo-Detoo, where are you? At last! Where have you been? They\'re heading in this direction. What are we going to do? We\'ll be sent to the spice mine of Kessel or smashed into who knows what! Wait a minute, where are you going?', NULL, NULL, 1),
(2, 1, 2, 'Part 2', '', NULL, NULL, 1),
(3, 1, 2, 'Part 3', '', NULL, NULL, 1),
(4, 1, 3, 'Part 4', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_universes`
--

DROP TABLE IF EXISTS `_universes`;
CREATE TABLE `_universes` (
  `universe_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `book_ids` json NOT NULL,
  `universe_label` text NOT NULL,
  `universe_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_universes`
--

INSERT INTO `_universes` (`universe_id`, `author_id`, `book_ids`, `universe_label`, `universe_active`) VALUES
(1, 1, '[1]', 'K19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `_worlds`
--

DROP TABLE IF EXISTS `_worlds`;
CREATE TABLE `_worlds` (
  `world_id` int(11) NOT NULL,
  `universe_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `book_ids` json NOT NULL,
  `world_label` text NOT NULL,
  `world_climate` text NOT NULL,
  `world_politics` text NOT NULL,
  `world_special_attrbs` text NOT NULL,
  `world_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_worlds`
--

INSERT INTO `_worlds` (`world_id`, `universe_id`, `author_id`, `book_ids`, `world_label`, `world_climate`, `world_politics`, `world_special_attrbs`, `world_active`) VALUES
(1, 1, 1, '[1]', 'Bienerth', '', '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `_authors`
--
ALTER TABLE `_authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `_books`
--
ALTER TABLE `_books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `_chapters`
--
ALTER TABLE `_chapters`
  ADD PRIMARY KEY (`chapter_id`);

--
-- Indexes for table `_characters`
--
ALTER TABLE `_characters`
  ADD PRIMARY KEY (`character_id`);

--
-- Indexes for table `_genres`
--
ALTER TABLE `_genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `_help`
--
ALTER TABLE `_help`
  ADD PRIMARY KEY (`help_id`);

--
-- Indexes for table `_navigation`
--
ALTER TABLE `_navigation`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `_storyboards`
--
ALTER TABLE `_storyboards`
  ADD PRIMARY KEY (`sb_id`);

--
-- Indexes for table `_universes`
--
ALTER TABLE `_universes`
  ADD PRIMARY KEY (`universe_id`);

--
-- Indexes for table `_worlds`
--
ALTER TABLE `_worlds`
  ADD PRIMARY KEY (`world_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `_authors`
--
ALTER TABLE `_authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_books`
--
ALTER TABLE `_books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `_chapters`
--
ALTER TABLE `_chapters`
  MODIFY `chapter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_characters`
--
ALTER TABLE `_characters`
  MODIFY `character_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_genres`
--
ALTER TABLE `_genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `_help`
--
ALTER TABLE `_help`
  MODIFY `help_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_navigation`
--
ALTER TABLE `_navigation`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `_storyboards`
--
ALTER TABLE `_storyboards`
  MODIFY `sb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `_universes`
--
ALTER TABLE `_universes`
  MODIFY `universe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_worlds`
--
ALTER TABLE `_worlds`
  MODIFY `world_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
