select
	Item_name,
	sum_cur_year,
	sum_prev_year,
	sum_cur_year / sum_prev_year * 100 as YoY
from
	(
	select
		Item_id,
		sum(gmv) as sum_cur_year
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
		sum(gmv) as sum_prev_year
	from
		trade_di td
	where
		extract(year
	from
		date) = 2019
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
		seller_id) as b on
	a.seller_id = b.seller_id
join dim_item as di on
	di.Item_id = a.Item_id
order by
	sum_cur_year desc
limit 100;
