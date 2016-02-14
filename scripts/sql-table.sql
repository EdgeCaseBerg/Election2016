-- run cp ../data/primaries.csv /tmp/ before running this

CREATE DATABASE IF NOT EXISTS election2016;

USE election2016;

CREATE TABLE IF NOT EXISTS primaries (
	state CHAR(2),
	candidate VARCHAR(32),
	party CHAR(3),
	votes INT,
	percentagevote DOUBLE,
	delegates INT,
	notes VARCHAR(512)
);

CREATE OR REPLACE VIEW votetotal AS
SELECT candidate, SUM(votes) AS votes, SUM(delegates) AS delegates FROM
primaries GROUP BY candidate;

CREATE OR REPLACE VIEW partytotal AS
SELECT party, SUM(VOTES) AS votes FROM primaries GROUP BY party;

TRUNCATE primaries;
LOAD DATA INFILE '/tmp/primaries.csv'
INTO TABLE primaries
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
