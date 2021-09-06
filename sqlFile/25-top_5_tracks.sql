--top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs.

select TOP(5) t.TrackId, t.Name, SUM(i.Total) Total
from Invoice i
	join InvoiceLine il
	on i.InvoiceId = il.InvoiceId
	join Track t
	on il.TrackId = t.TrackId
group by t.TrackId, t.Name
order by Total desc