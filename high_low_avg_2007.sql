/* Which states have the highest/lowest average home values for the year of 2007? */

with average_table as(
SELECT state, round(avg(value), 0) as Averages
FROM home_value_data
where substr(date, 1, 4) = '2007'
GROUP BY 1
order by 2 desc)

SELECT * from average_table
where (Averages = (SELECT max(averages) from average_table) or averages = (SELECT min(averages) from average_table)); 



