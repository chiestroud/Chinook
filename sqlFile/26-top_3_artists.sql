-- top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

select TOP(3) t.Composer, SUM(i.Total) Sales
from Invoice i
join InvoiceLine il
on i.InvoiceId = il.InvoiceId
join Track t
on t.TrackId = il.TrackId
WHERE t.Composer is not NULL
group by t.Composer
order by Sales desc