--The below code snipped will load the data present in the HDFS location '/tmp/CustomerDemographics.csv' into the table
create table customer_demographics
(
customer_id int,
City string,
lat float,
long float,
country string,
iso2 string,
state string

)
row format delimited
fields terminated by ',' ;

load data inpath '/tmp/CustomerDemographics.csv' into table customer_demographics;
