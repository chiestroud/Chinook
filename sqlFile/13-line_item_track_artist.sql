--line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

select il.InvoiceLineId, il.InvoiceId, il.TrackId, il.UnitPrice, il.Quantity, t.Name, t.Composer Artist
from InvoiceLine il
join Track t
on il.TrackId = t.TrackId
