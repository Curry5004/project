-- 문자처리함수 :  대소문자 변환함수
select 'Oracle Mania'
     , UPPER('Oracle Maina')
      , LOWER('Oracle Maina')
       , INITCAP('oracle maina')
from dual;

select ename, lower(ename), job, initcap(job) 
  from employee;
  
select eno, ename, dno 
  from employee
 where lower(ename) = 'scott';
 
 select eno, ename, dno 
  from employee
 where initcap(ename) = 'Scott';
 
 -- 문자 길이를 반환하는 함수
 select length('OracleMania'), length('오라클매니아')
   from dual;
 select lengthb('OracleMania'), lengthb('오라클매니아')
   from dual;   
   
-- 문자 처리 함수
select 'Oracle', 'mania', concat('Oracle', 'mania'), 'Oracle' || 'mania'
  from dual;
-- SUBSTR(대상, 시작위치, 추출할개수)  
select substr('Oracle mania', 4, 3) 
     , substr('Oracle mania', -4, 3)
  from dual;
 
-- 이름이 'N'으로 끝나는 사원을 substr 함수를 이용해서 출력하시오
select * 
  from employee
 where substr(ename, -1, 1) = 'N';
 
-- 87년도에 입사한 사원을   substr 함수를 이용해서 출력하시오
SELECT *
  FROM EMPLOYEE
 WHERE SUBSTR(HIREDATE, 1, 2) = '87';
 
 SELECT SUBSTR('오라클매니아', 3, 4)
      , SUBSTRB('오라클매니아', 3, 7)
   FROM DUAL;
 
-- INSTR 함수 형식
-- INSTR(대상,  찾을글자, 몇 변째 발견) 
SELECT INSTR('Oracle mania', 'a')
  from dual;
  
-- 5 번째부터 두 번째로 발견되는 ’a'의 위치
SELECT INSTR('Oracle mania', 'a', 5, 2)
  from dual;  
  
select INSTR('오라클매니아', '라')
     , instrb('오라클매니아', '매')
  from dual;
  
--   이름의 세 번째 자리가 'R’인 사원을 검색하는 쿼리문을 
-- INSTR 함수를 사용해서 출력하시오
select * 
  from employee
 where instr(ename, 'R', 3, 1) = 3;
 
 -- 왼쪽 자리를 특정 기호로 채우기 
 select LPAD(salary, 10, '0') || RPAD(ename, 10, ' ') || dno  as rowData
   from employee;

select RPAD(salary, 10, '*')
  from employee;
 
-- 공백 제거하기 
select '  Oracle mania   ', LTRIM('  Oracle mania   ')
     , RTRIM('  Oracle mania   ')
     , TRIM('  Oracle mania   ')
     FROM DUAL;
-- 숫자 함수는 숫자 데이터를 처리하기 위한 함수
-- ROUND(대상, 자릿수) 
SELECT 98.7654
     ,  ROUND(98.7654)
     , ROUND(98.7654, 2)
     , ROUND(98.7654, -1)
  FROM DUAL;    
-- TRUNC

SELECT 98.7654
     , TRUNC(98.7654)
     , TRUNC(98.7654, 2)
     , TRUNC(98.7654, -1)
  FROM DUAL;   

SELECT MOD(31, 2)
     , MOD(31, 5)
     , MOD(31, 8)
  FROM DUAL;
  
SELECT ENAME, SALARY, MOD(SALARY, 500)
  FROM EMPLOYEE;
-- 날짜 데이터를다루기 위한함수
SELECT SYSDATE FROM DUAL;

SELECT SYSDATE-1   어제
     , SYSDATE     오늘  
     , SYSDATE+1   내일
  FROM DUAL;
 
SELECT ENAME, ROUND(SYSDATE-HIREDATE) 근무일수
, (SYSDATE-HIREDATE), HIREDATE
, (SYSDATE - (SYSDATE-7))
  FROM EMPLOYEE;
 
SELECT HIREDATE
    , TRUNC(HIREDATE, 'MONTH')
 FROM EMPLOYEE;

SELECT ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 6) 
  FROM EMPLOYEE;
 
 
 -- NEXT_DAY (date, ‘요일’) 
 SELECT SYSDATE, NEXT_DAY(SYSDATE, '토요일')
 FROM DUAL;

-- 입사한 달의 마지막 날구하기 
SELECT ENAME, HIREDATE
     , LAST_DAY(HIREDATE)
  FROM EMPLOYEE;
 
 -- 날짜 함수 사용하기
 SELECT ENAME, HIREDATE 
      , TO_CHAR(HIREDATE, 'YY-MM')
      , TO_CHAR(HIREDATE, 'YYYY-MM-DD DAY')
  FROM EMPLOYEE;
 
 SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') FROM DUAL;
 
 
 SELECT ENAME, HIREDATE
   FROM EMPLOYEE
   WHERE HIREDATE = TO_DATE(19810220, 'YYYYMMDD');
   
  SELECT TO_NUMBER('100,000', '999,999')
               - TO_NUMBER('50,000', '999,999')
     FROM  DUAL;
     
   SELECT TO_NUMBER('100000')
               - TO_NUMBER('50000')
     FROM  DUAL;  
     
     select to_number(replace('100,000', ',', '')) from dual;
     
-- 일반함수
SELECT ENAME, SALARY, COMMISSION,
      NVL(COMMISSION, 0),
      SALARY*12+NVL(COMMISSION, 0)
  FROM EMPLOYEE;
-- NVL2( EXPR1, EXPR2, EXPR3)
-- EXPR1 NULL이 아니면 EXPR2 , NULL 이면 EXPR3
SELECT ENAME, SALARY, COMMISSION,
      NVL2(COMMISSION, SALARY*12+COMMISSION, SALARY*12 )
  FROM EMPLOYEE;

select ename, salary, commission,
        COALESCE(commission, salary, 0)
   from employee
  order by job;
  
-- NULLlF(exprl. expr2) 
--두 표현식을 비교하여 동일한 경우에는 NULL을 반환하고 동일하지 않 
-- 으면 첫 번째 표현식을 반환
select NULLIF('A', 'A'), NULLIF('A', 'B')
  from dual;
  
-- DECODE
-- DECODE (표현식,  조건1 ， 결과1 ， 
--  조건2 ， 결과2 ， 
--  조건3 ， 결과3 ，  
-- 기본결과  )

select ename, dno, DECODE(dno, 10, 'ACCOUNTING',
                               20, 'RESEARCH',
                               30, 'SALES',
                               40, 'OPERATIONS',
                               'DEFAULT') AS DNAME
 from employee
 order by dno;
 
--  CASE 함수   if else와 같이 사용할 수 있음
select ename, dno, 
  CASE  WHEN dno=20 THEN 'ACCOUNTING'
       WHEN dno=20 THEN 'RESEARCH'
       WHEN dno=30 THEN 'SALES'
       WHEN dno=40 THEN 'OPERATIONS'
       ELSE 'DEFAULT'
   END AS DNAME
  from employee
 order by dno;
 
 select ename, dno, 
  CASE dno WHEN 10 THEN 'ACCOUNTING'
       WHEN 20 THEN 'RESEARCH'
       WHEN 30 THEN 'SALES'
       WHEN 40 THEN 'OPERATIONS'
       ELSE 'DEFAULT'
   END AS DNAME
  from employee
 order by dno;
 

1. 1981년 5월 1일 ~ 1982년 2월 사이에 입사한 사원들의 모든 정보를 
부서번호순(오름차순)으로 검색하시오.( TO_DATE )

select *
  from employee
 where hiredate >= TO_DATE('19810501', 'YYYYMMDD') 
   and hiredate <= TO_DATE(19820228, 'YYYYMMDD')
 ORDER BY DNO;

2. 1981년에 입사한 사원의 이름과 사원번호를 출력하는데 
사원번호가 내림차순으로 정렬하시오. (비교연산자, TO_CHAR)
select ENAME, ENO
  from employee
 where hiredate >= '19810101'
   and hiredate <= '19811231'
 ORDER BY ENO DESC;

select ENAME, ENO
  from employee
 where TO_CHAR(hiredate, 'YYYY') =  '1981'
 ORDER BY ENO DESC;


3. ( 직급이 SALESMAN 일 경우 급여 * 1.1, CLERK 일 경우 급여 * 1.3
, MANAGER 일 경우 급여 * 1.5 ) - 인상된급여  로 하고 
  eno, job, ename, salary, 인상된급여 정보를 출력하시오. ( DECODE )

SELECT eno, job, ename, salary,
  DECODE(job, 'SALESMAN', salary*1.1, 
              'CLERK', salary*1.3, 
              'MANAGER', salary*1.5,
                salary) as 인상된급여
    from employee;
  
--  사원들의 급여 총액， 평균, 최고액, 최소액
select sum(salary), round(avg(salary)), max(salary), min(salary)
  from employee;
-- 최근에 입사한 사원과 가장오래전에 입시한 사원의 입사일 훌력하기 
select max(hiredate),
       min(hiredate)
  from employee;

-- 사원들의 커미션 총액을출력
select sum(commission) as "커미션 총액"
  from employee;
 
--   전체 사원 수 구하기 
select count(*) as "사원의 수"
  from employee;
  
-- 커미션 받는 사원수 구하기 
select count(*) as "전체사원의 수", count(commission) as "커미션 받는 사원 수"
 from employee;

-- 직업 종류의 개수 출력하기
select count(distinct job) as "직업 종류의 개수"
  from employee;
  
  
select * from employee
where hiredate between to_date(19810501) and to_date(19820228) 
;

-- 오류
-- select ename, max(salary)
--   from employee;

-- 소속 부서및 직책별 평균 급여를 부서번호와 함께 출력하기 
select dno as 부서번호, job, count(*), round(avg(salary)) as 급여평균
  from employee
group by dno, job;

--급여 총액이 5000을 넘는 직급에 대해서 직급과 급여 총액을 표시하되 직급이 
--MANAGER인 사원은 제외시킨 후 급여 총액에 따라 정렬
SELECT JOB, COUNT(*), SUM(SALARY)
  FROM EMPLOYEE
 WHERE JOB NOT LIKE '%MANAGER%'
 GROUP BY JOB
HAVING SUM(SALARY) >= 5000
 ORDER BY SUM(SALARY) ;
-- 매니저가 존재하는 사원수
SELECT count(MANAGER)
FROM EMPLOYEE 
WHERE MANAGER IS NOT NULL;
//매니저 수
SELECT COUNT(DISTINCT MANAGER) AS "COUNT(MANAGER)"
FROM EMPLOYEE;

-- 1. 모든 사원의 급여 최고액， 최저액， 총액 및 평균 급여를출력하시오
-- 칼럼의 벌칭은 결과화면과동일하게 지정 하고 평균에 대해서는 정수로 반올림하시오
select max(salary) Maximum
     , min(salary) Minimum
     , sum(salary) Sum
     , round(avg(salary)) Average
  from employee;

-- 2. 각 담당 업무 유형별로 급여 최고액， 최빽， 총액 및 평균액을 출력하시오
-- 칼럼의 별칭은 결과화면과동일하게 지정하고 평균에 대해서는 정수로 반올림하시오
select job
     , max(salary) Maximum
     , min(salary) Minimum
     , sum(salary) Sum
     , round(avg(salary)) Average
  from employee
 group by job;
 
-- 3.  count(*) 함수를 이용하여 담당 업무가 동일한 사원 수를 출력하시오 
select job, count(*)
from employee
group by job;

-- 4 관리자수를 나열하시오 칼럼의 별칭은 결과화면과동일하게 지정하시오 
select count(manager)
  from employee;
 
select distinct manager
  from employee;

-- 5 급여 최고액， 급여 최저액의 차액을출력하시오. 칼럼의 별칭은 결과화면과동일하게 지정하시오 
select max(salary) - min(salary) as DIFFERENCE
  from employee;

-- 6 작급별 사원의 최저 급여를 출력하시오 관리자를 알 수 없는 사원 및 최저 급여가 2000 미만인 그룹은 제외 
-- 시키고 결과를급여에 대한 내림치순으로 정렬하여 출력하시오 
select job, min(salary)
  from employee
 where manager is not null
 group by job
 having not min(salary)<2000
 order by min(salary) desc;
 
 
-- 7 각부서에 대해 부서번호， 사원수， 부서 내의 모든사원의 평균 급여를 출력하시오 
-- 칼럼의 별칭은 결과 화면과 동일하게 지정하고 평균급여는소수점 둘째 자리로 반올림하시오
select dno
     , count(*) as "Number of People"
     , round(avg(salary), 2) as "Salary"
 from employee
group by dno
order by dno;

-- 8 각부서에 대해 부서번호 이름， 지역명， 사원수， 부서내의 모든 사원의 평균 급여를 출력하시오.
-- 칼럼의 별칭은  결과화면과 동일하게 지정하고 평균급여는 정수로 반올림하시오. 



-- 9 업무를 표시한 다음 해당 업무에 대해 부서번호벌 급여 및 부서 10 20 30의 급여총액을 각각 출력하시오 
--각 칼럼에 별칭은 각각 Job， 부서 10, 부서 20, 부서 30, 총액으로 지정하시오

select job, dno,  
        decode(dno, 10, sum(salary), 20, 0, 30, 0) as "부서 10", 
        decode(dno, 20, sum(salary), 10, 0, 30, 0) as "부서 20", 
        decode(dno, 30, sum(salary), 10, 0, 20, 0) as "부서 30", 
        sum(salary) as "총액" 
 from employee 
 group by job, dno 
order by dno; 
