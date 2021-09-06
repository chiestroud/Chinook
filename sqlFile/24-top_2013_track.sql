--top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

select TOP(1) SUM(track.Total) [Total Spent], track.TrackId, track.Name
from 
(
select il.TrackId, t.Name, i.Total, i.InvoiceDate
from InvoiceLine il
join Track t
on il.TrackId = t.TrackId
join Invoice i
on il.InvoiceId = i.InvoiceId
where YEAR(i.InvoiceDate) = 2013
) track
group by track.TrackId, track.Name
order by [Total Spent] desc