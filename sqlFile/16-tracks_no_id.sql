--tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

select t.Name AlbumName, mt.Name [Media type], g.Name Genre 
from Track t
join MediaType mt
on t.MediaTypeId = mt.MediaTypeId
join Genre g
on t.GenreId = g.GenreId