DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INTEGER,
    hire_date DATE
);

INSERT INTO Employees (id, name, department, salary, hire_date) VALUES
(1, 'Alice', 'HR', 50000, '2020-01-10'),
(2, 'Bob', 'IT', 65000, '2019-03-15'),
(3, 'Charlie', 'Finance', 70000, '2021-06-01'),
(4, 'David', 'IT', 60000, '2018-07-20'),
(5, 'Eve', 'HR', 55000, '2022-02-11');


SELECT * FROM Employees;


SELECT * FROM Employees WHERE department = 'IT';


SELECT * FROM Employees WHERE department = 'IT' AND salary > 60000;



SELECT * FROM Employees WHERE department = 'HR' OR department = 'Finance';


SELECT name, department FROM Employees;


SELECT * FROM Employees WHERE name LIKE 'A%';


SELECT * FROM Employees WHERE name LIKE '%a%';


SELECT * FROM Employees WHERE salary BETWEEN 55000 AND 70000;



SELECT * FROM Employees ORDER BY id LIMIT 3;


SELECT * FROM Employees ORDER BY salary DESC;



SELECT name AS EmployeeName, salary AS AnnualSalary FROM Employees;


SELECT DISTINCT department FROM Employees;


SELECT * FROM Employees WHERE id IN (1,3,5);


SELECT name, department, salary
FROM Employees
WHERE department = 'IT' AND salary > 50000
ORDER BY salary;
