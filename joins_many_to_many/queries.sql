SELECT victims.name, zombies.name, bitings.infected_on FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id
INNER JOIN zombies
ON  zombies.id = bitings.victim_id;

-- SELECT * FROM victims;
-- SELECT * FROM bitings;
-- SELECT * FROM zombies;

-- victim_id, anything with '_' is singlular.

-- victims.name = charcter names, zombies.name = creator name,
-- bitings.infected = date
