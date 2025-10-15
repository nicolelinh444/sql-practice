-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

SELECT * FROM crime_scene WHERE date = '19830715';

id	date	type	location	description
65	19830715	theft	West Hollywood Records	A prized vinyl record was stolen from the store during a busy evening.

id	crime_scene_id	clue
28	65	I saw a man wearing a red bandana rushing out of the store.
75	65	The main thing I remember is that he had a distinctive gold watch on his wrist.

id	name	bandana_color	accessory
35	Tony Ramirez	red	gold watch
44	Mickey Rivera	red	gold watch
97	Rico Delgado	red	gold watch

35	I wasn't anywhere near West Hollywood Records that night.
44	I was busy with my music career; I have nothing to do with this theft.
97	I couldn't help it. I snapped and took the record.

Rico Delgado confessed to the crime.
