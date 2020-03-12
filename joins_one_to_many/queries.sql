SELECT colour FROM lightsabers;

SELECT lightsabers.colour FROM lightsabers;

SELECT characters.* FROM characters;


-- select everything from the characters table where they match on character.id and lightsabers.character_id
SELECT characters.* FROM characters
INNER JOIN lightsabers
ON characters.id = lightsabers.character_id;


-- select everything from both tables (can use just * instead as well)
SELECT characters.*, lightsabers.* FROM characters
  INNER JOIN lightsabers
  ON characters.id = lightsabers.character_id;

---- just the characters from both tables
-- SELECT characters.name, lightsabers.colour FROM characters INNER JOIN lightsabers ON characters.id = lightsabers.character_id;
SELECT characters.name, lightsabers.colour FROM characters LEFT JOIN lightsabers ON characters.id = lightsabers.character_id;
