CREATE TABLE temp_table AS
SELECT abilities AS abilities, pokedex_number
FROM imported_pokemon_data;

CREATE TABLE ability AS
SELECT ability, trim(value) AS ability_trim, pokedex_number
FROM temp_table, json_each('["' || replace(abilities, ',', '","') || '"]')
WHERE ability <> ' ';

CREATE TABLE pokemon_ability AS
SELECT ability_trim, pokedex_number
FROM ability;

DROP TABLE ability;
DROP TABLE temp_table;

UPDATE pokemon_ability SET ability_trim = REPLACE(ability, '[', '');
UPDATE pokemon_ability SET ability_trim = REPLACE(ability, '''', '');
UPDATE pokemon_ability SET ability_trim = REPLACE(ability, ']', '');


CREATE TABLE pokemon AS
SELECT against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water, attack, base_egg_steps, base_happiness, base_total, capture_rate, classfication, defense, experience_growth, height_m, hp, percentage_male, pokedex_number, sp_attack, sp_defense, speed, type1, type2, weight_kg, generation, is_legendary
FROM imported_pokemon_data;
