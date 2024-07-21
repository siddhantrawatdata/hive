with 
    total_left_customer as (
select 
    count(customerid) as total_churned_customers
 from 
    telecom_customer_churn_data
where 
    churn='Yes'
)

select 
  InternetService,
  sum(case when churn='Yes' then 1 else 0 end ) as churn_per_internet_Service,
  round((sum(case when churn='Yes' then 1 else 0 end )/total_churned_customers ) * 100,2) as percentage
from 
    telecom_customer_churn_data , total_left_customer
group by 
  InternetService,total_churned_customers
order by 
  InternetService;
