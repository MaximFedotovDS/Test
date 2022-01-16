select
	year1,
	month1,
	count1,
	count2
from
	(
	select
		extract(year
	from
		trade_di.date) as year1,
		extract(month
	from
		trade_di.date) as month1,
		count(distinct buyer_id) as count1
	from
		trade_di
	left join app_traffic_di on
		trade_di.buyer_id = app_traffic_di.member_id
	left join web_traffic_di on
		trade_di.buyer_id = web_traffic_di.member_id
	and trade_di.date > to_date('20-11-2020', 'dd-mm-yyyy')
group by
	extract(year
from
	trade_di.date),
	extract(month
from
	trade_di.date)) as tbl1
join
(
	select
		extract(year
	from
		trade_di.date) as year2,
		extract(month
	from
		trade_di.date) as month2,
		count(distinct buyer_id) as count2
	from
		trade_di
	left join app_traffic_di on
		trade_di.buyer_id = app_traffic_di.member_id
	left join web_traffic_di on
		trade_di.buyer_id = web_traffic_di.member_id
	where
		trade_di.buyer_id in (
		select
			app_traffic_di.member_id
		from
			app_traffic_di
		where
			channel = 'ios')
	and trade_di.date > to_date('20-11-2020', 'dd-mm-yyyy')
	group by
		extract(year
	from
		trade_di.date),
		extract(month
	from
		trade_di.date)) as tbl2
on
	tbl1.year1 = tbl2.year2
	and tbl1.month1 = tbl2.month2
