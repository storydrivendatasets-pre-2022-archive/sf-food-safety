.mode csv
.bail on
.echo on

-- drop/create new tables
.open ./data/processed/sf-food-safety.sqlite
.read ./src/dba/schema.sql

-- import the data
.changes on
.import ./data/raw/businesses_plus.csv business
.import ./data/raw/inspections_plus.csv inspection
.import ./data/raw/violations_plus.csv violation


-- index the data
.read ./src/dba/indexes.sql


-- remove the repeated headers
DELETE FROM business WHERE business_id = 'business_id';
DELETE FROM inspection WHERE business_id = 'business_id';
DELETE FROM violation WHERE business_id = 'business_id';
