DROP TABLE IF EXISTS films_with_actors;
DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS actors;


CREATE TABLE films (
  film_id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  genre VARCHAR(255)
);

CREATE TABLE actors (
  actor_id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  age INT4
);

CREATE TABLE films_with_actors (
  id_films_actors SERIAL4 PRIMARY KEY,
  film_id INT4 REFERENCES films(film_id) ON DELETE CASCADE,
  actor_id INT4 REFERENCES actors(actor_id) ON DELETE CASCADE,
  year INT4
);