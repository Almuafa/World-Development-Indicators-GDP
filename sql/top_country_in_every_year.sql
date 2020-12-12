select region , year , country_name , round(gdp/1000000) gdp
from (
select region , year , country_name , gdp , dense_rank() over (partition by region,year order by gdp desc) top_country
from gdp as g 
join countries as c 
on g.country_code = c.country_code
where region = 'East Asia & Pacific' and year <> 2020
)where top_country = 1