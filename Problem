trade_di: --commercial data
Buyer_id --equal to member_id
Item_id
Seller_id
GMV
Date --yyyymmdd

dim_item: --items description
Item_id
Item_name
Category_id
Category_name

dim_seller: --sellers description
Seller_id
Seller_name
Seller_type

app_traffic_di: --data on traffic using phone (android, ios)
Member_id
Channel --single traffic source per each member_id & date
Date --yyyymmdd

web_traffic_di: --data on traffic using all other types
Member_id
Channel --single traffic source per each member_id & date
Date --yyyymmdd
"
1. Find biggest traffic channel by unique member_id count in november 2020
2. Find biggest traffic channel by GMV value in november 2020
3. Provide monthly GMV sum and unique buyer count with split by seller_type & monthly total starting from 2020.11.01 on buyers who
	-coming from biggest traffic channels in terms of member_id count or GMV value in november 2020 (tasks 1 & 2)
	-bought something in category_name "Jeans" or "Phones" during first half of 2020
4. Provide top-100 seller and top-100 item separete requests by GMV in nov 20 with YoY (Year over year) and MoM (Month over Month) value using "ios" channel
5. Provide monthly cumulative unique buyer count starting from nov20 in total and using "ios" channel
"
