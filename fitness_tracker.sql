-- Create and select the database
CREATE DATABASE IF NOT EXISTS fitness_tracker;
USE fitness_tracker;

-- Employees table
CREATE TABLE IF NOT EXISTS employees (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
department VARCHAR(100) NOT NULL
);

-- Activities table
CREATE TABLE IF NOT EXISTS activities (
id INT AUTO_INCREMENT PRIMARY KEY,
employee_id INT NOT NULL,
activity_type VARCHAR(50) NOT NULL, -- 'Running', 'Swimming', 'Workout'
value DOUBLE NOT NULL, -- steps for Running, hours for others
activity_date DATE NOT NULL,
FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- Insert 12 predefined employees
INSERT INTO employees (name, department) VALUES
('Alice Johnson', 'Engineering'),
('Bob Smith', 'Marketing'),
('Carol White', 'HR'),
('David Brown', 'Finance'),
('Emma Davis', 'Engineering'),
('Frank Miller', 'Sales'),
('Grace Wilson', 'Operations'),
('Henry Moore', 'Engineering'),
('Isabella Taylor', 'Marketing'),
('James Anderson', 'Finance'),
('Karen Thomas', 'HR'),
('Liam Jackson', 'Sales');

-- Insert some sample activity data
INSERT INTO activities (employee_id, activity_type, value, activity_date) VALUES
(1, 'Running', 5000, '2025-06-01'),
(1, 'Swimming', 1.5, '2025-06-02'),
(2, 'Workout', 2.0, '2025-06-01'),
(2, 'Running', 8000, '2025-06-03'),
(3, 'Swimming', 2.0, '2025-06-01'),
(3, 'Workout', 1.5, '2025-06-02'),
(4, 'Running', 12000, '2025-06-01'),
(4, 'Running', 9000, '2025-06-03'),
(5, 'Workout', 3.0, '2025-06-02'),
(5, 'Swimming', 2.5, '2025-06-03'),
(6, 'Running', 15000, '2025-06-01'),
(6, 'Workout', 2.0, '2025-06-02'),
(7, 'Swimming', 3.0, '2025-06-01'),
(8, 'Running', 6000, '2025-06-02'),
(8, 'Workout', 1.0, '2025-06-03'),
(9, 'Swimming', 1.0, '2025-06-01'),
(9, 'Running', 11000, '2025-06-02'),
(10, 'Workout', 2.5, '2025-06-01'),
(11, 'Running', 7000, '2025-06-03'),
(12, 'Swimming', 2.0, '2025-06-02');