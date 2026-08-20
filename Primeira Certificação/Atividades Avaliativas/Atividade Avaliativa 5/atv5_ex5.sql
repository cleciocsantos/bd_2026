SELECT employees.FirstName  || ' ' || employees.LastName as Funcionário,
    COUNT(customers.CustomerId) as 'Quantidade de clientes'
FROM employees
INNER JOIN customers
ON customers.SupportRepId = employees.EmployeeId
GROUP BY employees.EmployeeId
ORDER BY COUNT(customers.CustomerId) DESC;