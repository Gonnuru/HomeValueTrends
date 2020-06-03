/*How would you describe the trend in home values for each state from from 2007 to 2017? 
Which states would you recommend for making real estate investments?*/

WITH base as(
SELECT state, avg(value) as 'BaseYear'
FROM home_value_data
WHERE substr(date, 1, 4) = '2007'
GROUP BY 1),

test as(
SELECT state, avg(value) as 'TestYear'
FROM home_value_data
WHERE substr(date, 1, 4) = '2017'
GROUP BY 1),

calculation as (
SELECT base.state, round(((TestYear / BaseYear) * 100) - 100, 2) as 'Trend'
from base, test
group by 1)


select state, trend,
CASE
when trend > 150 then 'Recommend'
else 'not recommend'
end as 'verdict'
from calculation
GROUP by 1;