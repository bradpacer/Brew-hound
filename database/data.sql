-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

-- INSERT statements go here

-- LOCATION
INSERT INTO location(city, state) VALUES ('Columbus', 'Ohio');

-- USERS
INSERT INTO users(username, password, role) VALUES ('admin_user', 'password1', 'admin');

-- BREWERY
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Land-Grant', 1, '424 W Town St, Columbus, OH 43215', 39.958030, -83.011472, 'Land-Grant was born from a passion for painstakingly-crafted beer, powerful design, and a midwestern sports devotion.', 2014, 'LandGrant.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('CBC', 1, '2555 Harrison Road, Columbus, Ohio 43204', 39.966674, -83.070347, 'Columbus Brewing Company is an independent craft brewery dedicated to exploring the flavors of American hops. Best known for Columbus IPA and Bodhi, we also enjoy the subtleties of German-style lagers, the intense characteristics of barrel aged beers and everything in between.', 1988, 'CBC.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Seventh Son', 1, '1101 N 4th St, Columbus, OH 43201', 39.985374, -82.999290, 'SEVENTH SON BREWING HAS BEEN PRODUCING EXCEPTIONAL BEERS AT THE INTERSECTION OF 4TH & 4TH IN COLUMBUS'' HISTORIC ITALIAN VILLAGE SINCE APRIL OF 2013.', 2013, 'SeventhSon.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Four String', 1, '985 W 6th Ave, Columbus, OH 43212', 39.989002, -83.032769, 'Rock ''n'' roll craft brewery featuring a taproom with pints to drink on-site & growlers to-go.', 2011, 'FourString.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Brew Dog', 1, '96 Gender Rd, Canal Winchester, OH 43110', 39.847391, -82.826154, 'BrewDog is a multinational brewery and pub chain based in Ellon, Scotland', 2007, 'Brewdog.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('North High', 1, '1288 N High St, Columbus, OH 43201', 39.988758, -83.005595, 'North High Brewing creates small-batch, high-quality craft beer that they serve in their taproom as well as on tap at dozens of area restaurants and bars.', 2011, 'NorthHigh.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Wolfs Ridge', 1, '215 N 4th St, Columbus, OH 43201', 39.967277, -82.997609, 'Every single WRB beer is born from the creativity and imagination of a passionate and dedicated team, headed by Chris Davison. We strive to produce high quality and consistent beers across a wide spectrum of styles.', 2013, 'WolfsRidge.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Actual Brewing', 1, '655 N. James Rd, Columbus, OH 43219', 39.9868937, -82.9081352, 'A first-rate brewery and beverage laboratory doing delicious beer science in a dodgy warehouse by the airport.', 2013, 'Actual.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Lineage', 1, '2971 N. High St, Columbus, OH 43202', 40.0225725, -83.01413430000002, 'Lineage Brewing® pays homage to the tradition of craft beer by expanding upon age-old techniques with new flavor combinations that would make our ancestors proud.', 2013, 'Lineage.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Elevator', 1, '165 N. 4th St, Columbus, Ohio 43215', 39.966224, -82.99739160000001, 'Founded in 1999 by a father/son beer drinking team in a small-town grain elevator, we are now into our second century of brewing award-winning beer with as much passion as you put into enjoying each pint.', 1999, 'Elevator.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Hoof Hearted', 1, '850 N. 4th St, Columbus, OH 43215', 39.980444, -82.998085, 'Dabbling in the Dank and Dark arts since 2011, Ol’ HoofyMan’s got that hot-pot kettle that won’t ever settle. Slurp up some serious neon by way of one of our many fruity and full-bodied IPA’s. Learn eternal secrets from unknown elders after inhaling a double-mash stout. Whatever you choose, just make sure you ask your mom if it’s cool to come over.', 2011, 'Hoof.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Zaftig', 1, '7020A Huntley Rd, Columbus, OH 43229', 40.1060045, -82.99760349999997, 'We aim to produce every beer to the standards of our favorite beers from the breweries we admire.  With that, we''ve coined our motto, full bodied ales.', 2014, 'Zaftig.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Platform', 1, '408 N 6th St, Columbus, OH 43215', 39.97173, -82.99276099999997, 'Sprawling industrial-chic taproom serving a rotating selection of craft beer & local eats.', 2014, 'Platform.jpg');

-- BEER
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Greens Keeper', 'Big citrus hop flavor that doesn’t overpower, medium body, and a low ABV allow for prolonged enjoyment through even the longest of afternoons. This is an IPA that deserves a day off.', 'Session IPA', 4.7, 44, 'Nonic Pint');

-- REVIEW
INSERT INTO review(beer_id, user_id, description, rating) VALUES (1, 1, 'Greens Keeper is the perfect beer for a "relaxing" day on the links. ', 5);


COMMIT;