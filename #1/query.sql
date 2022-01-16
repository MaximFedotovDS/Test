select
		channel,
		count(distinct member_id)
from
		web_traffic_di
where
		extract (year
from
		Date) = 2020
	and extract(month
from
		Date) = 11
group by
		channel
union all
	select
		channel,
		count(distinct member_id)
from
		app_traffic_di
where
		extract (year
from
		Date) = 2020
	and extract(month
from
		Date) = 11
group by
		channel
order by
		count desc
limit 1;


#Выведет:
№ opera	4
