-- top_country.sql: Which country's customers spent the most?

select TOP(1) SUM(Total) [Money Spent], BillingCountry
from Invoice 
group by BillingCountry
order by [Money Spent] desc
