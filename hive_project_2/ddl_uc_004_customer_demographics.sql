--We create a bucket table for implementation of bucketed joins

create table customer_demographics_bucket
(
customer_id int,
City string,
lat float,
long float,
country string,
iso2 string,
state string

)
clustered by (customer_id) into 4 buckets
row format delimited
fields terminated by ',';

insert overwrite table customer_demographics_bucket select * from customer_demographics;
