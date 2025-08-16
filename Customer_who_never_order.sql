select c.name "Customers"
FROM customers c
where not exists (select customerId from Orders o where o.customerId = c.Id);
