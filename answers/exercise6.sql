Write a Query that returns the city, state and number of instances of all of the timezones that have pipes (`|`) in them.

SELECT city, state, COUNT(timezone)
FROM zipcodes
WHERE timezone like '%|%'
GROUP BY city, state
ORDER BY city, state;