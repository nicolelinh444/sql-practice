-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

SELECT * FROM crime_scene WHERE date LIKE '198%';

76	19851120	theft	Blue Note Lounge	A briefcase containing sensitive documents vanished. A witness reported a man in a trench coat with a scar on his left cheek fleeing the scene.

  SELECT * FROM suspects WHERE attire LIKE 'trench coat';

id	name	attire	scar
3	Frankie Lombardi	trench coat	left cheek
183	Vincent Malone	trench coat	left cheek
237	Christopher Black	trench coat	right cheek

Frankie and Vincent both wore a trench coat with a scar on left cheek. Their id # is 3 & 183

3	NULL
183	I wasn’t going to steal it, but I did.

Vincent Malone confessed to the crime.


