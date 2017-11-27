-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

-- INSERT statements go here

-- LOCATION
INSERT INTO location(city, state) VALUES ('Columbus', 'Ohio');

-- USERS
INSERT INTO users(username, password, role) VALUES ('admin_user', 'password1', 'admin');
INSERT INTO users(username, password, role) VALUES ('test_user', 'password1', 'user');
INSERT INTO users(username, password, role) VALUES ('brewer_user', 'password1', 'brewer');

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

-- BEER: Land-Grant
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Greens Keeper', 'Big citrus hop flavor that doesn’t overpower, medium body, and a low ABV allow for prolonged enjoyment through even the longest of afternoons. This is an IPA that deserves a day off.', 'Session IPA', 4.7, 44, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, '1862 Ale', 'In 1862, President Lincoln signed the Morrill Act into law, giving the American populous the opportunity to seek a higher education. It called for one great state university in each state, and inadvertently led to tailgate parties, marching bands, fight songs and Bowl Games. Our 1862 Ale –a dry-hopped American take on the classic German beer– combines the crisp clean flavor of German Noble hops with the floral aromatics of American hops.', 'American Kolsch', 4.9, 24, 'Stange');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Stiff-Arm', 'Like a palm to your jaw, our American IPA delivers a jolt of hoppy goodness. An ale as well rounded as any All-Timer, our Stiff-Arm IPA combines all of its talents: All American hops, fragrant aromas of citrus and pine, a clean finish, and an uncanny sense of balance provided by a nice malt backing. It’s a classic American beer that will have you striking the pose year-round.', 'IPA', 6.4, 50, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Glory', 'Brewed with Club and City in mind, Glory is an American Wheat Ale with Citra hops. Its final recipe was culled from two experimental taproom tastings with the passionate supporters of Columbus Crew SC. They chose this bright, hoppy, and refreshing wheat ale as their beer. Glory to Columbus, indeed.', 'American Wheat Ale', 5.4, 24, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Son Of A Mudder', 'Nevermind the conditions. This Brown Ale’s father was a Mudder and his mother was a Mudder. A taproom favorite being released in cans for the first time. Son of a Mudder is a tried and true American Brown Ale with a subtle hop presence at the turn and toffee, caramel, and coffee notes waiting in the winner’s circle. When they’re calling for rain, dig in and grab a Mudder. It’s a sure thing.', 'American Brown Ale', 6.1, 27, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Neutron', 'Before there was even a term “super fans” there was a man that could make an entire stadium stand up and take notice with a goofy dance breakdown. Grab your cap and let the sounds of the band and the roar of the crowd guide your moves. Packed with Chinook, ID7, Citra, Mosaic, Zythos, and Amarillo hops this Double IPA packs a juicy hop punch and deserves a standing ovation. $1.00 from each six pack sold will go to benefit the Neutron Man Memorial Fund.', 'Double IPA', 8.0, 90, 'Gobet');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Goon', 'Goon is an assertive Strong American Pale Ale that scoffs at fruity hop trends and brings a dank and piney aggression to the ice. With Magnum, Northern Brewer, Chinook, and Green Bullet hops in tow, Goon lives up to its reputation as a hard hitter. Drop your gloves and take a swig.', 'Strong Pale ALe', 6.1, 65, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'One Goal One Ryed', 'One Goal, One Rye’d is brewed in support of cancer research. This Rye Pale Ale offers up a bit of spice from the malt that pairs nicely with notes of lemon and grapefruit. $1.00 from each six pack sold ­and $1.00 from each taproom pour goes directly toward Pelotonia’s goal of ending cancer once and for all.', 'Rye Pale Ale', 5.9, 39, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (1, 'Beard Crumbs', 'Beard Crumbs is a smooth dark stout teeming with notes of chocolate, coffee, and an extra punch of holiday cheer via the addition of carmelized raisins. It delivers the joy of an oatmeal raisin cookie, minus the crumbly clean up. It’s a festive ale that old Saint Nick himself would love.', 'Oatmeal Raisin Stout', 7.3, 42, 'Belgian');

-- BEER: CBC
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'CBC IPA', 'India Pale Ales were originally brewed to withstand long ocean voyages by increasing the quantity of hops and malt used in their Pale Ale predecessors. Our take on IPA pours pale orange with a balanced malt presence and finishes with a combination of grapefruit, pine, and tropical fruit notes from Pacific Northwest grown hops.', 'IPA', 6.3, 60, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'Thunderlips', 'This deep golden Pale Ale is brewed with Simpsons Golden Promise malt to create a backbone for thunderous additions of Mosaic® and Equinox® hops.', 'Experimental IPA', 5.3, 40, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'SFW', 'SFW is our version of a Belgian style farmhouse ale. This beer is brewed with wheat, oats, and fresh ground coriander. After years of experimenting, we believe that the fruit and spice character of our house Saison yeast combined with tropical notes from our favorite American hops deliver an unforgettable explosion of flavor.', 'Farmhouse Style Ale', 4.7, 24, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'Bodhi', 'An awakening of the senses by virtue of American hops. Pale golden in color, this double IPA showcases a unique blend of hops, highlighting the true nature of Citra®.', 'Double IPA', 8.3, 80, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'Creeper', 'Pale malts provide a stage for the huge hop presence. Creeper is our limited release Imperial IPA featuring an ever evolving blend of American hops.', 'Imperial IPA', 10.0, 100, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'Citra Noel', 'Welcome to a new holiday tradition. Our mahogany colored ale features tropical fruit notes from Citra® hops and has a deep rich malt character.', 'Hoppy Holiday Ale', 7.3, 34, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'Summer Teeth', 'Beer is meant to be shared and nothing says summer like sharing a crisp, golden lager with friends. This traditional German style lager is brewed with a blend of European malts and hops to create a refreshing, easy-drinking beer.', 'German Style Lager', 5.3, 18, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'Yakima Fresh', 'Our annual wet-hopped American IPA features hops that were shipped directly from the farm to our brewery and used within 24 hours after being picked in the field. This year’s batch (2017) was brewed with fresh Mosaic® hops from B.T. Loftus Ranches in Yakima, WA.', 'Wet Hop IPA', 7.5, 70, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'Lucy', 'Our Belgian style IPA is brewed with traditional Trappist ale yeast. This deceptively strong ale is hopped with a blend of new world hops to enhance the spicy aromatics from the Belgian yeast.', 'Belgian IPA', 9.0, 75, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (2, 'Festbier', 'Our Festbier is inspired by the Oktoberfest beers of Germany. It is brewed with imported specialty malts to create a medium bodied, malty, amber lager with a smooth finish.', 'Oktoberfest Lager', 5.3, 22, 'Pint');

-- BEER: SEVENTH SON
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'Seventh Son', 'Seven hops, aromatically hoppy, rich malts, jammy, not bitter, nutty', 'American Strong Ale', 7.7, 40, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'The Scientist', 'Constantly shifting IPA, each batch w/one ingredient changed from the last', 'IPA', 7.0, 75, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'Stone Fort', 'Inspired by traditional English browns, milk chocolate, faint sweet smoke', 'Oat Brown Ale', 5.0, 25, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'Humulus Nimbus', 'Berry-piney hops and light malts, toes the line between IPA and pale ale', 'Strong Pale Ale', 6.0, 53, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'Proliferous', 'Lots of resinous pine, very citrusy and tropical in the nose', 'Double IPA', 8.3, 85, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'Goo Goo Muck', 'Sour wort IPA and fruity, like citrus juice', 'Tart IPA', 8.0, 50, 'Goblet');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'Scorched Earth', 'Land Grant collab double IPA with agave nectar', 'Double IPA', 8.2, 95, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'Brother Jon', 'Easily drinkable with faint fruit and spice, crackery malt', 'Belgian Blonde Ale', 6.3, 30, 'Mug');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'Golden Ratio', 'Made with locally sourced honey- toasty malts, tropical fruit hops', 'IPA', 7.0, 68, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (3, 'Black Sheep', 'Dry hopped stout that is lightly smokey, char, chocolate, spicy hops', 'American Stout', 6.6, 22, 'Goblet');

-- BEER: FOUR STRING
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (4, 'Hilltop Herritage Lager', 'Hilltop was inspired by our love of the classic American lager beer. From the recipe design and lagering techniques, to the can artwork and affordable price. Hilltop honors the tradition of a local beer for all beer drinkers.', 'Lager', 4.2, 13, 'Staright out of the can');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (4, 'Rectifier Double IPA', 'Our American double IPA is made with loads of dank, resinous American hops to create a bold mix of citrus, floral and tropical notes. An electrifying concoction for all of you hop heads.', 'IPA', 8.1, 84, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (4, 'Big Star White IPA', 'This Belgian White IPA is brewed with barley and wheat, containing a wonderful grapefruit citrus aroma and a peppery sweet finish. An IPA for everyone.', 'IPA', 7.0, 70, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (4, 'Vanilla Porter', 'Our winter seasonal American Porter made with Madagascar Vanilla Beans and a variety of specialty malts, smooth roasted flavor finishing dry with hints of chocolate and hoppy bitterness.', 'Porter', 6.0, 42, 'Goblet');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (4, 'Skeleton Red Rye IPA', 'This fall seasonal is a firmly bitter IPA, with piney and citrus aroma. Hint of rye flavor with a devilishly dry finish.', 'Rye Beer', 6.66, 66, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (4, 'Playback Pilsner', 'Our pilsner is an all-day drinker perfect for a rock festival weekend. This lager beer is brilliant with a gorgeous golden hue. We age it for nearly a month using a centuries old process to build a crisp, clean flavor that is perfectly balanced. The nose is bright with loads of herbal, cedar and floral hop aroma contributed by the finest hops the Bavarian Hallertauer region can yield.', 'Pilsner', 5.1, 45, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (4, 'Switchblade IPA', 'Explosive notes of ripe tropical fruit and citrus dominate the aroma, with savage amounts of hops used in both early and late additions. This dry-hopped American IPA will close out every show the way rock intendedguitar smashing and hoping for an encore.', 'American IPA', 6.5, 65, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (4, 'Suncaster Summer Wheat Ale', 'Our summer seasonal is a refreshing unfiltered wheat beer that finishes dry with a wonderful peach and passionfruit aroma.', 'Wheat ALe', 5.0, 28, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (4, 'Brass Knuckle Pale Ale', 'A hard-rocking Pale Ale that smacks the lips with tasty bitter hops and citrusy grapefruit shots to the nose. It finishes crisp and dry, sustaining like a windmill power chord. All of a sudden it hits you...this is the one.', 'Pale Ale', 5.75, 36, 'Pint');

-- BEER: BREWDOG
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (5,'Punk IPA', 'Our scene-stealing flagship is an India Pale Ale that has become a byword for craft beer rebellion; synonymous with the insurgency against mass-produced, lowest common denominator beer. Punk IPA charges the barricades to fly its colours from the ramparts – full-on, full-flavour; at full-throttle. Layered with new world hops to create an explosion of tropical fruit and an all-out riot of grapefruit, pineapple and lychee before a spiky bitter finish, this is transatlantic fusion running at the fences of lost empires. Nothing will ever be the same again.', 'IPA', 5.6, 35, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (5, 'Dead Pony Club', 'Dead Pony is the invigorating surf that pounds the iridescent shoreline yards from the salt-encrusted asphalt of Route 1. The hop-heavy west-coast wonderland awaits. Dive in and the toasted malt base soon yields to a huge box-fresh hop hit, washing tropical fruit, floral garlands and spicy undertones all over your palate. Inspired by US-Style pale ales, Dead Pony is a low amplitude, high voltage hop hit; California dreaming for the craft beer generation.', 'Session Pale Ale', 3.8, 40, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (5, 'Jet Black Heart', 'Flaked oats and wheat add to the velvet mouth-feel, with the carbonation adding a honeycomb texture. Magnum and Sorachi Ace bring a berry & citrus fruitiness that amplifies the chocolate character of this inky leviathan.', 'Oatmeal Milk Stout', 4.7, 30, 'Goblet');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (5, 'Elvis Juice', 'An American IPA with a bitter edge that will push your citrus tolerance to the brink and back; Elvis Juice is loaded with tart pithy grapefruit peel.', 'Grapefruit IPA', 6.5, 40, 'Pint');

-- BEER: North High
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'Pale Ale', 'Easy drinking dry-hopped pale ale, showcasing aromas of tropical fruit, citrus and herbs. Drinks like a session IPA, but with the body to balance the hops.', 'Pale Ale', 5.5, 29, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'IPA', 'An American IPA with aggressive bitterness, floral and citrusy hop aromas balanced with a biscuity maltiness.', 'IPA', 6.8, 66, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'Milk Stout', 'Strong roasted malt character of this beer is supported by the creamy sweetness of lactose added during the kettle boil. Available as a nitrogenated keg, which pushes the smoothness of the finish to the next level.', 'Milk Stout', 5.3, 14, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'Hefeweizen', 'Our hefeweizen is a sessionable German wheat beer with light and refreshing hints of cloves and bananas. Historically, this style has been linked to summers in the biergarten, but our sells strongly all year long, regardless of the weather.', 'Hefeweizen', 5.1, 9, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'Honey Wheat Lager', 'Light body, orange hues and a smooth finish develop from brewing with a special honey malt and orange blossom honey.', 'Lager', 5.8, 28, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'Wildcard', 'A balanced and unique English ale aged with a kiss of vanilla beans. Available only as nitrogenated keg to pour creamy smooth in the English cask ale style.', 'English Ale', 6.3, 20, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'Jalalima', 'A super-fresh aroma of jalapeños is complimented by the tang of a splash of lime juice.', 'Jalapeno Ale', 5.9, 16, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'Grapefruit Walleye', 'The dank pungency of Citra hops is amplified by a hearty dose of grapefruit juice. The result is a blast of effervescent citrus tang.', 'Session IPA', 4.7, 48, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'Oktoberfest', 'Fun fact: The contents of three of these cans will fill a 1 liter beer stein very nicely.', 'Marzen', 5.6, 50, 'Stein');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (6, 'Tree Tapper', 'A nutty and toast brown ale brewed with Ohio-made maple syrup. Not too sweet but incredibly smooth.', 'Brown Ale', 6.2, 21, 'Pint');

-- BEER: WOLF's RIDGE


-- BEER: ACTUAL 
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Magnon', 'This magnificent india pale ale is synchronized to collectively excite a fruity tropical hop and a dank herbaceous hop in the same magnetic moment. Propagate a spin wave in your mouth.', 'IPA', 7.3, 65, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Luxon', 'This luxurious golden saison ale is gilded with the precious phenolics and esters of a saison yeast, yet within its luminous flux you’ll find an unusual clarity. Transmute a golden treasure into yourself.', 'Saison Ale', 5.6, 5, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Fat Julian', 'This bittersweet imperial stout is reminiscent of leathery elephants dipped in dark chocolate. It barely fits in your mouth. Here’s to big, delicious challenges.', 'Imperial Stout', 10.0, 45, 'Goblet');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Conductor', 'This harmonious imperial IPA is composed with precision and rye. Malts make early overtures, and experimental hops arrive right on time, conveying an elegant bitterness that promptly departs again.', 'Imperial Rye IPA', 8.1, 47, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Thermal Conductor', 'This temperate habanero IPA couples bright fruity hops with piquant peppers to engineer a simmering heat that gradually builds up steam without blowing your stack. Hop aboard the rare pepper beer that conducts flavor as well as heat.', 'Habanero IPA', 8.1, 47, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Curiosus', 'This curiously tart wheat beer was sour-mashed for 24 hours in pursuit of knowledge. The results remain unclear and sparkling. A virtuous weisse with a charming sour bite.', 'Berliner Weisse', 5.2, 5, 'Mug');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Elektron', 'This crackling amber ale is charged with rye and Ohio-grown Cascade hops. The Greeks called amber “elektron” because they recognized its attractive potential. We hope our amber excites your particles, too.', 'Amber Rye', 6.2, 27, 'Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Orthodox', 'This hearty winter IPA resists the urge to spice it up. Roasty malts and musky hops take center stage in this salute to the traditionalist who believes beer shouldn’t taste like pie.', 'Winter IPA', 6.9, 44, 'Nonic Pint');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Wiener-München', 'This jaunty fall festival lager is inspired by some of the world’s best parties: Oktoberfest and your own backyard. Vienna and Munich malts mingle with noble hops for a world class autumnal rumpus fresh from Columbus, Ohio.', 'Festival Lager', 6.3, 22, 'Mug');
INSERT INTO beer(brewery_id, name, description, beer_type, abv, ibu, glass_type) VALUES (8, 'Eccentricity', 'This unusual french ale plots a bold trajectory. Its quirky character revolves around a distinctive biere de garde yeast and the subtle burn of fresh ginger and black pepper. We hope it pulls your mouth into our peculiar orbit.', 'French Ale', 5.1, 22, 'Tulip');


-- REVIEW
INSERT INTO review(beer_id, user_id, description, rating) VALUES (1, 1, 'Greens Keeper is the perfect beer for a "relaxing" day on the links. ', 5);


COMMIT;