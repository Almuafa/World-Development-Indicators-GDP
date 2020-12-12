
select * 
from gdp g
join countries as c 
on g.country_code = c.country_code
where year = 2019 
order by GDP DESC 
limit 10;