-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 14, 2019 at 10:03 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RestaurantRoulette`
--
CREATE DATABASE IF NOT EXISTS `RestaurantRoulette` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `RestaurantRoulette`;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `fav_res_name` varchar(255) NOT NULL,
  `fav_address` varchar(255) NOT NULL,
  `fav_lat` double NOT NULL,
  `fav_long` double NOT NULL,
  `fav_cost_for_2` int(11) NOT NULL,
  `fav_cuisine` varchar(255) NOT NULL,
  `fav_menu_url` varchar(255) NOT NULL,
  `fav_page_url` varchar(255) NOT NULL,
  `fav_images` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `fav_res_name`, `fav_address`, `fav_lat`, `fav_long`, `fav_cost_for_2`, `fav_cuisine`, `fav_menu_url`, `fav_page_url`, `fav_images`) VALUES
(1, 'Portland City Grill', '111 SW 5th Avenue 97204', 45.5222015380859, -122.676002502441, 70, 'Asian, Seafood, Steak', 'https://www.zomato.com/portland/portland-city-grill-downtown/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://www.zomato.com/portland/portland-city-grill-downtown/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', NULL),
(2, 'Henry\'s 12th Street Tavern', '10 NW 12th Avenue 97209', 45.5228996276855, -122.682998657227, 65, 'American', 'https://www.zomato.com/portland/henrys-12th-street-tavern-pearl-district/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://www.zomato.com/portland/henrys-12th-street-tavern-pearl-district/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_data`
--

CREATE TABLE `restaurant_data` (
  `id` int(11) NOT NULL,
  `restaurant_name` varchar(255) DEFAULT NULL,
  `restaurant_location_address` varchar(255) DEFAULT NULL,
  `restaurant_location_latitude` double DEFAULT NULL,
  `restaurant_location_longitude` double DEFAULT NULL,
  `restaurant_average_cost_for_two` int(11) DEFAULT NULL,
  `restaurant_page_url` varchar(255) DEFAULT NULL,
  `restaurant_menu_url` varchar(255) DEFAULT NULL,
  `restaurant_featured_image` varchar(255) DEFAULT NULL,
  `restaurant_photos_url` varchar(255) DEFAULT NULL,
  `restaurant_cuisines` varchar(255) DEFAULT NULL,
  `restaurant_currency` varchar(255) DEFAULT NULL,
  `restaurant_location_zipcode` int(11) DEFAULT NULL,
  `restaurant_thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant_data`
--

INSERT INTO `restaurant_data` (`id`, `restaurant_name`, `restaurant_location_address`, `restaurant_location_latitude`, `restaurant_location_longitude`, `restaurant_average_cost_for_two`, `restaurant_page_url`, `restaurant_menu_url`, `restaurant_featured_image`, `restaurant_photos_url`, `restaurant_cuisines`, `restaurant_currency`, `restaurant_location_zipcode`, `restaurant_thumb`) VALUES
(1, 'Pok Pok', '3226 SE Division Street 97202', 45.504600524902344, -122.63200378417969, 35, 'https://www.zomato.com/portland/pok-pok-richmond/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/pok-pok-richmond/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17046678_CHAIN_f382690a11a2ba39064a970083d89b09_c.jpg', 'https://www.zomato.com/portland/pok-pok-richmond/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Thai', '$', 97202, 'https://b.zmtcdn.com/data/res_imagery/17046678_CHAIN_f382690a11a2ba39064a970083d89b09_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(2, 'Mother\'s Bistro & Bar', '212 SW Stark St, Portland 97204', 45.52000045776367, -122.67400360107422, 75, 'https://www.zomato.com/portland/mothers-bistro-bar-portland/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/mothers-bistro-bar-portland/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17047969_RESTAURANT_196205020254409c4f5391f5ffed2e0d_c.jpg', 'https://www.zomato.com/portland/mothers-bistro-bar-portland/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'American, Breakfast', '$', 97204, 'https://b.zmtcdn.com/data/res_imagery/17047969_RESTAURANT_196205020254409c4f5391f5ffed2e0d_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(3, 'Voodoo Doughnut', '22 SW 3rd Avenue, Portland 97204', 45.522701263427734, -122.6729965209961, 20, 'https://www.zomato.com/portland/voodoo-doughnut-chinatown-old-town/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/voodoo-doughnut-chinatown-old-town/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', '', 'https://www.zomato.com/portland/voodoo-doughnut-chinatown-old-town/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Donuts', '$', 97204, ''),
(4, 'Pambiche', '2811 NE Glisan Street 97232', 45.5265998840332, -122.63700103759766, 25, 'https://www.zomato.com/portland/pambiche-kerns/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/pambiche-kerns/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17046447_RESTAURANT_1ae4196fbcd8fabe3b4c9df06020502d_c.jpg', 'https://www.zomato.com/portland/pambiche-kerns/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Cuban', '$', 97232, 'https://b.zmtcdn.com/data/res_imagery/17046447_RESTAURANT_1ae4196fbcd8fabe3b4c9df06020502d_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(5, 'Andina Restaurant', '1314 NW Glisan Street, Pearl District 97209', 45.5265007019043, -122.68499755859375, 120, 'https://www.zomato.com/portland/andina-restaurant-pearl-district/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/andina-restaurant-pearl-district/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17043944_RESTAURANT_2764b7995164ee04bf050a8f66788554_c.jpg', 'https://www.zomato.com/portland/andina-restaurant-pearl-district/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Latin American, Tapas, Peruvian', '$', 97209, 'https://b.zmtcdn.com/data/res_imagery/17043944_RESTAURANT_2764b7995164ee04bf050a8f66788554_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(6, 'Screen Door', '2337 E Burnside Street 97214', 45.523101806640625, -122.64199829101562, 75, 'https://www.zomato.com/portland/screen-door-kerns/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/screen-door-kerns/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17046997_RESTAURANT_a2a4d5dc4bd245269fbdaa47aa65402a_c.jpg', 'https://www.zomato.com/portland/screen-door-kerns/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Southern', '$', 97214, 'https://b.zmtcdn.com/data/res_imagery/17046997_RESTAURANT_a2a4d5dc4bd245269fbdaa47aa65402a_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(7, 'Tasty n Sons', '3808 N Williams Avenue Suite C, Portland 97227', 45.550201416015625, -122.66600036621094, 150, 'https://www.zomato.com/portland/tasty-n-sons-boise-eliot/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/tasty-n-sons-boise-eliot/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17049624_RESTAURANT_a91d6730513aa20e974dc7e4b2a42e2c_c.JPG', 'https://www.zomato.com/portland/tasty-n-sons-boise-eliot/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'American', '$', 97227, 'https://b.zmtcdn.com/data/res_imagery/17049624_RESTAURANT_a91d6730513aa20e974dc7e4b2a42e2c_c.JPG?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(8, 'Portland City Grill', '111 SW 5th Avenue 97204', 45.52220153808594, -122.6760025024414, 70, 'https://www.zomato.com/portland/portland-city-grill-downtown/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/portland-city-grill-downtown/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17046691_RESTAURANT_80dd36428b807866d96b9220f231f2ec_c.jpg', 'https://www.zomato.com/portland/portland-city-grill-downtown/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Asian, Seafood, Steak', '$', 97204, 'https://b.zmtcdn.com/data/res_imagery/17046691_RESTAURANT_80dd36428b807866d96b9220f231f2ec_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(9, 'Pine State Biscuits', '2204 NE Alberta Street, Portland 97211', 45.55889892578125, -122.64299774169922, 25, 'https://www.zomato.com/portland/pine-state-biscuits-alberta/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/pine-state-biscuits-alberta/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17049795_RESTAURANT_66b82d49fc9d9cbbbc25564d61b0dac9_c.jpg', 'https://www.zomato.com/portland/pine-state-biscuits-alberta/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'American, Coffee and Tea, Southern', '$', 97211, 'https://b.zmtcdn.com/data/res_imagery/17049795_RESTAURANT_66b82d49fc9d9cbbbc25564d61b0dac9_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(10, 'Tin Shed Garden Cafe', '1438 NE Alberta Street, Portland 97211', 45.558998107910156, -122.6510009765625, 25, 'https://www.zomato.com/portland/tin-shed-garden-cafe-alberta/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/tin-shed-garden-cafe-alberta/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17047556_RESTAURANT_de59275ee13252b86cc34f172feaea1b_c.jpg', 'https://www.zomato.com/portland/tin-shed-garden-cafe-alberta/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'American, Burger', '$', 97211, 'https://b.zmtcdn.com/data/res_imagery/17047556_RESTAURANT_de59275ee13252b86cc34f172feaea1b_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(11, 'Montage', '301 SE Morrison Street 97214', 45.51729965209961, -122.66300201416016, 45, 'https://www.zomato.com/portland/montage-buckman/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/montage-buckman/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', '', 'https://www.zomato.com/portland/montage-buckman/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Cajun, Soul Food', '$', 97214, ''),
(12, 'Deschutes Brewery Portland Public House', '210 NW 11th Avenue, Pearl District 97209', 45.52450180053711, -122.68199920654297, 55, 'https://www.zomato.com/portland/deschutes-brewery-portland-public-house-pearl-district/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/deschutes-brewery-portland-public-house-pearl-district/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17048053_RESTAURANT_47e54f8cfccf2f32bb34583af34a2bad_c.jpg', 'https://www.zomato.com/portland/deschutes-brewery-portland-public-house-pearl-district/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'American, Bar Food', '$', 97209, 'https://b.zmtcdn.com/data/res_imagery/17048053_RESTAURANT_47e54f8cfccf2f32bb34583af34a2bad_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(13, 'Jake\'s Famous Crawfish', '401 SW 12th Avenue 97205', 45.522499084472656, -122.68299865722656, 275, 'https://www.zomato.com/portland/jakes-famous-crawfish-downtown/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/jakes-famous-crawfish-downtown/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'http://b.zmtcdn.com/data/res_imagery/17045566_RESTAURANT_64b0fc14ea14628bf48015a7b98e4aa5_c.jpg', 'https://www.zomato.com/portland/jakes-famous-crawfish-downtown/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Seafood, Pacific Northwest', '$', 97205, 'https://b.zmtcdn.com/data/res_imagery/17045566_RESTAURANT_64b0fc14ea14628bf48015a7b98e4aa5_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(14, 'Papa Haydn', '701 NW 23rd Avenue 97210', 45.527801513671875, -122.6989974975586, 90, 'https://www.zomato.com/portland/papa-haydn-nob-hill-uptown/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/papa-haydn-nob-hill-uptown/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17046465_CHAIN_eaef333f26c81165329d687ac2a27419_c.jpg', 'https://www.zomato.com/portland/papa-haydn-nob-hill-uptown/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'American, Breakfast, Desserts', '$', 97210, 'https://b.zmtcdn.com/data/res_imagery/17046465_CHAIN_eaef333f26c81165329d687ac2a27419_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(15, 'Toro Bravo', '120 NE Russell Street, Portland 97212', 45.54069900512695, -122.66400146484375, 75, 'https://www.zomato.com/portland/toro-bravo-boise-eliot/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/toro-bravo-boise-eliot/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17047591_RESTAURANT_d6612f2d6776638f677a62cc36f62ccc.jpg', 'https://www.zomato.com/portland/toro-bravo-boise-eliot/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Latin American, Spanish, Tapas', '$', 97212, 'https://b.zmtcdn.com/data/res_imagery/17047591_RESTAURANT_d6612f2d6776638f677a62cc36f62ccc.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(16, 'Gravy', '3957 N Mississippi Avenue, Portland 97227', 45.551700592041016, -122.6760025024414, 35, 'https://www.zomato.com/portland/gravy-boise-eliot/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/gravy-boise-eliot/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17045299_RESTAURANT_0836c22989817216e76117c26feeff19_c.jpg', 'https://www.zomato.com/portland/gravy-boise-eliot/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'American', '$', 97227, 'https://b.zmtcdn.com/data/res_imagery/17045299_RESTAURANT_0836c22989817216e76117c26feeff19_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(17, 'Marrakesh', '1201 NW 21st Avenue, Portland 97209', 45.53139877319336, -122.69499969482422, 50, 'https://www.zomato.com/portland/marrakesh-nob-hill-uptown/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/marrakesh-nob-hill-uptown/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17046013_RESTAURANT_e97fc931a3fc4280e237ff0a0af9aa80_c.jpg', 'https://www.zomato.com/portland/marrakesh-nob-hill-uptown/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Moroccan, Middle Eastern', '$', 97209, 'https://b.zmtcdn.com/data/res_imagery/17046013_RESTAURANT_e97fc931a3fc4280e237ff0a0af9aa80_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(18, 'Tasty n Alder', '580 SW 12th Avenue, Portland 97205', 45.52130126953125, -122.68399810791016, 150, 'https://www.zomato.com/portland/tasty-n-alder-downtown/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/tasty-n-alder-downtown/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17051429_RESTAURANT_4a3b3c195ed2ec7a73dc2120346b6917_c.jpg', 'https://www.zomato.com/portland/tasty-n-alder-downtown/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Pacific Northwest, Steak', '$', 97205, 'https://b.zmtcdn.com/data/res_imagery/17051429_RESTAURANT_4a3b3c195ed2ec7a73dc2120346b6917_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(19, 'Kenny & Zuke\'s Delicatessen', '1038 SW Stark Street 97205', 45.52199935913086, -122.68099975585938, 75, 'https://www.zomato.com/portland/kenny-zukes-delicatessen-downtown/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/kenny-zukes-delicatessen-downtown/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17047885_RESTAURANT_3058f8efe7de7bf5b68c2e72a3fb8710_c.jpg', 'https://www.zomato.com/portland/kenny-zukes-delicatessen-downtown/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'Breakfast, Sandwich', '$', 97205, 'https://b.zmtcdn.com/data/res_imagery/17047885_RESTAURANT_3058f8efe7de7bf5b68c2e72a3fb8710_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A'),
(20, 'Henry\'s 12th Street Tavern', '10 NW 12th Avenue 97209', 45.52289962768555, -122.68299865722656, 65, 'https://www.zomato.com/portland/henrys-12th-street-tavern-pearl-district/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1', 'https://www.zomato.com/portland/henrys-12th-street-tavern-pearl-district/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop', 'https://b.zmtcdn.com/data/res_imagery/17045409_RESTAURANT_0c0b1e5224240773984da286680e1b3e_c.jpg', 'https://www.zomato.com/portland/henrys-12th-street-tavern-pearl-district/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop', 'American', '$', 97209, 'https://b.zmtcdn.com/data/res_imagery/17045409_RESTAURANT_0c0b1e5224240773984da286680e1b3e_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `distance` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `bio` varchar(255) DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `distance`, `price`, `bio`) VALUES
(10, 'sheila', 'sheila', 1, 70, 'Hello !!');

-- --------------------------------------------------------

--
-- Table structure for table `users_favorites`
--

CREATE TABLE `users_favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_favorites`
--

INSERT INTO `users_favorites` (`id`, `user_id`, `restaurant_id`) VALUES
(1, 10, 1),
(2, 10, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_data`
--
ALTER TABLE `restaurant_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_favorites`
--
ALTER TABLE `users_favorites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant_data`
--
ALTER TABLE `restaurant_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_favorites`
--
ALTER TABLE `users_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
