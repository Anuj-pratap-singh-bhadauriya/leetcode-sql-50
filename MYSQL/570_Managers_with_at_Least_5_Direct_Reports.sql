-- LeetCode 570: Managers with at Least 5 Direct Reports
-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/


SELECT
    m.name
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
GROUP BY
    m.id,
    m.name
HAVING COUNT(*) >= 5;