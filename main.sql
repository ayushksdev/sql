
-- CREATE TABLE students (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     age INT
-- );

-- INSERT INTO students (name, age)
-- VALUES
--     ('Ayush', 20),
--     ('Rahul', 21),
--     ('Priya', 22);

-- SELECT * FROM students;


-- DEPARTMENTS TABLE
-- CREATE TABLE departments(
--     department_id SERIAL PRIMARY KEY,
--     department_name VARCHAR(50) NOT NULL
-- );

-- -- INSERTING DATA INTO DEPARTMENTS TABLE
-- INSERT INTO departments (department_name)
-- VALUES
--     ('Sales'),
--     ('Marketing'),
--     ('HR');

-- INSERT INTO departments (department_id, department_name)
-- VALUES
--     (4, 'Finance');

-- -- FETCHING DATA FROM DEPARTMENTS TABLE
-- SELECT * FROM departments;

CREATE TABLE employee(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    phone VARCHAR(20) UNIQUE,
    bio VARCHAR(100),
    job_title VARCHAR(20) NOT NULL,
    salary INT NOT NULL CHECK( salary > 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    hire_date DATE NOT NULL,
    last_login TIMESTAMP,
    employee_status VARCHAR(20) NOT NULL DEFAULT 'active'
                    CHECK(
                        employee_status IN ('active', 'on_leave', 'terminated')
                    ),
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    department_id INT REFERENCES departments(department_id),
    manager_id INT REFERENCES employee(employee_id)
);