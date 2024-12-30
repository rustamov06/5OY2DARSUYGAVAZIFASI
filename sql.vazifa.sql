--  === Departments jadvali ===
CREATE TABLE Departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);
SELECT * FROM Departments;


--  === Employees jadvali ===
CREATE TABLE Employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50) NOT NULL,
    department_id INT,
    CONSTRAINT fk_department FOREIGN KEY (department_id)
    REFERENCES Departments(id) ON DELETE SET NULL
);

SELECT * FROM Employees;

-- === Projects jadvali ===
CREATE TABLE Projects (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    department_id INT,
    CONSTRAINT fk_project_department FOREIGN KEY (department_id)
    REFERENCES Departments(id) ON DELETE CASCADE
);

SELECT * FROM Projects


-- === Tasks jadvali ===
CREATE TABLE Tasks (
    id SERIAL PRIMARY KEY,
    description TEXT NOT NULL,
    project_id INT,
    employee_id INT,
    CONSTRAINT fk_task_project FOREIGN KEY (project_id)
    REFERENCES Projects(id) ON DELETE CASCADE,
    CONSTRAINT fk_task_employee FOREIGN KEY (employee_id)
    REFERENCES Employees(id) ON DELETE SET NULL
);


SELECT * FROM Tasks


-- ===================================================================


--  2 vazifa

ALTER TABLE Employees
ADD COLUMN email VARCHAR(100);
ALTER TABLE Tasks
ALTER COLUMN description TYPE VARCHAR(255);



-- ===================================================================

--  3 vazifa


UPDATE Employees
SET position = 'Senior Developer'
WHERE id = 1;

--  ====


UPDATE Projects
SET title = 'New Project Title'
WHERE id = 2;




--  =====================================================================


-- 4 vazifa

DELETE FROM Projects
WHERE id = 3;


-- ======


DELETE FROM Employees
WHERE id = 4;
