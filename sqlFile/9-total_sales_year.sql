--total_sales_year.sql: What are the respective total sales for each of those years?

select sum(Total) [2009 Total Sales]
from Invoice
where InvoiceDate LIKE '%2009%'

select sum(Total) [2011 Total Sales]
from Invoice
where InvoiceDate LIKE '%2011%'