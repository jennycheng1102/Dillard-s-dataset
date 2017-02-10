#Exercise 1 :show how many distint dates are there for each year/month combination
select distinct (extract(year from saledate))||
(extract(month from saledate)) as ym, count(distinct (extract(day from saledate)))  as days
from trnsact
group by ym;
order by ym;
