--playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.

select p.PlaylistId, p.Name, count(*) [Total # of tracks]
from Playlist p
join PlaylistTrack pt
on p.PlaylistId = pt.PlaylistId
group by p.PlaylistId, p.Name