/* which states have the highest average home values? How about the lowest? */

select state, round(avg(value), 2) as 'average value', min(value) as 'Min Value' 
from home_value_data
where date = (select max(date) from home_value_data)
group by 1;