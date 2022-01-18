select
	Item_name,
	sum_nov,
	sum_okt,
	sum_nov / sum_okt * 100 as MoM
from
	(
	select
		Item_id,
		sum(gmv) as sum_nov
	from
		trade_di td
	where
		extract(year
	from
		date) = 2020
		and extract(month
	from
		date) = 11
		and buyer_id in (
		select
			member_id
		from
			app_traffic_di
		where
			Channel = 'ios')
	group by
		seller_id) as a
join 
(
	select
		Item_id,
		sum(gmv) as sum_okt
	from
		trade_di td
	where
		extract(year
	from
		date) = 2020
		and extract(month
	from
		date) = 10
		and buyer_id in (
		select
			member_id
		from
			app_traffic_di
		where
			Channel = 'ios')
	group by
		seller_id) as b on
	a.seller_id = b.seller_id
join dim_item as di on
	di.Item_id = a.Item_id
order by
	sum_nov desc
limit 100;
