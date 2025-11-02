-- name: GetSaleByID :one
SELECT * FROM sales
WHERE id = $1 LIMIT 1;

-- name: ListSales :many
SELECT * FROM sales
ORDER BY sale_date;

-- name: CreateSale :one
INSERT INTO sales (
  sale_date
) VALUES (
  $1
)
RETURNING *;