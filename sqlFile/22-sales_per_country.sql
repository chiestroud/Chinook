-- sales_per_country.sql: Provide a query that shows the total sales per country.

select BillingCountry, SUM(total) [Total Sales Per Country]
from Invoice
group by BillingCountry