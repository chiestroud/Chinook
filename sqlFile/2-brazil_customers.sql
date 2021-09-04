--brazil_customers.sql: Provide a query only showing the Customers from Brazil.


select *
from Customer
where Country = 'Brazil'