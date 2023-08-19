CREATE DATABASE IF NOT EXISTS TO_DO_LIST;
USE TO_DO_LIST;
CREATE TABLE tasks(
task_id INT AUTO_INCREMENT PRIMARY KEY,
task_name VARCHAR(100) NULL,
description TEXT,
due_date DATE NULL,
status VARCHAR(50) NOT NULL
);

-- DESCRIBE tasks;

INSERT INTO tasks(task_name, description,due_date,status)
VALUES('work ', 'go to a interview', '2023-08-27', 'pending'),
('break', 'go to another country ,to get free moments', '2023-08-28', 'pending'),
('metting', 'mett the team to work on great project ', '2023-08-21', 'pending'),
('pool', 'take a breath with my firends  ', '2023-08-23', 'pending'),
('courses', 'go to the school  ', '2023-08-18', 'completed');

--  reket yo  
SELECT * FROM tasks;
SELECT * FROM tasks WHERE status='pending';
SELECT * FROM tasks WHERE  due_date BETWEEN NOW() AND DATE_ADD(NOW() , INTERVAL 7 DAY);
SELECT * FROM tasks WHERE status='completed';


ALTER TABLE tasks ADD priority INT;
UPDATE tasks SET priority=1 WHERE task_id=1;
UPDATE tasks SET priority=3 WHERE task_id=2;
UPDATE tasks SET priority=3 WHERE task_id=3;
UPDATE tasks SET priority=4 WHERE task_id=4;
UPDATE tasks SET priority=2 WHERE task_id=5;
UPDATE tasks SET priority=4 WHERE task_id=7;
UPDATE tasks SET priority=1 WHERE task_name='break';
UPDATE tasks SET priority=4 WHERE task_name='courses';
UPDATE tasks SET priority='completed' WHERE task_name='break';
CREATE TABLE categories(
categorie_id INT AUTO_INCREMENT PRIMARY KEY,
cat_name VARCHAR(50),
task_id INT 
);
ALTER TABLE categories 
ADD FOREIGN KEY (task_id) REFERENCES tasks(task_id);
SELECT * FROM tasks WHERE priority=1;

DELETE FROM tasks WHERE status="completed"
