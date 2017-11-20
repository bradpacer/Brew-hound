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
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Seventh Son', 1, '1101 N 4th St, Columbus, OH 43201', 39.985374, -82.999290, 'SEVENTH SON BREWING HAS BEEN PRODUCING EXCEPTIONAL BEERS AT THE INTERSECTION OF 4TH & 4TH IN COLUMBUS'' HISTORIC ITALIAN VILLAGE SINCE APRIL OF 2013.', 2013, 'SeventhSon.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('CBC', 1, '2555 Harrison Road, Columbus, Ohio 43204', 39.966674, -83.070347, 'Columbus Brewing Company is an independent craft brewery dedicated to exploring the flavors of American hops. Best known for Columbus IPA and Bodhi, we also enjoy the subtleties of German-style lagers, the intense characteristics of barrel aged beers and everything in between.', 1988, 'CBC.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Brew Dog', 1, '96 Gender Rd, Canal Winchester, OH 43110', 39.847391, -82.826154, 'BrewDog is a multinational brewery and pub chain based in Ellon, Scotland', 2007, 'Brewdog.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Four String', 1, '985 W 6th Ave, Columbus, OH 43212', 39.989002, -83.032769, 'Rock ''n'' roll craft brewery featuring a taproom with pints to drink on-site & growlers to-go.', 2011, 'FourString.jpg');
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('North High', 1, '1288 N High St, Columbus, OH 43201', 39.988758, -83.005595, 'North High Brewing creates small-batch, high-quality craft beer that they serve in their taproom as well as on tap at dozens of area restaurants and bars.', 2011, 'NorthHigh.jpg');


-- BEER
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Greens Keeper', 'Big citrus hop flavor that doesn’t overpower, medium body, and a low ABV allow for prolonged enjoyment through even the longest of afternoons. This is an IPA that deserves a day off.', 'Session IPA', 4.7, 44, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, '1862 Ale', 'In 1862, President Lincoln signed the Morrill Act into law, giving the American populous the opportunity to seek a higher education. It called for one great state university in each state, and inadvertently led to tailgate parties, marching bands, fight songs and Bowl Games. Our 1862 Ale –a dry-hopped American take on the classic German beer– combines the crisp clean flavor of German Noble hops with the floral aromatics of American hops.', 'American Kolsch', 4.9, 24, 'Stange');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Stiff-Arm', 'Like a palm to your jaw, our American IPA delivers a jolt of hoppy goodness. An ale as well rounded as any All-Timer, our Stiff-Arm IPA combines all of its talents: All American hops, fragrant aromas of citrus and pine, a clean finish, and an uncanny sense of balance provided by a nice malt backing. It’s a classic American beer that will have you striking the pose year-round.', 'IPA', 6.4, 50, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Glory', 'Brewed with Club and City in mind, Glory is an American Wheat Ale with Citra hops. Its final recipe was culled from two experimental taproom tastings with the passionate supporters of Columbus Crew SC. They chose this bright, hoppy, and refreshing wheat ale as their beer. Glory to Columbus, indeed.', 'American Wheat Ale', 5.4, 24, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Son Of A Mudder', 'Nevermind the conditions. This Brown Ale’s father was a Mudder and his mother was a Mudder. A taproom favorite being released in cans for the first time. Son of a Mudder is a tried and true American Brown Ale with a subtle hop presence at the turn and toffee, caramel, and coffee notes waiting in the winner’s circle. When they’re calling for rain, dig in and grab a Mudder. It’s a sure thing.', 'American Brown Ale', 6.1, 27, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Neutron', 'Before there was even a term “super fans” there was a man that could make an entire stadium stand up and take notice with a goofy dance breakdown. Grab your cap and let the sounds of the band and the roar of the crowd guide your moves. Packed with Chinook, ID7, Citra, Mosaic, Zythos, and Amarillo hops this Double IPA packs a juicy hop punch and deserves a standing ovation. $1.00 from each six pack sold will go to benefit the Neutron Man Memorial Fund.', 'Double IPA', 8.0, 90, 'Gobet');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Goon', 'Goon is an assertive Strong American Pale Ale that scoffs at fruity hop trends and brings a dank and piney aggression to the ice. With Magnum, Northern Brewer, Chinook, and Green Bullet hops in tow, Goon lives up to its reputation as a hard hitter. Drop your gloves and take a swig.', 'Strong Pale ALe', 6.1, 65, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'One Goal One Ryed', 'One Goal, One Rye’d is brewed in support of cancer research. This Rye Pale Ale offers up a bit of spice from the malt that pairs nicely with notes of lemon and grapefruit. $1.00 from each six pack sold ­and $1.00 from each taproom pour goes directly toward Pelotonia’s goal of ending cancer once and for all.', 'Rye Pale Ale', 5.9, 39, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Beard Crumbs', 'Beard Crumbs is a smooth dark stout teeming with notes of chocolate, coffee, and an extra punch of holiday cheer via the addition of carmelized raisins. It delivers the joy of an oatmeal raisin cookie, minus the crumbly clean up. It’s a festive ale that old Saint Nick himself would love.', 'Oatmeal Raisin Stout', 7.3, 42, 'Belgian');
-- REVIEW
INSERT INTO review(beer_id, user_id, description, rating) VALUES (1, 1, 'Greens Keeper is the perfect beer for a "relaxing" day on the links. ', 5);


COMMIT;