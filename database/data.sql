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
INSERT INTO brewery(name, location_id, address, latitude, longitude, description, year_founded, image_path) VALUES ('Land-Grant', 1, '424 W Town St, Columbus, OH 43215', 39.958030, -83.011472, 'Land-Grant was born from a passion for painstakingly-crafted beer, powerful design, and a midwestern sports devotion.', 2014, 'img/');

-- BEER
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Greens Keeper', 'Big citrus hop flavor that doesn’t overpower, medium body, and a low ABV allow for prolonged enjoyment through even the longest of afternoons. This is an IPA that deserves a day off.', 'Session IPA', 4.7, 44, 'Nonic Pint');

-- REVIEW
INSERT INTO review(beer_id, user_id, description, rating) VALUES (1, 1, 'Greens Keeper is the perfect beer for a "relaxing" day on the links. ', 5);


COMMIT;