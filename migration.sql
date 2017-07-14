DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS awards;

CREATE TABLE movies (
  id INT SERIAL DEFAULT VALUE,
  title TEXT,
  duration INT,
  rating VARCHAR(10),
  genre TEXT,
  is_3d BOOLEAN NOT NULL,
  released_at TIMESTAMP,
  score NUMERIC(3, 1)
);

CREATE TABLE awards(
  id INT SERIAL DEFAULT VALUE,
  movie_id INT,
  kind VARCHAR(140),
  name text
);

DESC awards;

INSERT INTO movies (title, duration, rating, genre, is_3d, released_at, score) VALUES ('Frozen', 102, 'PG', 'Animation', TRUE, '2013-11-27 00:00:00', 7.6);
