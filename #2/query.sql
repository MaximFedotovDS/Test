select
	distinct channel
from
	web_traffic_di wtd
where
	member_id = 
(
	select
		Buyer_id
	from
		trade_di
	where
		extract(year
	from
		date) = 2020
		and extract(month
	from
		date) = 10
	group by
		buyer_id
	order by
		sum(gmv) desc
	limit 1
)
union all
select
	distinct channel
from
	app_traffic_di atd
where
	member_id = 
(
	select
		Buyer_id
	from
		trade_di
	where
		extract(year
	from
		date) = 2020
		and extract(month
	from
		date) = 10
	group by
		buyer_id
	order by
		sum(gmv) desc
	limit 1
)

#выведет opera
