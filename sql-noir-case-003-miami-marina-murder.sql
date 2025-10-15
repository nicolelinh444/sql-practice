-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

SELECT * FROM crime_scene WHERE location LIKE 'Coral Bay Marina' AND date = 19860814;


43	19860814	Coral Bay Marina	
  The body of an unidentified man was found near the docks. 
  Two people were seen nearby: one who lives on 300ish "Ocean Drive" and 
  another whose first name ends with "ul" and his last name ends with "ez".

SELECT * FROM person WHERE address LIKE 'Ocean Drive' OR (name LIKE '%ul' OR name LIKE '%ez');

id	name	alias	occupation	address
101	Carlos Mendez	Los Ojos	Fisherman	369 Ocean Drive
102	Raul Gutierrez	The Cobra	Nightclub Owner	45 Sunset Ave
103	Luis Sanchez	Lucky Lou	Smuggler	88 Harbor St
104	Diego Ramirez	El Fuego	Contractor	101 Palm Blvd
105	Victor Martinez	Slick Vic	Bartender	33 Ocean Drive

Possible witnesses are
Carlos Mendez, Raul Guitierrez

SELECT * FROM interviews WHERE person_id = 101 OR person_id = 102;

id	person_id	transcript
101	101	I saw someone check into a hotel on August 13. The guy looked nervous.
103	102	I heard someone checked into a hotel with "Sunset" in the name.

SELECT * FROM surveillance_records INNER JOIN hotel_checkins ON surveillance_records.hotel_checkin_id = hotel_checkins.id
WHERE hotel_checkins.check_in_date = 19860813 AND hotel_checkins.hotel_name LIKE '%Sunset%';

Searched for the people whose activity sounded suspicious
SELECT * FROM confessions WHERE person_id = 15 OR person_id = 8 OR person_id = 6 OR person_id = 192;

73	8	Alright! I did it. I was paid to make sure he never left the marina alive.

  8	Thomas Brown	The Fox	Dock Worker	234 Port Street

