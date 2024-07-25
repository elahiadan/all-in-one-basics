<!-- QUERY 01 WITH ALL USER DETAILS -->

SELECT \* FROM employees
WHERE salary = (
SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees)
);

<!-- QUERY 02 ONLY FOR SALARY -->

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

<!-- QUERY 03 ONLY FOR SALARY -->

SELECT \*
FROM employees
ORDER By salary DESC
LIMIT 1,1;

<!-- QUERY 04 ONLY FOR SALARY -->
<!-- (CTE stand for Common Table Expression) -->

SELECT \*, ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn FROM employees;
WITH cate as (SELECT \*, ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn FROM employees)
SELECT \* FROM cate WHERE rn =2;

<!-- QUERY 04 ONLY FOR SALARY WITH GROUP BY -->
<!-- (CTE stand for Common Table Expression) -->

WITH cte as (SELECT \*, ROW\*NUMBER() OVER (PARTITION BY gender ORDER BY salary DESC) AS rn FROM employees)
SELECT \* FROM cte WHERE rn =2;

<!-- QUERY 05 calculates the cumulative sum of salaries partitioned by gender. -->
<!-- (CTE stand for Common Table Expression) -->

WITH cte as (SELECT \*,
SUM(salary) OVER (PARTITION BY gender ORDER BY gender, salary) AS sumsalary,
CASE WHEN (SUM(salary) OVER (PARTITION BY gender ORDER BY gender, salary)) > 35000 THEN 1 ELSE 0 END AS is_less_than
FROM employees)
SELECT \* FROM cte WHERE is_less_than = 1;

<!-- Query 06 | STUDENTS WITH THEIR SUBJECTS COUNT-->

SELECT students.name AS student_name, COUNT(student_subjects.student_id) AS total_subjects
FROM students
LEFT JOIN student_subjects ON student_subjects.student_id = students.id
LEFT JOIN subjects ON subjects.id = student_subjects.subject_id
GROUP BY students.id, students.name
ORDER BY total_subjects DESC;

<!-- Query 07 | STUDENTS MORE THAN 10 SUBJECT-->

SELECT students.name as student_name, COUNT(student_subjects.student_id) as total_sujects
from students
LEFT JOIN student_subjects on student_subjects.student_id=students.id
LEFT JOIN subjects on subjects.id=student_subjects.subject_id
GROUP BY student_subjects.student_id
HAVING COUNT(student_subjects.student_id)>10;

<!-- Query 08 | TOP 5 STUDENT BY HAVING HIGHEST SUBJECT-->

SELECT students.name AS student_name, COUNT(student_subjects.student_id) AS total_subjects
FROM students
LEFT JOIN student_subjects ON student_subjects.student_id = students.id
LEFT JOIN subjects ON subjects.id = student_subjects.subject_id
GROUP BY students.id, students.name
ORDER BY total_subjects DESC
LIMIT 5;

<!-- Query 09 | TOP 5 VENDOR WITH THEIR PRODUCT BY SOLD-->

SELECT \*, SUM(orders.qty) as top
FROM orders
GROUP BY user_id
ORDER BY top DESC
LIMIT 5;

<!-- most revenue generated products  -->

SELECT _, COUNT(_)as count, SUM(qty) as quant, SUM(qty\*price) as newprice FROM `orders` GROUP BY name ORDER BY newprice DESC;

<!-- most selling product -->
SELECT _, COUNT(_)as count, SUM(qty) as quant, SUM(qty\*price) as newprice FROM `orders` GROUP BY name ORDER BY quant DESC;

<!-- revenue with cte -->
WITH cte as (SELECT p.name, p.price, o.qty, o.qty*p.price as bill FROM orders as o LEFT JOIN products as p ON p.name = o.name) SELECT *, SUM(qty) as qty1, SUM(bill) as bill1 FROM cte GROUP BY name ORDER BY bill1 DESC; 

<!-- second highest revenue with cte -->
WITH cte1 as (WITH cte as (SELECT p.name, p.price, o.qty, o.qty*p.price as bill FROM orders as o LEFT JOIN products as p ON p.name = o.name)
SELECT *, SUM(qty) as qty1, SUM(bill) as bill1 FROM cte GROUP BY name ORDER BY bill1 DESC)
SELECT * FROM cte1 WHERE bill1 = (SELECT max(bill1) FROM cte1 WHERE bill1 < (SELECT max(bill1) FROM cte1));


WITH cte2 AS 
(WITH cte as (SELECT p.name, p.price, o.qty, o.qty*p.price as bill FROM orders as o LEFT JOIN products as p ON p.name = o.name)
SELECT *, SUM(qty) as qty1, SUM(bill) as bill1, dense_rank() over(ORDER BY bill1 DESC) as rnk FROM cte GROUP BY name ORDER BY rnk)
SELECT * FROM cte2 WHERE rnk = 2;


WITH cte AS ( SELECT *, ROW_NUMBER() over(PARTITION BY category_id ORDER BY id) AS rn FROM products ) 
SELECT * FROM cte;


<!-- DATE EXTRACT -->
SELECT *, extract(year FROM date) as Year, extract(month from date) as Month, extract(day from date) as Day FROM `orders`;

SELECT name, price, date, month(date) as Month,day(date) as Day, SUM(price) as total FROM `orders` GROUP BY day HAVING total>20000;

SELECT name, DATE_FORMAT(date, '%b') AS Month, DATE_FORMAT(date, '%d') AS Day, SUM(price) AS total FROM orders GROUP BY DATE_FORMAT(date, '%Y-%m-%d') HAVING SUM(price) > 20000;