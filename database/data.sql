-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

-- INSERT statements go here

-- USERS
INSERT INTO users(username, password, role) VALUES (admin_user, password1, admin);

-- BREWERY
INSERT INTO brewery(username, password, role) VALUES (admin_user, password1, admin);

-- BEER
INSERT INTO beer(username, password, role) VALUES (admin_user, password1, admin);

-- REVIEW
INSERT INTO review(username, password, role) VALUES (admin_user, password1, admin);

-- LOCATION
INSERT INTO location(username, password, role) VALUES (admin_user, password1, admin);

COMMIT;