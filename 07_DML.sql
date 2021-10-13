--DML 작업

-- 데이터 입력 INSERT
INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES (300, 'Game', 100, 1700);

SELECT *
FROM departments
WHERE department_id = 300;

DESCRIBE departments;

INSERT INTO departments(department_id, department_name)
values (280, 'Music');

SELECT *
FROM departments
WHERE department_id = 280;

INSERT INTO employees
values (207, 'jb', 'Kim', 'JBKIM', '515.129.1234', SYSDATE, 'IT_PROG', 9999, NULL, 205, 300);

SELECT *
FROM employees
WHERE employee_id = 207;

INSERT ALL INTO departments(department_id, department_name, manager_id, location_id)
VALUES (271, 'Sample Dept 1', 200, 1700)
INTO departments(department_id, department_name, manager_id, location_id)
VALUES (272, 'Sample Dept 2', 200, 1700)
INTO departments(department_id, department_name, manager_id, location_id)
VALUES (273, 'Sample Dept 3', 200, 1700)
SELECT * FROM DUAL;

CREATE TABLE copy_departments( department_id number(4,0),
                                department_name varchar2(30 byte),
                                manager_id number(6,0),
                                location_id number(4,0));
INSERT INTO copy_departments
SELECT*FROM departments;

-- 데이터의 수정 UPDATE
UPDATE departments
SET manager_id = 200
WHERE department_name = 'Game';

UPDATE departments
SET manager_id = 100
WHERE department_id BETWEEN 150 AND 200;

SELECT * FROM departments;

--두개 이상 열을 업데이트
UPDATE departments
SET manager_id = 100, location_id = 1800
WHERE department_name = 'Game';

--데이터의 삭제 DELETE
DELETE FROM departments
WHERE department_name LIKE '%Sample%';

SELECT CONSTRAINT_NAME, TABLE_NAME, R_CONSTRAINT_NAME
  FROM USER_CONSTRAINTS
 WHERE CONSTRAINT_NAME = 'EMP_DEPT_FK';
