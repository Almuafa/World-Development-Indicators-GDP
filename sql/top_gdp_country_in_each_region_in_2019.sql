select * from (
select region, country_name, round(gdp/1000000) gdp, rank() over (partition by region order by gdp desc) number
from gdp as g 
join countries as c 
on g.country_code = c.country_code
where year = 2019 
) where number = 1;