select  country_name , year ,  round(gdp/1000000) gdp
from gdp as g 
join countries as c 
on g.country_code = c.country_code
where country_name in ('Japan', 'China') and  year < 2020