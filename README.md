# _Restaurant Roulette_

#### By _**Tanvi Garg, Sheila Stephen, Victoria Martinez, Tavish OKeefe, Ryan Leslie, **_

## Specifications
* _User should be able get a list of reastaurants based on the distance range and the price range, that enables the user to choose one of those  listed satisfying users requrements_


## _Setup/Installation Requirements_

* _Production database: RestaurantRoulette_
* _Test Database: RestaurantRoulette_Tests_
* _Tables in Database :Favorites, restaurant_data, users, users_favorites_
* _CREATE DATABASE RestaurantRoulette;_
* _USE RestaurantRoulette_
* _SELECT DATABASE();_
* _CREATE TABLE `users_favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;_
* _CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `distance` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `bio` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;_
* _CREATE TABLE `restaurant_data` (
  `id` int(11) NOT NULL,
  `restaurant_name` varchar(39) DEFAULT NULL,
  `restaurant_location_address` varchar(46) DEFAULT NULL,
  `restaurant_location_latitude` float DEFAULT NULL,
  `restaurant_location_longitude` float DEFAULT NULL,
  `restaurant_average_cost_for_two` int(11) DEFAULT NULL,
  `restaurant_page_url` varchar(159) DEFAULT NULL,
  `restaurant_menu_url` varchar(189) DEFAULT NULL,
  `restaurant_featured_image` varchar(96) DEFAULT NULL,
  `restaurant_photos_url` varchar(159) DEFAULT NULL,
  `restaurant_cuisines` varchar(34) DEFAULT NULL,
  `restaurant_currency` varchar(1) DEFAULT NULL,
  `restaurant_location_zipcode` int(11) DEFAULT NULL,
  `restaurant_thumb` varchar(146) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;_
* _CREATE TABLE `favorites` (
  `fav_res_id` int(11) NOT NULL,
  `fav_res_name` varchar(39) NOT NULL,
  `fav_address` varchar(46) NOT NULL,
  `fav_lat` float NOT NULL,
  `fav_long` float NOT NULL,
  `fav_cost_for_2` int(11) NOT NULL,
  `fav_cuisine` varchar(32) NOT NULL,
  `fav_menu_url` varchar(159) NOT NULL,
  `fav_page_url` varchar(189) NOT NULL,
  `fav_images` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;_

* _Clone repository to your desktop_
* _Open in Atom, or text and source code editor of your choosing._


* _Run dotnet restore from Main Project Folder to install packages_
* _Run dotnet build from Main Project Folder and make sure no build errors appear. Run dotnet restore after build is complete._
* _Run dotnet restore to compile tests and then dotnet test from the Test Directory to run the testing suite. All tests should pass._
* _Run dotnet run from Main Project Folder to start the server_
* _Wait till you see this message display in you bash terminal - "Now listening on: http://localhost:xxxx"_
* _Copy the local host link http://localhost:xxx and paste it into your web browser address bar._
* _Browse through the project._

## Known Bugs

_There are no known bugs at this time._

## Technologies Used

* _CSharp_
* _JavaScript_
* _PHPMyAdmin_

### License

Copyright (c) 2018, _Sheila Stephen_  

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:  

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE._
