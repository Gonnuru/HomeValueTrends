/*Using the most recent month of data available, what is the range of estimated home values across the nation?*/

SELECT DISTINCT state, MIN(value) as 'Min Value', MAX(value) AS 'Max Value'
FROM home_value_data
WHERE date = (SELECT MAX(date) FROM home_value_data)
GROUP BY 1;