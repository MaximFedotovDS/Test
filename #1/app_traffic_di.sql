CREATE TABLE app_traffic_di (
member_id Integer,
channel Varchar(40),
date Date
);
INSERT INTO public.app_traffic_di (member_id,channel,"date") VALUES
	 (1,'ios','2020-11-20'),
	 (2,'ios','2020-11-20'),
	 (3,'ios','2020-11-20'),
	 (1,'ios','2020-11-20'),
	 (2,'ios','2021-11-20'),
	 (2,'ios','2020-11-20'),
	 (1,'ios','2020-11-20'),
	 (4,'android','2021-11-20'),
	 (5,'android','2020-11-20'),
	 (5,'android','2020-11-20');
INSERT INTO public.app_traffic_di (member_id,channel,"date") VALUES
	 (5,'android','2021-11-20');
