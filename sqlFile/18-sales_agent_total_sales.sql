--sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.


select rep.SupportRepId, rep.SalesAgent,
SUM(rep.Total) [Total Sales]
from
(
	select i.*, c.SupportRepId, concat(e.FirstName, ' ', e.LastName) SalesAgent
	from Invoice i
	join Customer c
	on i.CustomerId = c.CustomerId
	join Employee e
	on c.SupportRepId = e.EmployeeId
) rep
group by rep.SupportRepId, rep.SalesAgent