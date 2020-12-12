select  region , sum(GDP) as total_gdp_region 
from gdp as g 
join countries as c 
on g.country_code = c.country_code 
where year = 2019 
GROUP BY region 
order by total_gdp_region desc