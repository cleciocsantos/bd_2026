SELECT *
FROM invoice_items
WHERE InvoiceId IN (
    SELECT InvoiceId
    FROM invoices
    WHERE CustomerId IN (
        SELECT CustomerId
        FROM customers
        WHERE state = 'SP'
    )
);