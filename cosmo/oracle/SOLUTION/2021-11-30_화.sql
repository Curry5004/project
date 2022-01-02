select distinct dno from employee;

select eno, ename, salary, nvl(commission, 0) as commission, salary * 12 + nvl(commission, 0) 연봉 from employee;

select * from dual;

select sysdate from dual;

select eno, ename, salary from employee
where salary=1500;

select * from employee
where dno = 10;

select * from employee where ename = 'SCOTT';

SELECT * FROM EMPLOYEE WHERE HIREDATE <= '1981/01/01';

SELECT * FROM EMPLOYEE
WHERE dno = 10 and job='MANAGER';

select * from employee
where dno = 10 or job ='MANAGER';

SELECT * FROM EMPLOYEE
WHERE NOT DNO = 10;

SELECT * FROM EMPLOYEE
WHERE DNO <> 10;

SELECT * FROM EMPLOYEE
WHERE DNO != 10;

--   
SELECT * FROM EMPLOYEE
WHERE SALARY >= 1000 AND SALARY <= 1500;

SELECT * FROM EMPLOYEE
WHERE SALARY BETWEEN 1000 AND 1500;

SELECT * FROM EMPLOYEE
WHERE SALARY < 1000 OR SALARY >  1500;

SELECT * FROM EMPLOYEE
WHERE SALARY NOT BETWEEN 1000 AND 1500;

 -- 1982년에 입사한 사원 출력하기
 SELECT * FROM EMPLOYEE
 WHERE hiredate between '1982/01/01' and '1982/12/31';
 
 
select * from employee;

-- 커미션이 300 이거나 500이거나 1400인 사원 출력하기
SELECT * FROM EMPLOYEE
 WHERE COMMISSION = 300 OR COMMISSION=500 OR COMMISSION = 1400;
 
 -- IN 연산자 IN (A, B, C)
 SELECT * FROM EMPLOYEE
 WHERE COMMISSION IN (300, 500, 1400);
 
-- 이름이 F로 시작한는 사원 출력하기
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE 'F%';
 
 SELECT * FROM EMPLOYEE
WHERE ENAME = 'F';

-- 이름 중간에 M 이 포함되어있는 사원 출력하기
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%M%';
 
-- 이름이 N 으로 끝나는 사원 출력하기
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%N';
 
--이름이 두번째 글자가 A인 사원 출력하기
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '_A%';
 
-- 이름의 세 번째 글자가 A인 사원 검색하기
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '__A%';

-- 이름에 A가 없는 사원 출력하기
SELECT * FROM EMPLOYEE
WHERE ENAME NOT LIKE '%A%';

SELECT * FROM EMPLOYEE
WHERE COMMISSION = null ;

SELECT * FROM EMPLOYEE
WHERE COMMISSION is null;

SELECT * FROM EMPLOYEE
WHERE COMMISSION is not null;

SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC ;

SELECT * FROM EMPLOYEE
ORDER BY ENAME;

SELECT * FROM EMPLOYEE
ORDER BY HIREDATE DESC;

SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC, ENAME ASC;

-- 혼자해보기
--1 
SELECT ENAME, SALARY, SALARY + 300
  FROM EMPLOYEE;
--2 사원의 이름， 급여， 연간총수입을 총수입이 많은 것부터 작은 순으로 훌력하시오. 
-- 연간총수입은 월급에 12를  곱한 후 $100 더해서 
SELECT ENAME, SALARY, SALARY * 12 + 100 연간총수입
FROM EMPLOYEE
ORDER BY SALARY * 12 + 100 DESC;

--3.  급여가 2000을 넘는사원의 이름과급여를 -급여가 많은 것부터 작은 순으로출력하시오 
SELECT ENAME, SALARY
  FROM EMPLOYEE
 WHERE SALARY > 2000
 ORDER BY SALARY DESC;
-- 4. 사원번호가 7788인 사원의 이름과부서번호를 출력하시오 
SELECT ENAME, DNO
  FROM EMPLOYEE 
 WHERE ENO = 7788;
-- 5. 급여가 2000에서 3000 사이에 포함되지 않는 사원의 이름과 급여를 출력하시오.
SELECT ENAME, SALARY
  FROM EMPLOYEE
 WHERE SALARY NOT BETWEEN 2000 AND 3000;
-- 6. 1981 년 월 20일 부터 1981 년 5월 1일 사이어| 입시한사원의 이름， 담당 업무， 입사일을 훌력하시오. 
SELECT ENAME, JOB, HIREDATE
  FROM EMPLOYEE
 WHERE HIREDATE BETWEEN '81/02/20' AND '81/05/01';
-- 7. 부서 번호가 20 및 30에 속한 사원의 이름과 부서번호를 출력하도| 
-- 이름을 기준{내림치순)으로 영문지순으로 출력하시오 
SELECT ENAME, DNO
  FROM EMPLOYEE
 WHERE DNO IN (20, 30)
 ORDER BY ENAME DESC;
--8 사원의 급여가 2000에서 3000 사-0 에 포함되고 부서번호가 20 또는 30인 사원의 이름， 급여와 부서번호를 
-- 출력하되 이름 (오름치순)으로 출력하시오. 
SELECT ENAME, SALARY, DNO
  FROM EMPLOYEE
 WHERE SALARY BETWEEN 2000 AND 3000
   AND DNO IN (20, 30)
 ORDER BY ENAME;
-- 9.1981 년도에 입사한 사원의 이름과 입사일을 출력하시오(like 연산자 와일드카드 사용). 
SELECT ENAME, HIREDATE
  FROM EMPLOYEE
 WHERE HIREDATE LIKE '81%';
 
 -- 10. 관리자가 없는사원의 이름과 담당 업무를출력하시오. 
 SELECT ENAME, JOB
   FROM EMPLOYEE
  WHERE MANAGER IS NULL;
  
 -- 11 커미션을 받을 수 있는 자격이 도|는 사원의 이름， 급여， 커미션을 출력하되 
-- 급여 및 커미션을 기준으로 내림차순정렬하여 표시하시오  
SELECT ENAME, SALARY, COMMISSION
  FROM EMPLOYEE 
 WHERE COMMISSION IS NOT NULL
 ORDER BY SALARY DESC, COMMISSION DESC;
 
 -- 12. 이름의 세 번째 문자가 인 사원의 이름을 표시하시오 
SELECT ENAME
  FROM EMPLOYEE
 WHERE ENAME LIKE '__R%';
 
 -- 13. 이름에 A 와 E 를 모두 포함하고 있는시원의 이름을표시하시오. 
 SELECT ENAME
   FROM EMPLOYEE
  WHERE ENAME LIKE '%A%' 
    AND ENAME LIKE '%E%';
 -- 14. 담당 업무가 사무원(CLERK) 또는 영업사원(SALESMAN)OI면서 
-- 급여가 $1600. $950 또는 $1300 01 아닌 사원의 이름， 담당 업무， 급여를출력하시오 
SELECT ENAME, JOB, SALARY
  FROM EMPLOYEE
 WHERE JOB IN('CLERK', 'SALAESMAN') 
   AND SALARY NOT IN (1600, 950, 1300);
-- 15  커미션이 $500 이상인 사원의 이름과 급여 및 커미션을 출력하시오. 
SELECT ENAME, SALARY, COMMISSION
  FROM EMPLOYEE
 WHERE COMMISSION >= 500;
 
 
 1. 부서번호 10번인 사원들의 사원번호, 사원이름, 월급을 출력하시오.
 SELECT ENO, ENAME, SALARY, DNO FROM EMPLOYEE WHERE DNO = 10;
 2. 사원번호 7369인 사원 이름, 입사일, 부서번호를 출력하시오.
 SELECT ENAME, HIREDATE, DNO FROM EMPLOYEE WHERE ENO = 7369;
 3. 사원번호 7300크고 7400 작은(미만인) 사원 이름, 입사일, 부서번호를 출력하시오.
 SELECT ENAME, HIREDATE, DNO FROM EMPLOYEE WHERE ENO > 7300 AND ENO < 7400;
 4. EMPLOYEE 모든 정보를 (사원번호 기준 내림차순으로) 검색하시오.
 SELECT * FROM EMPLOYEE ORDER BY ENO DESC;
 5. 이름이 S로 시작하는 모든 사람의 사원번호와 이름을 출력하시오. 
 SELECT * FROM EMPLOYEE WHERE ENAME LIKE 'S%';
 6. 직속상관 사원번호(MANAGER) 가 없는 사원의 모든 정보를 검색하시오.
 SELECT * FROM EMPLOYEE WHERE MANAGER IS NULL;
 
 SELECT * 
   FROM NLS_DATABASE_PARAMETERS 
  WHERE PARAMETER = 'NLS_CHARACTERSET';
-- AL32UTF8
-- 유니코드의 CES중의 한 부분입니다. 11,172자의 한글을 표현합니다.(한글 바이트: 3byte)

-- KO16KSC5601 완성형 한글입니다. 가장 많이 사용됩니다.
-- 2,350자의 한글과 4,888자의 한자, 영문, 기호 및 히라가나,가타카나를 표현합니다.(한글 바이트 : 2btye)

-- KO16MSWIN949
-- 조합형 한글입니다. 완성형을 포함하여 11,172자의 한글을 표현합니다.(한글 바이트 : 2byte)

1. 직책(JOB)이 SALESMAN, ANALYST인 사람의 모든 정보를 출력하시오. ( or, like, in )

SELECT * FROM EMPLOYEE WHERE JOB LIKE 'SALES%' OR JOB LIKE 'A%';
SELECT * FROM EMPLOYEE WHERE JOB IN ('SALESMAN' ,'ANALYST' );
SELECT * FROM EMPLOYEE WHERE JOB = 'SALESMAN' OR JOB = 'ANALYST';


2. 1981년 5월 1일 ~ 1982년 2월 사이에 입사한 사원들의 모든 정보를 부서번호순(오름차순)으로 검색하시오 
SELECT * FROM EMPLOYEE WHERE HIREDATE BETWEEN '81/05/01' AND '82/02/28' ORDER BY DNO;

3. 1981년에 입사한 사원의 이름과 사원번호를 출력하는데 사원번호가 내림차순으로 정렬하시오.
SELECT ENAME, ENO FROM EMPLOYEE WHERE HIREDATE LIKE '81%' ORDER BY ENO DESC;

4. 직급이 SALESMAN인 사원의 급여인상율을( 급여 * 1.1 )로 해서 이름， 입사일， 급여를출력하시오 
SELECT ENAME, HIREDATE, SALARY*1.1 AS SALARY FROM EMPLOYEE WHERE JOB = 'SALESMAN';

5. 모든 사원들에게 커미션을 200씩 추가하여 사원이름, 커미션 값을 출력하시오. 
SELECT ENAME, NVL(COMMISSION, 0) + 200 FROM EMPLOYEE;
 
/*NVL(column, 지정값) : column의 값이 NULL이면 지정값을 반환.
NVL2(column, 지정값1, 지정값2) : column의 값이 NULL이 아니면 지정값1을 반환 column의 값이 NULL이면 지정값2를 반환.
*/
6.  커미션을 가지고 있는 사원은 Y, 커미션이 NULL값인 사원은 N을 포함하여 사원이름과 커미션 값을 출력하시오.( nvl2 ) 
SELECT ENAME, NVL2(COMMISSION, 'Y', 'N'), COMMISSION FROM EMPLOYEE;

7. 1981년 입사자들의 평균임금(AVG(salary))을 출력하시오 
SELECT AVG(SALARY) FROM EMPLOYEE WHERE HIREDATE LIKE '81%';

8. 사원번호, 사원이름, 총 급여(salary+commission)을 출력하시오. (commission 널처리) 
SELECT ENO, ENAME, SALARY + NVL(COMMISSION, 0) FROM EMPLOYEE;
 


 
 
 
 
 
 
   
 