use anime

select * from anime
order by rank

--top 10 anime
select
top 10
rank, name, rating
from anime
order by rank

--type of anime
select distinct(type), count(type) numbertype
from anime
group by type

--Amount of Anime that release each year\
select distinct(release_year), count(release_year) as amountinyear
from anime 
group by release_year
order by 1

--Studio that creates the most anime
select top 20
studio, count(studio) as studiocreated
from anime 
group by studio
order by studiocreated desc


select top 20
studio,round(avg(rating),2) from anime
group by studio
order by avg(rating) desc
