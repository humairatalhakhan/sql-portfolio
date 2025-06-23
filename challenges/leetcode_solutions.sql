-- 1. LeetCode 175: Combine Two Tables
SELECT p.FirstName, p.LastName, a.City, a.State
FROM Person p
LEFT JOIN Address a ON p.PersonId = a.PersonId;

-- 2. LeetCode 176: Second Highest Salary
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);

-- 3. LeetCode 177: Nth Highest Salary
SELECT (
    SELECT DISTINCT Salary
    FROM Employee
    ORDER BY Salary DESC
    LIMIT 1 OFFSET 1
) AS NthHighestSalary;

-- 4. LeetCode 178: Rank Scores
SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM Scores;

-- 5. LeetCode 180: Consecutive Numbers
SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l1.Id = l2.Id - 1 AND l2.Id = l3.Id - 1
AND l1.Num = l2.Num AND l2.Num = l3.Num;

-- 6. LeetCode 181: Employees Earning More Than Their Managers
SELECT e.Name AS Employee
FROM Employee e
JOIN Employee m ON e.ManagerId = m.Id
WHERE e.Salary > m.Salary;

-- 7. LeetCode 182: Duplicate Emails
SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;

-- 8. LeetCode 183: Customers Who Never Order
SELECT Name AS Customers
FROM Customers
WHERE Id NOT IN (SELECT CustomerId FROM Orders);

-- 9. LeetCode 184: Department Highest Salary
SELECT d.Name AS Department, e.Name AS Employee, e.Salary
FROM Employee e
JOIN Department d ON e.DepartmentId = d.Id
WHERE (e.DepartmentId, e.Salary) IN (
    SELECT DepartmentId, MAX(Salary)
    FROM Employee
    GROUP BY DepartmentId
);

-- 10. LeetCode 196: Delete Duplicate Emails
DELETE p1
FROM Person p1
INNER JOIN Person p2
WHERE p1.Email = p2.Email AND p1.Id > p2.Id;
