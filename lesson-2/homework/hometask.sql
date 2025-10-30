--Basic-Level Tasks (10)
--Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).

CREATE table Employees (EmpID INT ,NAME VARCHAR(50), Salary DECIMAL(10, 2));

--2
INSERT INTO Employees (EmpID,Name,salary)
values(1, 'Oybek sultonov', 5000.00)
insert into employees(empID, name, salary)
values(2, 'jonibek satarov', 6000.00)\

--3
 INSERT into employees(empID, name, salary)
values(3,  'ali hojiyev', 7500.00);

--4
UPDATE EMPLOYEES
SET SALARY = 7000
WHERE EMPID = 1;
DELETE FROM EMPLOYEES 
WHERE EmpID = 2 

--5
DELETE - JADVALDAGI ma`lumotlarni o`chirish uchun ishlatiladi,lekin jadvalning tuzilmasi saqlanib qoladi.
truncate - jadvaldagi barcha ma`lumotlarni o`chiradi, lekin jadvajning o`zi saqlanib qoladi.
DROP - jadvalni butunlay o`chiradi, yani ma`lumotlar ham, jadvaalning o`zi ham yo`qoladi.

--6
--alter table employees modify column name varchar(100);

--7
--alter table employees ADD Departament varchar(10);
 

--8
--ALTER TABLE employees alter column salary FLOAT;

--9
CREATE TABLE DEPARTMENS (DepartmentID INT PRIMARY KEY, DEPARTAMENTNAME VARCHAR(50));

--10
TRUNCATE TABLE EMPLOYEES;

--11
create table departaments (departament_id INT, DEPARTAMENT_name varchar(50));

--12
insert into temp_departaments (departament_id, departament_name) values (1, 'it'), (2, 'hr'), (3, 'finance'), (4, 'marketing'), (5, 'sales');
INSERT INTO Departments (department_id, department_name)
SELECT department_id, department_name FROM (VALUES (1, 'IT'), (2, 'HR'), (3, 'Finance'), (4, 'Marketing'), (5, 'Sales')) AS temp_departments(department_id, department_name);
--update  employees  set departament = 'managment' where salary > 5000;

--13
--truncate table employees

--14
--alter table employees drop column departament;

--15
 --exec sp_rename 'employees', 'staffmembers';

 --16
 --drop table departaments;

 --17
 CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

--18
ALTER TABLE Products
ADD CONSTRAINT CHK_Price CHECK (Price > 0);

--19
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;

--20
--exec sp_rename 'products.categor', 'productcategory', 'column';

--21
--insert into products (productid, productname, productcategory, price, stockquantity) values (1, 'laptop', 'electronics', 1200.00, 30), (2, 'phone', 'electromics', 800.00, 50), (3, 'table', 'furniture', 150.00, 20), (4, 'chair', 'furniture', 85.00, 40), (5, 'headphones', 'accessories', 100.00, 60);

--22
SELECT *
INTO Products_Backup
FROM Products;

--23
EXEC sp_rename 'Products', 'Inventory';

--24
--alter table inventory alter column price float;

--25
--alter table inventory add productcode int indentity(1000, 5);
