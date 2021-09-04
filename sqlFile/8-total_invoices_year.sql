--total_invoices_year.sql: How many Invoices were there in 2009 and 2011?

select count(*) [Invoice 2019]
from Invoice
where InvoiceDate LIKE '%2009%'


select count(*) [Invoice 2011]
from Invoice
where InvoiceDate LIKE '%2011%'

