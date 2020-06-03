/*What range of years are represented in the data?*/

SELECT min(substr(date, 1, 4)) as 'Min Year', max(substr(date, 1, 4)) as 'Max Year'
from home_value_data;