-- LeetCode 1327: List the Products Ordered in a Period
-- https://leetcode.com/problems/list-the-products-ordered-in-a-period/


SELECT
    p.product_name,
    SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE YEAR(o.order_date) = 2020
  AND MONTH(o.order_date) = 2
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;