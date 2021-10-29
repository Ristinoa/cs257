olympics.schema.sql

Author: A.J. Ristino

A .txt file containing all of the SQL queries
for the 10/15 lab

# CREATE TABLE STATEMENTS #

CREATE TABLE athletes(
athlete_id integer,
athlete_name text,
sex text);

CREATE TABLE noc(
noc_id integer,
team_name text,
noc_name text);

CREATE TABLE sport(
sport_id SERIAL,
event text);

CREATE TABLE game(
game_id integer,
game text,
year integer,
season text,
city text);

CREATE TABLE medal(
medal_id integer,
medal_type text);

CREATE TABLE connector(
athlete_id integer,
noc_id integer,
sport_id integer,
game_id integer,
medal_id  integer,);

# SELECT STATEMENTS #

LIST ALL NOCS IN ALPHABETICAL ORDER BY ABBREVIATION:

SELECT * FROM noc ORDER BY team_name ASC;

LIST OF ALL ALL ATHLETES FROM KENYA:

SELECT athletes.athlete_name, noc.noc_name
FROM noc, athletes, connector
WHERE connector.noc_id = noc.noc_id
AND connector.athlete_id = athletes.athlete_id
AND noc.noc_name  = 'KEN';

LIST OF MEDALS WON BY GREG LOUGANIS:

SELECT athlete_name, medal_type, year
FROM athletes, medal, game, connector
WHERE connector.athlete_id = athletes.athlete_id
AND connector.medal_id = medal.medal_id
AND connector.game_id = game.game_id
AND medal.medal_id <> 1
AND athletes.athlete_name = 'Gregory Efthimios "Greg" Louganis'
ORDER BY game.year;
