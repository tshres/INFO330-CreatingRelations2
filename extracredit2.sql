CREATE TABLE trainer (
    trainer_id INTEGER NOT NULL,
    first_name VARCHAR(80),
    last_name VARCHAR(80)
);

CREATE TABLE favorite_pokemon_types (
    trainer_id INTEGER NOT NULL,
    type VARCHAR(80),
    PRIMARY KEY (trainer_id, type)
);

CREATE TABLE team (
    trainer_id INTEGER NOT NULL,
    pokemon_id TEXT NOT NULL,
    FOREIGN KEY (trainer_id) REFERENCES trainer(trainer_id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemon(pokedex_number)
);

INSERT INTO trainer (first_name, last_name) VALUES ('Ted', 'Neward');
INSERT INTO favorite_pokemon_types (trainer_id, type) VALUES (1, 'psychic');
INSERT INTO team (trainer_id, pokemon_id) VALUES (1, '83');

INSERT INTO trainer (first_name, last_name) VALUES ('Justin', 'Dong');
INSERT INTO favorite_pokemon_types (trainer_id, type) VALUES (2, 'bug');
INSERT INTO team (trainer_id, pokemon_id) VALUES (2, '24');

INSERT INTO trainer (first_name, last_name) VALUES ('Kaarina', 'Tulleau');
INSERT INTO favorite_pokemon_types (trainer_id, type) VALUES (2, 'water');
INSERT INTO team (trainer_id, pokemon_id) VALUES (2, '24');

INSERT INTO trainer (first_name, last_name) VALUES ('Terra', 'Shrestha');
INSERT INTO favorite_pokemon_types (trainer_id, type) VALUES (3, 'fairy');
INSERT INTO team (trainer_id, pokemon_id) VALUES (3, '75');