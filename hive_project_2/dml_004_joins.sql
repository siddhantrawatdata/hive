
--Bucket map join
--The conditions we need to set, so hive can know what joins needed to be performed
set hive.optimize.bucketmapjoin=true; 
SET hive.auto.convert.join=true;

select *
from 
customer_demographics_bucket cd 
join telecom_customer_churn_data_bucket_2 tcd 
on cd.customer_ID=tcd.customerid ;

--Sort merge bucket join
--The conditions we need to set, so hive can know what joins needed to be performed
set hive.auto.convert.sortmerge.join=true; 
set hive.optimize.bucketmapjoin.sortedmerge = true;

select *
from 
customer_demographics_bucket cd 
join telecom_customer_churn_data_bucket_2 tcd 
on cd.customer_ID=tcd.customerid ;

--Map join 
--The conditions we need to set, so hive can know what joins needed to be performed
SET hive.auto.convert.join=true; 

select *
from 
customer_demographics cd 
join telecom_customer_churn_data tcd 
on cd.customer_ID=tcd.customerid ;
