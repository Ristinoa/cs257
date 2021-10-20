# CREATE TABLE STATEMENTS #

CREATE TABLE athletes(
id SERIAL,
athlete_id integer,
athlete_name text);

CREATE TABLE noc(
noc_id integer,
team_name text,
noc_name text);

CREATE TABLE sport(
sport_id SERIAL,
event text);

CREATE TABLE game(
game_id integer,
game text);

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
