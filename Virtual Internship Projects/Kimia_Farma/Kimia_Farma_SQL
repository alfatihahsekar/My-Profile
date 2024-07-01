/*
Author: Sekar Ayu Alfatihah
Date: 01/07/2024
Tool used: BigQuery
*/

/*
--------------------------
CREATE TABEL
--------------------------
*/
CREATE TABLE data_transaction AS
SELECT 
q.transaction_id, q.date, q.branch_id, w.branch_name,w.kota, w.provinsi, w.rating AS rating_percabang , q.customer_name, q.product_id, e.product_name, e.price AS actual_price,q.discount_percentage,
CASE 
  WHEN q.price <= 50000 THEN 0.10
  WHEN q.price > 50000 AND q.price <= 100000 THEN 0.15
  WHEN q.price > 100000 AND q.price <= 300000 THEN 0.20
  WHEN q.price > 300000 AND q.price <= 500000 THEN 0.25
  WHEN q.price > 500000 THEN 0.30
END AS gross_percentage,
q.price AS nett_sales,
q.price * (
  CASE
  WHEN q.price <= 50000 THEN 0.10
  WHEN q.price > 50000 AND q.price <= 100000 THEN 0.15
  WHEN q.price > 100000 AND q.price <= 300000 THEN 0.20
  WHEN q.price > 300000 AND q.price <= 500000 THEN 0.25
  WHEN q.price > 500000 THEN 0.30
  END 
) AS nett_profit,
q.rating AS rating_transaksi
FROM 
`kimia-farma-123.kimiafarma.kf-final-transaction` q
JOIN
`kimia-farma-123.kimiafarma.kf_kantor_cabang` w ON q.branch_id = w.branch_id
JOIN
`kimia-farma-123.kimiafarma.kf_product` e ON q.product_id = e.product_id;
