/* A cláusula BETWEEN retorna resultados que estejam "entre" dois valores especificados. */

-- A consulta abaixo retorna faturas (invoices) que tenham o total entre 14.91 e 18.86.
SELECT
    InvoiceId,
    BillingAddress,
    Total
FROM
    invoices
WHERE
    Total BETWEEN 14.91 and 18.86    
ORDER BY
    Total; 

-- A consulta abaixo retorna faturas (invoices) que o total NÃO ESTEJA entre 1 e 20.
SELECT
    InvoiceId,
    BillingAddress,
    Total
FROM
    invoices
WHERE
    Total NOT BETWEEN 1 and 20
ORDER BY
    Total;    

-- A consulta abaixo retorna faturas (invoices) emitidas entre 01/01/2010 e 31/01/2010.
SELECT
    InvoiceId,
    BillingAddress,
    InvoiceDate,
    Total
FROM
    invoices
WHERE
    InvoiceDate BETWEEN '2010-01-01' AND '2010-01-31'
ORDER BY
    InvoiceDate;    

-- A consulta abaixo retorna faturas (invoices) que NÃO FORAM emitidas entre 03/01/2009 e 01/12/2013.
SELECT
    InvoiceId,
    BillingAddress,
    date(InvoiceDate) InvoiceDate,
    Total
FROM
    invoices
WHERE
    InvoiceDate NOT BETWEEN '2009-01-03' AND '2013-12-01'
ORDER BY
    InvoiceDate;
