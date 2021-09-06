--sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.


select cust.Agent, COUNT(cust.Customer) [# of Customer Assigned]
from
(
select concat(c.FirstName, ' ', c.LastName) Customer, concat(e.FirstName, ' ', e.LastName) Agent
from Customer c
join Employee e
on c.SupportRepId = e.EmployeeId
) cust
group by cust.Agent