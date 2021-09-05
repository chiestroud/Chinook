--invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

select * 
from Invoice i
	join
	(select InvoiceId, count(*) [# of line item]
		from InvoiceLine
		group by InvoiceId) il
on i.InvoiceId = il.InvoiceId
