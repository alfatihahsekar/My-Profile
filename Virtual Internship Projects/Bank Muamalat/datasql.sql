SELECT
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    ROUND(SUM(p.Price * o.Quantity), 2) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city
FROM
    `bankmuamalat-425302.muamlatintern.orders` o
    JOIN `bankmuamalat-425302.muamlatintern.customer` c ON o.CustomerID = c.CustomerID
    JOIN `bankmuamalat-425302.muamlatintern.products` p ON o.ProdNumber = p.ProdNumber
    JOIN `bankmuamalat-425302.muamlatintern.productcategory` pc ON p.Category = pc.CategoryID
GROUP BY
    o.Date,
    pc.CategoryName,
    p.ProdName,
    p.Price,
    o.Quantity,
    c.CustomerEmail,
    c.CustomerCity
ORDER BY
    o.Date ASC;
