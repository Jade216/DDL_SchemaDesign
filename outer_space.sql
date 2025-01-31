-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
  galaxy_id REFERENCES galaxy(galaxy_id),
  moons TEXT[]
);

CREATE TABLE galaxy
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  type TEXT,
  number_of_stars INT,
)