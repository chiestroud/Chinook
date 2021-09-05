--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

select il.InvoiceLineId, il.InvoiceId, il.TrackId, il.UnitPrice, il.Quantity, t.Name
from InvoiceLine il
join Track t
on il.TrackId = t.TrackId
