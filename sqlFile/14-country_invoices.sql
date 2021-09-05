--country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

select BillingCountry, count(*) [# of Invoices]
from Invoice
group by BillingCountry