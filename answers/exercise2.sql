Write a Query that returns the city, state and number of instances of all of the `FALSE` or `NULL` timezones.

SELECT distinct city, state, COUNT(timezone)
FROM zipcodes
WHERE timezone = 'FALSE'
OR timezone IS NULL
GROUP BY city, state
ORDER BY city, state