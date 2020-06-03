/*How many zip codes are from each state?*/

/*Easy*/

SELECT state, count(zip_code) as 'zip_code'
from home_value_data
GROUP BY state
ORDER BY 2 DESC;
