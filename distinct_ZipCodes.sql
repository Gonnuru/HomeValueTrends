/*How many distinct zip codes are in this dataset?*/


SELECT count(DISTINCT zip_code) as 'Distinct zip_code', state
from home_value_data;