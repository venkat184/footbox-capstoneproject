-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 18, 2021 at 01:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
use foodbox;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `street` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `zipCode` varchar(55) NOT NULL,
  `user_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table address;
-- --------------------------------------------------------

--
-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `id` bigint(11) NOT NULL,
  `cuisine_name` varchar(411) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table cuisine;
--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`id`, `cuisine_name`) VALUES
(1, 'Italian'),
(2, 'Algeria'),
(3, 'Japan'),
(4, 'France'),
(5, 'Southafrica');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` decimal(55,0) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `cuisine_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image_url`, `date_created`, `last_updated`, `cuisine_id`) VALUES
(1, 'Pizza', 'Pizza is a preferred common snack because is easy to fix, affordable and filling. Basically, pizza is an oven­baked slab of flatbread that is served with oil and spices and it’s usually round in shape. This meal is especially common in Naples where tomato sauce was first added.', '37', 'https://www.aworldtotravel.com/wp-content/uploads/2018/08/oven-pizza-italian-menu-delicacies-to-taste-in-the-different-regions-of-italy-a-world-to-travel-768x512.jpg', '2021-09-15 23:17:00.000000', '2021-09-13 23:17:03.000000', 1),
(2, 'PASTA CARBONARA', ' Normally, pasta is made from durum wheat, water, and semolina flour. Eggs are optional. There are different types of pasta depending on the size and shape but the two main categories are either short or long..', '68', 'https://www.aworldtotravel.com/wp-content/uploads/2018/08/carbonara-italian-menu-delicacies-to-taste-in-the-different-regions-of-italy-a-world-to-travel.jpg', '2021-07-15 23:17:00.000000', '2021-09-06 08:52:35.000000', 1),
(3, 'LASAGNA', 'Traditionally, this meal was considered a poor man’s food. It’s said that it was first created by poor servants who used to collect leftover food from their masters and boil the items in water. Ribolita translates to “reboiled” in English; hence that’s how the dish got its name..', '73',' https://www.aworldtotravel.com/wp-content/uploads/2018/08/italian-street-italian-menu-delicacies-to-taste-in-the-different-regions-of-italy-a-world-to-travel.jpg', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 1),
(4, 'RISOTTO', 'The meal is prepared by first covering rice in butter and toasting it. The toasted rice is then cooked in broth until it forms a thick and creamy consistency..', '89', 'https://www.aworldtotravel.com/wp-content/uploads/2018/08/risotto-italian-menu-delicacies-to-taste-in-the-different-regions-of-italy-a-world-to-travel.jpg', '2021-07-15 23:17:00.000000', '2021-07-15 23:17:00.000000', 1),
(5, 'POLENTA', 'This is the staple starch that you’ll find in most parts of Northern Italy. The dish comprises boiled cornmeal which may either be served as mashed potatoes or in baked/grilled loaves.', '74', 'https://www.aworldtotravel.com/wp-content/uploads/2018/08/polenta-balls-italian-menu-delicacies-to-taste-in-the-different-regions-of-italy-a-world-to-travel.jpg', '2021-01-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 1),
(6, 'ARANCINI AND SUPPLI', 'Both the Arancini and the Suppli are types of freshly-fried rice ball that can be found everywhere you go in Italy including the markets, bars, and restaurants. The difference between these two famous Italian dishes is that the Arancini is usually larger and has a conical or circular shape; the Suppli is oblong in shape.', '55', 'https://www.aworldtotravel.com/wp-content/uploads/2018/08/arancini-italian-menu-delicacies-to-taste-in-the-different-regions-of-italy-a-world-to-travel.jpg', '2020-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 1),
(7, 'CHOCOLATE', 'As one of the first delicacies introduced by Mexicans to the world, I can’t say I had not fallen for it before. Anyway, we could visit Cacep factory, in Campeche, and learn about how cocoa turns into the final product. And we tried to make it too!', '44', 'https://www.aworldtotravel.com/wp-content/uploads/2014/02/Cacep-Hacienda-cacaotera-Tabasco-Mexico-AllMexicoTrip-Aworldtotravel-1-500x277.jpg', '2021-03-14 23:24:19.000000', '2021-05-19 23:24:19.000000', 2),
(8, 'QUESADILLAS', 'Cheese lovers around? Number 3 couldn’t be anything but them. Easy and quick, flour or corn tortillas get filled and folded with a savory mixture including cheese, vegetables, meat,… you name it! They make it to my personal podium for being a convenient cheap eat and Mexican delicacy food you can find pretty much everywhere.', '89', 'https://www.aworldtotravel.com/wp-content/uploads/2014/02/Delicacies-of-Mexico-Guacamole-Chocolate-Tortillas-Tamales-Quesadillas-A-World-to-Travel-1-500x346.jpg', '2021-08-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2),
(9, 'TAMALES', 'Also in Chiapas, a community of Lacandon Indians offered us this Mexican delicacy. Boiled in a banana or corn leaf wrapper that is discarded before eating, they can also be stuffed with a selection of ingredients. Delicious!', '96', 'https://www.aworldtotravel.com/wp-content/uploads/2014/02/Delicacies-of-Mexico-Guacamole-Chocolate-Tortillas-Tamales-Quesadillas-A-World-to-Travel-3-500x331.jpg', '2021-11-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2),
(10, 'GUACAMOLE', 'Basically, any dish prepared with avocado really. Fresh, super healthy, and matching with every other dish, I only wish this Mexican plant-based snack delicacy was cheaper in my home country! It makes for the perfect appetizer and it’s as easy to make that once you learn you’ll want to have it every day..', '85', 'https://www.aworldtotravel.com/wp-content/uploads/2014/02/Delicacies-of-Mexico-Guacamole-Chocolate-Tortillas-Tamales-Quesadillas-A-World-to-Travel-6.jpg', '2021-07-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2),
(11, 'TORTILLAS', 'A basic, they are used as bread, pasta, or rice are used in other cultures. Anything and everything can go on top and you never get tired of eating them because of their neutral and plane flavor!', '77', 'https://www.aworldtotravel.com/wp-content/uploads/2014/02/Delicacies-of-Mexico-Guacamole-Chocolate-Tortillas-Tamales-Quesadillas-A-World-to-Travel-4-500x350.jpg', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 2),
(12, 'Burrito', 'One of the more common Mexican dishes in America, a burrito is a flour tortilla filled with a protein (usually chicken, pork, beef, or steak), rice, beans, and other fillings like lettuce and salsa before being wrapped so it’s easy to hold in your hand..', '26', 'https://www.rewardsnetwork.com/wp-content/uploads/2016/01/MexicanFood_Enchiladas.jpg', '2022-07-29 23:17:00.000000', '2021-07-15 23:17:00.000000', 2),
(13, 'Teishoku - a set meal', 'a set meal includes rice, pickles, soup and a main dish of fish, seafood, vegetables or meat. With lots of food and cheap prices the teishoku dining option is a great introduction to everyday Japanese food. ', '25', 'https://a.cdn-hotels.com/gdcs/production38/d170/3073d638-c201-477a-b5fd-800417567765.jpg?impolicy=fcrop&w=1600&h=1066&q=medium', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 3),
(14, 'Tempura', 'Crispy, tasty, somewhat healthy and cheap, tempura is one of the most popular dishes in Japan. Your choice of prawns, fish, squid, vegetables or tofu are lightly battered and quickly deep-fried to prevent the loss of nutritious vitamins and minerals. Tempura may be served on its own, but is often presented on top of noodles or rice, with a variety of dipping sauces.', '52', 'https://a.cdn-hotels.com/gdcs/production142/d1428/21bf55a6-0124-475b-b3a4-d338651b0dec.jpg?impolicy=fcrop&w=1600&h=1066&q=medium', '2021-08-15 23:17:00.000000', '2021-05-19 23:24:19.000000',3),
(15, 'Noodles: soba, udon and ramen', 'Noodles are a delicious and cheap alternative to a rice-based meal. Made from buckwheat flour, soba noodles have a greyish colour and are served hot with broth or cold with a dipping sauce. Udon are thick wheat noodles that are served hot or cold with soy or fish soup..', '41', 'https://a.cdn-hotels.com/gdcs/production122/d1480/a2c0c3e3-82e1-4e5c-8a66-94b37a8daf1c.jpg?impolicy=fcrop&w=1600&h=1066&q=medium', '2021-05-25 23:24:19.000000', '2021-05-19 23:24:19.000000', 3),
(16, 'Sushi', 'Sushi nigiri is the most well-known variety with a slice of raw fish or egg or vegetable perched atop a small bundle of rice. Maki sushi is the variety that is rolled in ‘nori’ seaweed. Temaki sushi is cone-shaped and full of assorted ingredients. Inari sushi features deep-fried tofu wrapped around the rice. Among the thousands of sushi shops in Tokyo alone you are sure to find a variety that suits you.', '96', 'https://a.cdn-hotels.com/gdcs/production139/d788/1e28039e-65d5-4bbb-8e18-4be9b40ba487.jpg?impolicy=fcrop&w=1600&h=1066&q=medium', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 3),
(17, 'Yakiniku', 'This is another fun, interactive way of eating in Japan. Yakiniku hails from Korea and is essentially a do-it-yourself barbecue with bite-sized pieces of beef, pork and vegetables that you cook on the grill in front of you. The thin slices of meat and vegetable cook quickly and are then doused into a soy-based dipping sauce flavoured with sesame, garlic and sake.', '58', 'https://a.cdn-hotels.com/gdcs/production45/d545/54719820-12b7-4f73-ae56-44506ccbf17c.jpg?impolicy=fcrop&w=1600&h=1066&q=medium', '2017-07-02 23:17:00.000000', '2021-07-15 23:17:00.000000', 3),
(18, 'Yakitori', 'The Japanese believe yakitori is the perfect accompaniment to beer, and in the late hours of the night yakitori stands are always full of life. Yakitori translates as grilled chicken and some restaurants serve up to 20 varieties of the skewers, each a different part of the chicken, including breast meat, wings, heart, parson’s nose, and skin. Your yakitori can be flavoured with shio (salt), or tare (a sweet-salty sauce). Yakitori is a very popular and cheap snack food, usually only 100-200 yen per skewer.', '52', 'https://a.cdn-hotels.com/gdcs/production193/d624/ecc6e01e-af56-46f1-b4c0-3120de1f2e4a.jpg?impolicy=fcrop&w=1600&h=1066&q=medium1. Soupe à l’oignon', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 3),
(19, ' Soupe à l’oignon', 'This is a traditional French soup made of onions and beef stock, usually served with croutons and melted cheese on top. Dating back to Roman times, this was traditionally a peasant dish although the current version dates from the 18th century. The soup’s unique flavor comes from the caramelization of the onions, which often have brandy or sherry added during the slow-cooking process. If you’re in a soup mood, why not try Marseille’s traditional soupe de poisson à la rouille. Once a fisherman’s favorite, this soup is characterized by a dollop of garlic and saffron mayonnaise placed on top.', '78', 'https://www.expatica.com/app/uploads/sites/5/2014/05/french-onion-soup.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 4),
(20, ' Coq au vin', 'This quintessential French food was popularized by Julia Child, becoming one of her signature dishes. The dish sees chicken braised with wine, mushrooms, salty pork or bacon (lardons), mushrooms, onions, garlic and sometimes even a drop of brandy. Although the name translates as ‘rooster in wine’ – the braising is ideal for tougher birds – the recipe usually uses chicken or capon. The wine is typically Burgundy, although regional variations of the dish exist across France that use local wines. These include coq au vin jaune (Jura), coq au Riesling (Alsace), and coq au pourpre (Beaujolais nouveau). Believe it or not, there’s even a coq au Champagne (Champagne).', '36', 'https://www.expatica.com/app/uploads/sites/5/2014/05/coq-au-vin-1.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 4),
(21, ' Cassoulet', 'Cassoulet is a comfort dish of white beans stewed slowly with meat. The dish typically uses pork or duck but can include sausages, goose, mutton or whatever else the chef has lying around. This peasant dish originates from southern France and is popular in Toulouse, Carcassonne, and Castelnaudary. The name of the dish comes from the pot (cassole) that it’s traditionally baked in. This pot is a staple in many French homes, highlighting the popularity of this rich, hearty meal that’s perfect for those colder months..', '58', 'https://www.expatica.com/app/uploads/sites/5/2014/05/cassoulet.jpg', '2017-08-09 23:17:00.000000', '2021-08-12 23:17:00.000000', 4),
(22, 'Bœuf bourguignon', 'Dishes don’t get much more typically French than bœuf bourguignon. The dish hails from the same region as coq au vin – that’s Burgundy in eastern France – and there are similarities between the two dishes. Bœuf bourguignon is essentially a stew made from beef braised in red wine, beef broth, and seasoned vegetables including pearl onions and mushrooms. Originally a peasant dish, this recipe is now a staple in French restaurants around the world. Traditionally, the cheap cuts of meat would be tenderized in wine for two days to intensify the flavors, although some shortcuts can be taken. Every August in Burgundy, the Fête du Charolais celebrates the dish, along with plenty of music and wine..', '45', 'https://www.expatica.com/app/uploads/sites/5/2014/05/boeuf-bourguignon.jpg', '2019-05-07 23:24:19.000000', '2021-08-12 23:17:00.000000', 4),
(23, ' Chocolate soufflé', 'The word soufflé comes from the French verb ‘to blow’ and, as the name suggests, this is a light, airy dessert. The dish dates back to the early 18th century and nowadays is a staple on dessert menus around the world. The crispy chocolatey crust is perfect for letting the creamy chocolate ooze out for a rich surprise. However, it doesn’t have to be sweet. In fact, cheese soufflés are just as delicious if you’re looking for something a little saltier.', '63', 'https://www.expatica.com/app/uploads/sites/5/2014/05/chocolate-souffle%CC%81.jpg', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 4),
(24, 'Flamiche ', 'Flamiche means ‘cake’ in Dutch and this dish originates from northern France, near the border with Belgium. It has a puff-pastry crust filled with cheese and vegetables and resembles a quiche. The traditional filling is leeks and cream, although various variations exist. There’s also a pizza-like version of flamiche, which comes without the top crust of the pie. For a southern French twist, try the thin crusty pissaladière, which has anchovies, onions, and olives.', '41', 'https://www.expatica.com/app/uploads/sites/5/2014/05/flamiche.jpg', '2021-05-02 23:24:19.000000', '2021-05-19 23:24:19.000000', 4),
(25, 'Biltong & droewors', 'Dry curing was a method used to preserve meat by the indigenous tribes of South Africa before fridges were invented. Usually made from beef or game, such as springbok, biltong (a thinly sliced, air-dried meat) and droewors (an air-dried sausage) are traditionally eaten as snacks. The meat is cured in a mixture of vinegar, salt, sugar and spices such as coriander and pepper, then hung to dry. The finished product is prized by health enthusiasts for its high protein and low fat content. Nowadays, biltong and droewors producers often add flavourings such as chilli or garlic to the meat and use a variety of meats, such as ostrich and wild boar.', '96', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gettyimages-170431074-a603c47.jpg?quality=90&webp=true&fit=700,350', '2021-05-01 23:24:19.000000', '2021-05-19 23:24:19.000000', 5),
(26, ' Boerewors', 'This is a traditional South African sausage made from beef, mixed with either pork or lamb and a mixture of spices. Boerewors are traditionally served in a coiled shape, similar to the Cumberland sausage and cooked on a braai (barbecue). The word boerewors comes from the Afrikaans and Dutch words boer (farmer) and wors (sausage).', '89', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/boewars-578935f.jpg?quality=90&webp=true&fit=700,350', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 5),
(27, ' Cape Malay curry', 'In the 17th century, the Dutch and French landed and settled in Cape Town, bringing slaves from Indonesia, India and Malaysia, along with their spices and traditional cooking methods. When combined with local produce, the aromatic spices such as cinnamon, saffron, turmeric and chilli created fragrant curries and stews, which are still popular in the area today.', '85', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/cape-malay-curry-85002b4.jpg?quality=90&webp=true&fit=700,350', '2021-08-12 23:17:00.000000', '2021-05-19 23:24:19.000000', 5),
(28, ' Malva pudding', 'A Dutch import, malva pudding is a sweet and sticky baked sponge pudding made with apricot jam and served smothered in a hot cream sauce. This is South Africas answer to the British sticky toffee pudding, served in many restaurants but mainly baked at home for Sunday lunch..', '44', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/malva-pudding-b196b64.jpg?quality=90&webp=true&fit=700,350', '2014-07-05 23:17:00.000000', '2021-07-15 23:17:00.000000', 5),
(29, 'Chakalaka & pap', 'Chakalaka and pap are mainstays on every South African dinner table. Chakalaka is a vegetable dish made of onions, tomatoes, peppers, carrots, beans and spices, and is often served cold. Pap, meaning , is similar to American grits and is a starchy dish made from white corn maize. Chakalaka and pap are often served together, along with braaied (barbecued) meat, breads, salad and stews..', '58', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chakalaka-78a1742.jpg?quality=90&webp=true&fit=700,350', '2017-05-10 23:24:19.000000', '2021-05-19 23:24:19.000000', 5),
(30, 'Braai/Shisa nyama', 'For a real taste of South Africa an authentic braai or shisa nyama (burn the meat in Zulu) is an eating experience not to be missed. Braais originated in the townships of Johannesburg, with butchers who set up barbecues in front of their shops at weekends to grill their meat and sell it on the street. Nowadays, local communities gather at braais at the weekends to share food. Pop along to soak up the vibrant atmosphere, listen to music and take your pick from the meat on offer, usually comprising of beef, chicken, pork, lamb and vors (sausages) – this is not an outing for vegetarians!.', '74', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/braai-4b657cb.jpg?quality=90&webp=true&fit=700,350', '2021-08-24 23:17:00.000000', '2021-05-19 23:24:19.000000', 5),
(31, ' Bunny chow', 'This street food of Durban has become popular across South Africa and is now starting to hit our food markets back in London. Hollowed out loaves of bread, stuffed with spicy curry were originally created by the immigrant Indian community in the Natal area of Durban and served to workers for lunch. Try chicken, pork or vegetarian varieties containing lentils and beans.', '69', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/bunny-chow-9fa8f61.jpg?quality=90&webp=true&fit=700,350', '2021-07-15 23:17:00.000000', '2021-07-12 23:17:03.000000', 5);



-- --------------------------------------------------------
drop table product;
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `username` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `phone` int(22) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table users;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `email`, `password`, `phone`, `street`, `city`, `zipcode`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'admin', 5555555, 'he', 'h', 'h'),
(2, 0, 'admin2', 'admin2@admin.com', 'admin2', 21, 'he', 'h', 'h'),
(4, 0, '2', 'mm@f.com', '1314', 1414, 'Al Dawhah Al Janubiyah, Dhahran 34457', 'Dahran', '34466'),
(5, 0, '1', '1', '1', 1, '1', '1', '1'),
(6, 0, 'ram', 'ram@gmail.com', 'ram', '1234', 'abc', 'def', '1234');



--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuisine_id` (`cuisine_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
  commit;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
  commit;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table address
--

--
-- Metadata for table cuisine
--

--
-- Metadata for table product
--

--
-- Dumping data for table `pma__table_uiprefs`
--
CREATE TABLE `pma__table_uiprefs`(
username varchar(255),
db_name varchar(255),
table_name varchar(255),
last_update int ,
prefs varchar(255)
 );
drop table pma__table_uiprefs;


INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'foodbox', 'product', '{\"sorted_col\":\"`product`.`date_created`  ASC\"}', '2021-09-17 09:43:27');

--
-- Metadata for table users
--

--
-- Metadata for database foodbox
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;