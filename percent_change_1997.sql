/* What is the percent change in average home values from 1997 to 2017?*/

with old as(
SELECT state, avg(value) as old_value
from home_value_data
where substr(date, 1, 4) = '1997'
group by 1),

new as (
select state, avg(value) as new_value
from home_value_data
where substr(date, 1, 4) = '2017'
group by 1)

select old.state, round((((new_value - old_value)/old_value)*100), 2) as 'Percent Change'
from old, new
group by 1;