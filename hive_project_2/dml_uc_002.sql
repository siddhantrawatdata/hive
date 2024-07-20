select 
contract,
avg(MonthlyCharges) as avg_monthly_charges 
from 
telecom_customer_churn_data_partition
group by contract;
