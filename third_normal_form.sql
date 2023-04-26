CREATE TABLE types (
  pokedex_number TEXT PRIMARY KEY,
  type1 TEXT
);

CREATE TABLE pokemon_types (
  pokedex_number TEXT PRIMARY KEY,
  type2 TEXT
  FOREIGN KEY (pokedex_number) REFERENCES types(pokedex_number)
);

INSERT INTO types
SELECT pokedex_number, type1
FROM pokemon;

INSERT INTO pokemon_types
SELECT pokedex_number, type2
FROM pokemon;



