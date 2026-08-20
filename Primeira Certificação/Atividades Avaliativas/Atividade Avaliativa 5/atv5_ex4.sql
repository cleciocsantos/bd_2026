SELECT customers.FirstName || ' ' || customers.LastName as Cliente, 
employees.FirstName  || ' ' || employees.LastName as 'Representante de suporte'
FROM customers
INNER JOIN employees
ON customers.SupportRepId = employees.EmployeeId;