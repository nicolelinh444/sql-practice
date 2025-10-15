-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

SELECT * FROM crime_scene WHERE location LIKE '%Fontainebleau%';

48	19870520	Fontainebleau Hotel	The Heart of Atlantis necklace disappeared. 
  Many guests were questioned but only two of them gave valuable clues. 
  One of them is a really famous actor. 
  The other one is a woman who works as a consultant for a big company and her first name ends with "an".

SELECT * FROM guest WHERE occupation LIKE 'actor' OR occupation LIKE 'consultant' ORDER BY occupation;

116	Vivian Nair	Consultant	VIP-R

43	Ruby Baker	Actor	VIP-R
129	Clint Eastwood	Actor	VIP-G
164	River Bowers	Actor	VIP-B
189	Sage Dillon	Actor	VIP-G
192	Phoenix Pitts	Actor	VIP-G

SELECT * FROM witness_statements WHERE guest_id = 43 OR guest_id = 129 OR guest_id = 164 OR guest_id = 189 OR guest_id = 192 OR guest_id = 116;
16	116	I saw someone holding an invitation ending with "-R". He was wearing a navy suit and a white tie.
50	129	I overheard someone say, "Meet me at the marina, dock 3."

SELECT * FROM attire_registry INNER JOIN marina_rentals 
ON attire_registry.guest_id = marina_rentals.renter_guest_id 
  WHERE attire_registry.note LIKE 'navy suit, white tie' 
  AND (marina_rentals.dock_number = 3 AND rental_date = 19870520);

-- used renter_guest_id to find answer
  
SELECT * FROM final_interviews WHERE guest_id = 112 OR guest_id = 145 OR guest_id = 167 OR guest_id = 190 OR guest_id = 105;

105	105	I was the one who took the crystal. I guess I need a lawyer now?

SELECT * FROM guest WHERE id = 105;

105	Mike Manning	Wealth Reallocation Expert	VIP-R

