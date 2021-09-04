/* sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name. */

select e.EmployeeId, e.LastName, e.FirstName, i.InvoiceId, i.InvoiceDate, i.BillingCountry, i.Total
from Employee e
join Customer c
on e.EmployeeId = c.SupportRepId
join Invoice i
on c.CustomerId = i.CustomerId
