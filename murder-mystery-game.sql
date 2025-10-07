-- Record your SQL detective process here!  Write down: 
--   1. The SQL queries you ran
--   2. Any notes or insights as SQL comments
--   3. Your final conclusion: who did it?

-- Using these SQL clauses will help you solve the mystery: 
--    SELECT, FROM, WHERE, AND, OR, ORDER BY, LIMIT, LIKE, DISTINCT, BETWEEN, AS

-- selects all from crime scene report
-- SELECT * FROM crime_scene_report;

-- select type-murder from crime scene report
-- SELECT * FROM crime_scene_report WHERE type = 'murder';

-- select murders from crime scene report that occurred in SQL city
-- Security footage shows that there were 2 witnesses. 
-- The first witness lives at the last house on "Northwestern Dr". 
-- The second witness, named Annabel, lives somewhere on "Franklin Ave".

-- select all from person where address includes northwestern in order by street number
-- SELECT * FROM person 
-- WHERE address_street_name LIKE '%Northwestern%' 
-- ORDER BY address_number DESC;
-- 14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949

-- SELECT * FROM person
-- WHERE name LIKE '%Annabel%';
-- 16371	Annabel Miller	490173	103	Franklin Ave	318771143

-- SELECT * FROM interview
-- WHERE person_id = 16371;
-- I saw the murder happen, and I recognized the killer from my gym 
-- when I was working out last week on January the 9th.

-- SELECT * FROM interview
-- WHERE person_id = 14887;
-- SELECT * FROM interview
-- I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. 
-- The membership number on the bag started with "48Z". 
-- Only gold members have those bags. 
-- The man got into a car with a plate that included "H42W".

-- See how date is set up in the get fit now check in table
-- SELECT * FROM get_fit_now_check_in;

-- get members that checked in on january 9th whose membership ids include 48Z
-- SELECT * FROM get_fit_now_check_in
--WHERE check_in_date LIKE '%0109%' AND membership_id LIKE '%48Z%';
-- membership ids that match - 48Z7A and 48Z55

-- SELECT * FROM get_fit_now_member WHERE id = '48Z7A' OR id = '48Z55';
-- 48Z55	67318	Jeremy Bowers	20160101	gold
-- 48Z7A	28819	Joe Germuska	20160305	gold

-- SELECT * FROM person WHERE name = 'Jeremy Bowers' OR name = 'Joe Germuska';
-- 28819	Joe Germuska	173289	111	Fisk Rd	138909730
-- 67318	Jeremy Bowers	423327	530	Washington Pl, Apt 3A	871539279

-- 423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS

-- The killer must have been Jeremy Bowers

-- INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        -- SELECT value FROM solution;

-- SELECT * FROM interview WHERE person_id = 67318;
-- 	I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.

-- SELECT * FROM drivers_license WHERE gender = 'female' AND hair_color = 'red' AND car_make = 'Tesla' AND car_model = 'Model S';

-- 202298	68	66	green	red	female	500123	Tesla	Model S
-- 291182	65	66	blue	red	female	08CM64	Tesla	Model S
-- 918773	48	65	black	red	female	917UU3	Tesla	Model S

--SELECT * from facebook_event_checkin WHERE event_name = 'SQL Symphony Concert' AND date LIKE '%201712%' ORDER BY person_id DESC;
-- 99716 attended 3 times

-- SELECT * FROM person WHERE id = 99716;
-- 99716	Miranda Priestly	202298	1883	Golden Ave	987756388

-- INSERT INTO solution VALUES (1, 'Miranda Priestly');
        
        -- SELECT value FROM solution;

-- Congrats, you found the brains behind the murder! Everyone in SQL City hails you as the greatest SQL detective of all time. Time to break out the champagne!
