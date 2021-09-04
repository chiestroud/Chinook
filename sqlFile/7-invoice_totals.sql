-- invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

select i.Total, c.FirstName customerFirstName, c.LastName customerLastName, c.Country, e.FirstName AgentFirstName, e.LastName AgnetLastName
from Invoice i
join Customer c
on i.CustomerId = c.CustomerId
join Employee e
on c.SupportRepId = e.EmployeeId