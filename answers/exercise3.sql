Write a Query that finds the correct value for the missing timezones based on shared city, state or city, state, and county.

select distinct city,state,timezone
from zipcodes
right join (
    select *
    from zipcodes
    where (timezone = 'FALSE') or
          timezone = NULL
    ) as x
on zipcodes.city = x. city and
   zipcodes.state = x.state
where (zipcodes.timezone <> 'FALSE') OR
      (zipcodes.timezone <> NULL);



