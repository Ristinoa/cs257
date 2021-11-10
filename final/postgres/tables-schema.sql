tables-schema.sql

Authors:

    A.J. Ristino

    Julian Bowers

Order of Schema:

    I. Album table

    II. Artist table

    III. Release date table

    IV. Connector table

I:

CREATE TABLE albums(
id integer,
name text,
genres text,
descs text,
avrating float,
numratings integer,
numreviews integer);

\copy albums FROM 'albums.csv' DELIMITER ',' CSV NULL AS 'NULL'

II:

CREATE TABLE artists(
id integer,
name text);

\copy artists FROM 'artists.csv' DELIMITER ',' CSV NULL AS 'NULL'

III:

CREATE TABLE reldates(
id integer,
date text);

\copy reldates FROM 'reldates.csv' DELIMITER ',' CSV NULL AS 'NULL'

IV:

CREATE TABLE connector(
album_id integer,
artist_id integer,
reldate_id integer);

\copy connector FROM 'connector.csv' DELIMITER ',' CSV NULL AS 'NULL'
