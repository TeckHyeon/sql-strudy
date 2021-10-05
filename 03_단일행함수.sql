-- 단일행 함수

-- 문자 함수
-- 대소문자 변환 UPPER LOWER INITCAP
SELECT UPPER('SQL Course'), LOWER('SQL Course'),INITCAP('SQL Course') FROM DUAL; -- 듀얼 테스트용 테이블을 이용하여 연습

-- 문자 조작 함수

--문자형 함수 예제
SELECT department_id, last_name,department_id
FROM employees
WHERE LOWER(last_name) = 'higgins';

SELECT last_name, CONCAT('직업명이  ',job_id) AS 직업명
FROM employees
WHERE SUBSTR(job_id, 4,3)='REP';

--문자열 가장 끝 문자
SELECT last_name, SUBSTR(last_name, -1, 1)
FROM employees;

SELECT first_name, last_name,
    UPPER(CONCAT(first_name, SUBSTR(last_name, 1,3))) 이름합성
FROM employees
WHERE department_id = 60;

SELECT job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') 적용결과
FROM employees
WHERE job_id LIKE '%ACCOUNT%';

--예제
SELECT last_name,LOWER (last_name) LOWER적용, UPPER (last_name) UPPER적용,email 이메일,INITCAP(email) INITCAP적용
FROM employees;

SELECT UPPER(job_id) 직업명,SUBSTR(Job_id,1,2)
FROM employees;

--  날짜형 함수
SELECT sysdate 현재날짜, ROUND(sysdate, 'DD') 일, ROUND(sysdate, 'MM') 월, ROUND(sysdate, 'YY') 년도,
-- 일은 시간이 12시 이상이면 반올림 된다.
    ROUND(MONTHS_BETWEEN('2021/10/10', '2021/06/10'),1) 월차이
FROM dual;

SELECT hire_date FROM employees;

--날짜에 더하기 빼기를 하면 => 실제 날짜가 더하거나 빼진다.
SELECT sysdate 오늘날짜, sysdate + 1 내일, sysdate - 1 어제
FROM dual;

--예제1
SELECT sysdate, hire_date, MONTHS_BETWEEN(SYSDATE,hire_date)
FROM employees
WHERE department_id=100; 

--에제2
SELECT HIRE_DATE, ADD_MONTHS(HIRE_DATE, 3) 더하기_3개월, 
        ADD_MONTHS(HIRE_DATE, -3) 빼기_3개월
FROM employees
WHERE employee_id BETWEEN 100 AND 106;