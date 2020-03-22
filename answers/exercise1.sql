use postal
show tables
Write a Query that returns all the unique state names.

SELECT DISTINCT state
from postal.zipcodes;

Write a Query that returns all the Counties by State on separate lines.

SELECT state,county
from postal.zipcodes
order by state;

Write a Query that returns all the Counties by state, as a concatenated string.

SELECT concat(state,', ',county)
from postal.zipcodes
order by state;

Write a Query that returns number of Counties by state.

SELECT state, COUNT(county)
from postal.zipcodes
group by state
order by state;

Write a Query that returns all of the individual timezones.

SELECT DISTINCT timezone
from postal.zipcodes
order by timezone;

Write a Query that returns the zipcode, city, state, and county of all of the `FALSE` or `NULL` timezones.

select zip, city, state, county, timezone
from postal.zipcodes;
where timezone = 'FALSE' or timezone IS NULL;


