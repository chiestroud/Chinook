--top_2009_agent.sql: Which sales agent made the most in sales in 2009? HINT: TOP

select TOP(1) SUM(rep.Total) [2009 Total Sales], rep.SalesAgentName
from
(
	select i.*, c.SupportRepId, concat(e.FirstName, ' ', e.LastName) SalesAgentName
	from Invoice i
	join Customer c
	on i.CustomerId = c.CustomerId
	join Employee e
	on c.SupportRepId = e.EmployeeId
	where i.InvoiceDate LIKE '%2009%'
) rep
group by rep.SalesAgentName
order by [2009 Total Sales] desc