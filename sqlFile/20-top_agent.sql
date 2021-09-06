--top_agent.sql: Which sales agent made the most in sales over all?

select TOP(1) SUM(rep.Total) [Total Sales], rep.SalesAgentName
from
(
	select i.*, c.SupportRepId, concat(e.FirstName, ' ', e.LastName) SalesAgentName
	from Invoice i
	join Customer c
	on i.CustomerId = c.CustomerId
	join Employee e
	on c.SupportRepId = e.EmployeeId
) rep
group by rep.SalesAgentName
order by [Total Sales] desc