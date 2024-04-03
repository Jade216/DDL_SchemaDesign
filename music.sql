-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20),
)

CREATE TABLE album
(
  id SERIAL PRIMARY KEY,
  title TEXT,
  release_date DATE,
  artists_id INT REFERENCES artists(artists_id)
)

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  artists_id INT REFERENCES artists(artists_id)
  album_id INT REFERENCES album(album_id)
);

