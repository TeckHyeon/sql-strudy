--11번 문제
SELECT empno, ename
FROM EMP
where empno <= 7698;
--12번 문제
SELECT ename, sal, deptno
FROM emp
where hiredate between '81/04/02' and '82/12/09';
--13번 문제
SELECT ename, job, sal
from emp
where sal between 1601 and 2999;
--14번 문제
select *
from emp
where empno not Between 7654 and 7782;
--15번 문제
select *
from emp
where ename BETWEEN 'B' and 'J';
--16번 문제
select *
from emp
where hiredate NOT BETWEEN '81/01/01' AND '81/12/31';
--17번 문제
select *
from emp
where job = 'MANAGER' OR job = 'SALESMAN';
--18번 문제
select ename, empno, deptno
from emp
where deptno not in (20,30);
--19번 문제
SELECT empno, ename, hiredate, deptno
from emp
where ename like 'S%';
--20번 문제
SELECT *
from emp
WHERE hiredate BETWEEN '81/01/01' AND '81/12/31';
--21번 문제
SELECT *
from emp
WHERE ename LIKE '%S%';
--22번 문제
SELECT *
FROM emp
WHERE ename LIKE 'M____N';
--23번 문제
SELECT *
FROM emp
WHERE ename LIKE '_A%';
--24번 문제
SELECT *
FROM emp
WHERE comm IS NULL;
--25번 문제
SELECT *
FROM emp
WHERE comm IS NOT NULL;
--26번 문제
SELECT ename, deptno, sal
FROM emp
WHERE deptno = 30 AND sal >= 1500;
--27번 문제
SELECT empno, ename, deptno
from emp
where ename like 'K%' OR deptno = 30;
--28번 문제
SELECT *
FROM emp
WHERE sal >= 1500 AND deptno = 30 AND job='MANAGER';
--29번 문제
SELECT *
FROM emp
WHERE deptno = 30
ORDER BY empno;
--30번 문제
SELECT *
FROM emp
ORDER BY sal DESC;
--31번 문제
SELECT *
FROM emp
ORDER BY deptno,sal desc;
--32번 문제
SELECT deptno, ename, sal
FROM emp
ORDER BY deptno DESC, ename, sal DESC;
--33번 문제
SELECT ename, sal, ROUND(sal*0.13) BONUS, deptno
FROM emp
WHERE deptno = 10;
--34번 문제
SELECT ename, sal, NVL(comm, 0) , (sal+NVL(comm, 0)) TOTAL
FROM emp
ORDER BY TOTAL DESC;
--35번 문제
SELECT ename, sal, TO_CHAR((sal*0.15),'$999.9') 회비
FROM emp
WHERE sal between 1500 AND 3000;
--36번 문제
select d.dname DNAME, COUNT(e.empno)
FROM emp e JOIN dept d
ON e.deptno = d.deptno
GROUP BY d.dname
HAVING COUNT(e.empno)>5;
--37번 문제
SELECT job, SUM(SAL)
FROM emp
WHERE job<>'SALESMAN'
GROUP BY job
HAVING SUM(SAL)>5000;
--38번 문제
SELECT e.empno, e.ename, e.sal, s.grade
FROM emp e
JOIN salgrade s
ON e.sal BETWEEN s.losal and s.hisal;
--39번 문제
SELECT deptno, COUNT(empno) 사원수, COUNT(comm) "커미션 받은 사람수"
FROM emp
GROUP BY deptno;
--40번 문제
SELECT ename, deptno, 
DECODE (deptno,  10, '총무부',
                20, '개발부',
                30, '영업부') 부서명
FROM emp;
        