--where 절
SELECT *
FROM employees
WHERE salary > 14000;

SELECT *
FROM employees
WHERE last_name = 'King';

SELECT *
FROM employees
WHERE hire_date < '02/06/10'; --날짜를 비교. 고용일이 2002년 6월 10일 이전

--예제1
SELECT *
FROM employees
WHERE employee_id = 100;
--예제2
SELECT *
FROM employees
WHERE first_name = 'David';
--예제3
SELECT *
FROM employees
where employee_id <= 105;
--예제4
SELECT *
FROM job_history
WHERE start_date >= '06/03/03';
--예제5
SELECT *
FROM departments
WHERE location_id<>1700;

--논리 연산자 AND OR NOT
SELECT last_name, department_id, salary
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 60
    OR (DEPARTMENT_ID = 80
    AND SALARY > 10000);
SELECT *
FROM employees
WHERE NOT ( hire_date > '2004/01/01' OR salary > 5000 );

--예제1
SELECT *
FROM employees
WHERE salary > 4000
    AND job_id='IT_PROG';

--예제2
SELECT *
FROM employees
WHERE salary > 4000
    AND (job_id='IT_PROG'
    OR job_id='FI_ACCOUNT');
    
-- IN 연산자 ()안의 값과 같을 때 OR로 연결
SELECT *
FROM employees
WHERE salary IN ( 4000, 3000, 2700 );

--예제 1 
SELECT *
FROM employees
WHERE salary IN ( 10000, 17000, 24000 );

--예제 2
SELECT *
FROM employees
WHERE department_id NOT IN( 30, 50, 80, 100, 110);

--BETWEEN 연산자
SELECT *
FROM employees
WHERE salary BETWEEN 9000 AND 10000;

--예제 1
SELECT *
FROM employees
WHERE salary BETWEEN 10000 and 20000;
--예제2
SELECT *
FROM employees
WHERE hire_date BETWEEN '2004/01/01' and '2004/12/30';
--예제3
SELECT *
FROM employees
WHERE salary NOT BETWEEN 7000 AND 17000;

--LIKE 연산자 _ %를 같이 사용해서 문자열을 검색
SELECT *
FROM employees
WHERE last_name LIKE 'B%'; -- 대문자 B로 시작 뒤에는 상관없음
SELECT *
FROM employees
WHERE last_name LIKE '%b%'; --문자열의 중간이 b가 있으면 전부 출력
SELECT *
FROM employees
WHERE last_name LIKE '____y'; -- 언더바(_) 정확한 자릿수를 표현

--예제1
SELECT *
FROM employees
WHERE job_id LIKE '%AD%';

--예제2
SELECT *
FROM employees
WHERE job_id LIKE '%AD___';

--예제3
SELECT *
FROM employees
WHERE phone_number LIKE '%1234';

--예제4
SELECT *
FROM employees
WHERE phone_number NOT LIKE '%3%' AND phone_number LIKE '%9';

--예제5
SELECT *
FROM employees
WHERE job_id LIKE '%MGR%' OR job_id LIKE '%ASST%';

--IS NULL
SELECT commission_pct FROM employees;
-- 널(NULL) 이란?
--입력되지 않은 사용할 수 없는 값이고 0 또는 공백('')이 아니다.
--널값을 검색하기 위해 IS NULL 을 사용
SELECT * FROM employees WHERE commission_pct is NULL;
--널값이 아닐 경우면 찾을 때 IS NOT NULL
SELECT * FROM employees WHERE commission_pct is NOT NULL;

-- ORDER BY 열 + ASC or DESC 열의 오름차순 내림차순 정렬
SELECT * FROM employees ORDER BY employee_id DESC;
SELECT * FROM employees ORDER BY employee_id; -- ASC 기본정렬은 생략가능

--정렬 열이 2개 이상일때 첫 번째 열로 정렬 후 두 번째 열 정렬
SELECT department_id, employee_id, first_name, last_name
FROM employees
ORDER BY department_id, employee_id;

-- 별칭으로 정렬
SELECT department_id, last_name, salary*12 연봉
FROM employees
ORDER BY 연봉 DESC;

SELECT department_id, last_name, salary*12 연봉
FROM employees
ORDER BY 3 DESC;

--예제1
SELECT employee_id, first_name, last_name
FROM employees
ORDER BY employee_id;

--예제2
SELECT *
FROM employees
WHERE job_id
Like '%CLERK%' ORDER BY salary DESC;

--예제3
SELECT employee_id, first_name,department_id,salary
FROM employees
WHERE employee_id BETWEEN 120 AND 150 ORDER BY department_id desc, salary DESC;