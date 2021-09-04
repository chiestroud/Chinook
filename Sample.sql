-----------------------
--Subqueries-----------
-----------------------
--nesting one of more queries inside another one
-- subquery, and correlated subquery are the two main categories

-- artists and their longest track

-- joining to a subquery
select *
from Artist a
left outer join ( select ArtistId, max(milliseconds) LogestSongLength
		from track t
			join Album a 
				on a.AlbumId = t.AlbumId
		group by ArtistId
) maxSong
	on a.ArtistId = maxSong.ArtistId

--correlated subquery in the select

select a.ArtistId, 
	   a.name,
	   ( select max(Milliseconds) LongestSongLength
	   From track t
		join Album al
			on al.AlbumId = t.AlbumId
		where al.ArtistId = a.ArtistId
	   group by ArtistId
	   )
from Artist a


--which artists have no tracks
-- correlated subquery in the where clause
select *
from Artist a
where not exists (
select *
from track t
	join Album al
		on al.AlbumId = t.AlbumId
where al.ArtistId = a.ArtistId
)

--regular subquery
select *
from Artist a
where ArtistId not in (
	select ArtistId
	from track t
		join Album al
			on al.AlbumId = t.AlbumId
)

--------------------------------
--- UNION, EXCEPT, UNION ALL----
--------------------------------
-- combining/comparing two or more resultsets that may or may not have anything in common
-- must have the same number of columns
select Email, 'Employee' as [type]
from Employee
union 
select Email, 'Customer' as [type]
from Customer

--except operator

select ArtistId
from Artist a
except 
select ArtistId
from Album

--intersect, gives the middle portion of the venn diagram
select ArtistId
from Artist a
intersect
select ArtistId
from Album

select left(FirstName, 1)
from Employee
intersect --all of the shared first letter of the first name between employee and customer
select left(FirstName, 1)
from Customer

select left(FirstName, 1)
from Employee
union -- distinctive combination
select left(FirstName, 1)
from Customer

select left(FirstName, 1)
from Employee
union all -- all of the results
select left(FirstName, 1)
from Customer

select left(FirstName, 1)
from Employee
except -- no match found everything overlaps
select left(FirstName, 1)
from Customer