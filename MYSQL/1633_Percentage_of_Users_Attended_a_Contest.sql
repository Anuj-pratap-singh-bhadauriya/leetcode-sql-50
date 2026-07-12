-- LeetCode 1633: Percentage of Users Attended a Contest
-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/


SELECT contest_id, ROUND(COUNT(user_id)*100/(SELECT COUNT(*) FROM Users),2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY  percentage DESC, r.contest_id ASC;