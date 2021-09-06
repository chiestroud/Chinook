--top_media_type.sql: Provide a query that shows the most purchased Media Type

select TOP(1) m.Name, SUM(i.Total) Total
from Invoice i
	join InvoiceLine il
	on i.InvoiceId = il.InvoiceId
	join Track t
	on il.TrackId = t.TrackId
	join MediaType m
	on t.MediaTypeId = m.MediaTypeId
group by m.Name
order by Total desc