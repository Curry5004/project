show user;

--문자처리 함수에서 대소문자 변환함수
select 'Oracle Mania' 일반
    , UPPER('Oracle Mania') 대문자
    , LOWER('Oracle Mania') 소문자
    , INITCAP('Oracle Mania') 앞글자만대문자
from dual;

select ename, lower (ename), job, initcap(job)
from employee;

select eno, ename, dno
from employee
where ename = 'scott';
--이러면 조회가 안됨. 왜? scott은 대문자로 저장되어있으니까 소문자로 찾으면 안됨
--그래서 저 검색어를 대문자로 바꿀수도 있지만 다음처럼 할 수 있다.

select eno, ename, dno
from employee
where lower(ename) = 'scott';
--이렇게 ename을 소문자로 변환시켜서 접근 할 수도 있다.

--다른 접근 법을 보자.
--INITCAP 사용
select eno, ename, dno
from employee
where initcap(ename) = 'Scott';


--문자 길이를 변환하는 함수
--이렇게 하면 한글자씩 나옴
select length('OracleMania'), length('오라클매니아')
from dual;

select lengthb('OracleMania'), lengthb('오라클매니아')
from dual;
-- 영문은 위랑 똑같이 11이지만 한글은 인코딩 방식이 달라서 함수따라 나오는 결과값이 달라진다.


--대소문자 변환함수
--이렇게 대소문자가 변환되는 것을 확인 할 수 있음
select JOB, UPPER(JOB), LOWER(JOB), INITCAP(JOB)
FROM EMPLOYEE;

select *
from employee
where UPPER 




--문자처리 함수
--문자 배치를 하다보면 이런 함수들을 많이 쓰게 됨.
--문자값을 합쳐주는 함수 concat
select 'Oracle', 'Mania', concat('Oracle', 'mania')
from dual;

--SUBSTR(대상, 시작위치, 추출할개수) 문자 잘라서 추출
--얘는 위치가 0번이 아니라 1번부터 시작함.
select substr('Oracle mania', 4, 3)
--   -은 뒤에서 부터 오는 것
    , substr('Oracle mania', -4, 3)
from dual;

--이름이 'N'으로 끝나는 사원을 SUBSTR 함수를 이용해서 출력하시오
SELECT *
FROM EMPLOYEE
where substr(ename, -1, 1) = 'N';

--87년도에 입사한 사원을 SUBSTR 함수를 이용해서 출력하시오
SELECT *
FROM EMPLOYEE
where substr(hiredate, 1, 2) = '87';

--영문같은 경우 substr이나 substrb을 쓰던 차이는 없으나 한글은 차이가 난다.
--substrb는 바이트 단위로 끊다보니 좀 잘려 나오고 substr은 그냥 글자수로 나옴.
--substrb는 거의 쓰이지 않으니 이점 참조 할 것.
select substr('오라클매니아', 3, 4)
    , substrb('오라크래니아', 3, 4)
from dual;





--INSTR 함수 형식
--INSTR(대상, 찾을 글자, 몇 번째 발견)
select INSTR('Oracle mania', 'a')
from dual;
--위치한 부분을 반영해준다.

select INSTR('Oracle mania', 'k')
from dual;
--없는걸 치면 0을 리턴한다

--문자열에서 찾을 위치를 종해줌
--해당 글자 5번째 위치에서 부터 2번째로 발견되는 a를 찾아라 라는 의미
select INSTR('Oracle mania', 'a', 5, 2)
from dual;

--instrb의 경우
--바이트 단위로 찾아준다.
select instr('오라클매니아', '라')
    ,instrb('오라클매니아', '라')
from dual;

--이름의 새번쨰 자리가 'R'인 사원을 검색하는 쿼리문을 INSTR 함수를 사용하여 출력하시오
select *
from employee
where instr(ename, 'R', 3, 1) = 3;
--3번째 자리에 R이 있으면 3을 리턴할꺼니까 비교를 통해 3을 가지는 값만 가지게 되도록 하여 이렇게 나오게 한다.




--LPAD 입력받은 문자열과 기호를 정렬하여 특정 길이의 문자열을 반환한다
--LPAD나 RPAD도 맥락은 비슷하다. L은 왼쪽 R은 오른쪽

--왼쪽 자리를 특정 기호로 채우기
--왼쪽에 별이 추가되어 10자리를 채워짐.  해당하는 자리수만큼 *을 채워서 만들어줌
select LPAD(Salary, 10, '*')
from employee;

--반대로 오른쪽에 문자를 넣어 특정 길이의 문자열로 리턴해준다.
select RPAD(salary, 10, '*')
from employee;



--마지막으로 함수 trim
--TRIM은 그냥 앞뒤 다 트림해줌
--공백 제거하기
-- L, R 이 붙는거에 따라 어느쪽에 붙어있는 공백을 제거할 수 있을지 정해줄 수 있으며 그냥 TRIM만 붙으면 양 사이드 전부를 날려준다.
select '     Oracle mania     ', LTRIM('     Oracle mania     '), RTRIM('     Oracle mania     '), TRIM('     Oracle mania     ')
FROM DUAL;









--숫자 함수
--숫자 함수는 숫자 데이터를 처리하기 위한 함수

--ROUND (대상, 자릿수) 특정 자리수에서 반올림한다.
--자릿수 미표기 - 소숫점 전부 날림
--자릿수 표기 - 거기까지 날림
--자리수 - 표기 - 앞에서 부터 날림
SELECT 98.7654
    , round(98.7654)
    , round(98.7654, 2)
    , round(98.7654, -1)
from dual;



--TRUNC 특정 자릿수에서 잘라낸다.
--자릿수 미표기 - 소숫점 전부 날림
--자릿수 표기 - 소숫점 거기까지 날림
--자리수 - 표기 - 앞에서 부터 날림
SELECT 98.7654
    , TRUNC(98.7654)
    , TRUNC(98.7654, 2)
    , TRUNC(98.7654, -1)
from dual;



--MOD 입력받은 수를 나눈 나머지 값을 반환한다.
SELECT MOD (31, 2)
      ,MOD(31,5)
      ,MOD(31,8)
FROM DUAL;

SELECT ENAME, SALARY, MOD(salary, 500)
from employee;





--날짜 함수
--날짜 데이터를 다루기 위한 함수

--sysdate 현재 날짜를 반환한다.
--연산식도 가능한데 단순히 산술을 넣으면 day를 기준으로 하나 빠진다.
select sysdate-1 어제,SYSDATE , sysdate+1 내일 FROM DUAL;


select ENAME, round(sysdate-HIREDATE) 근속일수
    , (sysdate-HIREDATE)
    , HIREDATE
    ,(sysdate-(sysdate-7)) 
FROM EMPLOYEE;

--TRUNC 특정 값을 다 버림. 이 경우는 년도 이하에 있는 것을 전부 버려준다.
select HIREDATE
    , TRUNC(HIREDATE, 'YEAR')
FROM EMPLOYEE;

--특정 날짜에 개월 수를 더한다.
select ename, hiredate, add_months(hiredate, 6)
from employee;

--NEXT_DAY (date, '요일')
--특정 날짜에서 최초로 도래하는 인자로 받은 요일의 날짜를 변환한다.
select sysdate, next_day(sysdate, '토요일')
from dual;

--last_day 해당 달의 마지막 날 구하기.
--입사한 달의 마지막 구하기.
--특정 달의 마지막 날짜를 알고싶을 때 진행한다.
select ename, hiredate
    ,last_day(hiredate)
from employee;






--형 변환 함수
select ename, HIREDATE
    , TO_CHAR(HIREDATE, 'YY-MM')
    , TO_CHAR(HIREDATE, 'YYYY-MM-DD DAY')
FROM EMPLOYEE;

select to_char(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') FROM DUAL;

--이렇게 검색하면 그냥 문자열 타입이니까 데이트 타입에 적용되어 출력되지않음
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE = 198110220;

--문자열 타입을 데이트 타입으로 전환하여 비교할 수 있게 해줌
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE =TO_DATE(19810220, 'YYYYMMDD');


--이는 문자열이기 때문에 계산이 되지 않고 출력이 안됨
SELECT '100,000'-'50,000'
FROM DUAL;
--특정값을 숫자열로 변환해주는 값.
SELECT TO_NUMBER('100,000', '999,999') - TO_NUMBER('50,000', '999,999')
FROM DUAL;




--일반함수
--NVL 함수
--NULL 값을 9 또는 다른 값으로 변환하기 위해 사용하는 함수.
select ename, salary, commission ,nvl(commission, 0),salary*12+nvl(commission, 0)
from employee;

--nvl2 함수
--nvl2(exrp1, exrp2, exrp3) exrp1이 null아 아니면 exrp2을 하고 맞으면 exrp3을 한다.
--삼항 연산자 처럼 쓸 수 있다. 다른 점은 첫번째 오는 값이 null인지 유무로만 판단한다.
select ename, salary, commission ,
    nvl2(commission, salary*12+commission, salary*12)
from employee;

--coalesce (expr-1, expr-1expr-1 expr-1/....)

select ename, salary, commission
    ,coalesce(commission, salary, 0)
    from employee;
    order by job;
    
    
--nullif(expr1, expr2)
--두 표현식을 비교하여 동일한 경우에는 null을 반환하고 동일하지 않으면 첫번쨰 표현식을 반환.
--같지 않을 경우에는 첫번쨰 표현식을 반환.
select nullif('A', 'A')
    ,nullif('A', 'B')
FROM DUAL;

--DECODE, CASE. 둘이 비슷하나 CASE가 좀 더 복잡함.
--DECODE(표현식, 조건1, 결과1, 조건 2, 결과 2, ..... 조건N, 결과N, 기본결과N)
--CASE(WHEN 조건1 THEN 결과1, WHEN 조건2 THEN 결과2 ..... ELSE 결과N) IF ELSE랑 유사한 구조를 가지고 있다.
--1) DECODE ( 표현식, 조건1, 결과1, 조건2, 결과2, 조건3, 결과3.....기본결과N)
select ename, dno, DECODE(dno, 10, 'ACCOUNTING', 
                               20, 'RESEARCH',
                               30, 'SALES',
                               40, 'OERATIONS',
                                'DEFALUT') AS DNAME
FROM EMPLOYEE
ORDER BY DNO;
--실무할때 너무너무 많이 쓰이는 함수.

--2)CASE 함수 if else와 같이 사용할 수 있음
select ename, dno,
    CASE WHEN dno=10 THEN 'ACCOUNTING'
         WHEN DNO=20 THEN 'RESEARCH'
         WHEN DNO=30 THEN 'SALES'
         WHEN DNO=40 THEN 'OPERATIONS'
         ELSE 'DEFAULT'
    END AS DNAME
FROM EMPLOYEE
ORDER BY DNO;


--문제 풀이 시작
--01 SUBSTR 함수를 사용하여 사원들의 입사한 년도와 입사한 달만 출력하시오.
select ename,HIREDATE, substr(hiredate, 1,2) 년도, substr(hiredate, 4,2) 월 from employee;
select * from employee;

--02 substr 함수를 사용하여 4월에 입사한 사원을 출력하시오
select ename, substr(hiredate, 4,2)
from employee
where substr(hiredate, 4,2) = 04;
SELECT * FROM EMPLOYEE;

                                
--03 MOD 함수를 사용하여 사원번호가 짝수인 사람만 출력하시오    
SELECT * FROM EMPLOYEE
where mod(eno,2)=0;

--04 입사일을 연도는 2자리(YY), 월은 숫자 (MON)로 펴시하고 요일은 약어 (DY)로 지정하여 출력하시오.
SELECT ENO, ENAME, JOB, MANAGER,
    TO_CHAR(hiredate, 'YY,MON,DY') 날짜
FROM EMPLOYEE;

--05 올해 며칠이 지났는지 출력하시ㅗㅇ. 현재 날짜에서 올해 1월 1일을 뺸 겨로가를 출력하고 TO_DATE 함수를 사용하여 데이터 형을 일치시키시오.
SELECT ROUND(SYSDATE-TO_DATE(210101, 'YY/MM/DD')) "올해 남은날" FROM DUAL;

--06 사원들의 상관 사번을 출력하되 상관이 없는 사원에 대해서는 NULL 값 대신 O으로 출력하시오
SELECT ename, job, nvl(manager, 0) from employee;

--07 DECODE 함수로 직급에 따라 급여를 인상하도록 하시오. 직급이 'ANALYST인 사원은 200, 'SALESMAN'인 사원은 180, 
--'MANAGER'인 사원은 150, 'CLERK'인 사원은 100을 인상하시오
SELECT ENAME, JOB, salary, salary+decode(job, 'ANALYST',200, 'SALESMAN', 180, 'MANAGER', 150, 'CLERK', 100, 0) 인상후
FROM EMPLOYEE
ORDER BY JOB;


select * from employee;

--1. 1981년 5월 1일 1982년 2월 사이에 입사한 사원들의 모든 정보를 부서 번호 순(오름차순)으로 검색하시어 (TO_DATE)
select * from employee
where hiredate between to_date(19810501, 'YYYYMMDD') AND to_date(198202, 'YY/MM')
ORDER BY ENO;
--이렇게 TO_TADE 변환해서 DATE 타입의 데이터와 비교할때 ' ' 요 타입은 그렇게 상관 없나보다.

--2. 1981년에 입사한 사원의 이름과 사원번호를 출력하는데 사원 번호가 내림차순으로 정렬하시오. (비교연산자, TO_CHAR)
SELECT ename, eno, HIREDATE
from employee
where TO_CHAR(hiredate, 'YY')=81
ORDER BY ENO DESC;

--이렇게도 접근할 수 있음
SELECT ename, eno, HIREDATE
from employee
where HIREDATE >='19810101'
AND HIREDATE <='19811231'
ORDER BY ENO DESC;


--3. 직급이 SALESMAN일 경우 급여*1.1,CLERK일 경우 급여*1.3, MANAGER일 경우 급여*1.5를 하고 모든 정보를 출력하시요 (DECODE)
select * from employee;

select eno, ename, job, manager, hiredate, salary, 
    decode(job, 'SALESMAN', salary*1.1,
    'CLERK', salary*1.3, 
    'MANAGER', salary*1.5, 
    salary) 인상된급여, commission, dno
FROM EMPLOYEE;



--chap05 그룹함수
--사원들의 급여 총애, 평균액, 최고액, 최소액
select sum(salary), round(avg(salary)), max(salary), min(salary)
from employee;

--최근에 입사한 사원과 가장 오래전에 입사한 사원의 입사일 출력하기.
select max(hiredate), min(hiredate) from employee;

--사원들의 커미션 총액
select sum(nvl(commission,0)) from employee;
--그룹함수는 null 값을 알아서 재외해 주기 때문에 nvl을 해주지 않아도 된다.
select sum(commission) from employee;

--전채 사원의 수 구하기.
select count(*) as "사원의 수" from employee;
--커미션을 받는 사원 수 구하기
--null 값은 알아서 빼준다는 사실을 잊지말고!
select count(commission) as "커미션 받는 사원 수" from employee;
--종합
select count(*) as "사원의 수", count(commission) as "커미션 받는 사원 수" from employee;

-- 직업 종류를 출력하기
select distinct job from employee;
-- 직업 종류의 개수를 출력하기
select count(distinct job) "직업 종류의 개수" from employee;


--이렇게 하면 오류발생. 그럽을 사용하기 위해선 그룹
select ename, max (salary) from employee;
--나중에 서브커리가면 더 쉽게 하는 법 배움

-- 소속 부서별 평균 급여를 부서번호와 함꼐 출력하기.
select dno as 부서번호, round(avg(salary)) 급여평균
from employee
group by dno;
--이렇게 부서번호 별로 할 것이라는 것을 보여줘서 그룹화를 해 줘야함 (????

--소속 부서에 부서별 직무군이 몇명있는지 카운팅 할 수 있대 이 떄도 마찬가지로 job을 그룹화 해야지만 사용할 수 있다.
select dno as 부서번호, job, count(*), round(avg(salary)) 급여평균
from employee
group by dno, job;


--급여 총액이 5000을 넘는 직급에 대해서 ㅈㄱ급과 급여 총약을 표시하되직급이 MANAGER인 사원을 제외시킨 후 급여 총액에 따라 정렬.

SELECT JOB, COUNT(*), SUM (SALARY)
FROM EMPLOYEE
WHERE JOB not like '%MANAGER%'
-- 그룹합수는 WHERE 조건에서 쓸 수 없다. 그렇기 떄문에 뒤에 HAVING 절에 넣어서 반영한다.
group by job
HAVING SUM(SALARY) >= 5000
ORDER BY SUM(salary);

--현업에선 그룹에서 이렇게 모아서 하는 것을 굉장히 좋아한다. 호


--chap 05 문제
--01 모든 사원의 급여 최고액, 최저액, 총액 및 평균 급여를 출력하시오. 
--칼럼의 별칭은 결과 화면과 동일하게 지정하고 평균에 대해선 정수로 반올림하시오
select max(salary) Maximum, min(salary) Minimum, sum(salary) Sum, round(avg(salary)) Average
from employee;


--02 각 담당 업무 유형별로 급여 최고액, 최저액, 총액 및 평균액을 출력하시오. 
--칼럼의 별칭은 결과 화면과 동일하게 지정하고 평균에 대해서는 정수로 반올림하시오
SELECT JOB, max(salary) Maximum, min(salary) Minimum, sum(salary) Sum, round(avg(salary)) Average
FROM EMPLOYEE
GROUP BY JOB;

--03 COUNT(*) 함수를 이용하여 담당 업무가 동일한 사원 수를 출력하시오
SELECT JOB, COUNT(JOB) "동일업무 인원수"
FROM EMPLOYEE
GROUP BY JOB ;

--04 MANAGER 수를 나열하시오. 칼럼의 별칭은 결과 화면과 동일하게 지정하시오
SELECT * FROM EMPLOYEE;
SELECT COUNT(JOB)
FROM EMPLOYEE
WHERE JOB = 'MANAGER';

--문제에 나온걸 출력 문제의 요지가 뭔지 모르겠내
SELECT COUNT(MANAGER)
FROM EMPLOYEE;

--정답
SELECT COUNT(distinct MANAGER)
FROM EMPLOYEE;

--05 급여 최고액, 급여 최저액의 차액을 출력하시오. 칼럼의 별칭은 결과 화면과 동일하게 지정하시오.
SELECT MAX(SALARY)-MIN(SALARY) DIFFRENCE
FROM EMPLOYEE;

--06 직급별 사원의 최저 급여를 출력하시오. 
--관리자를 알 수 없는 사원 및 최저 급여가 2000미만인 그룹은 제외시키고 결과를 급여에 대한 내립차순으로 정렬하여 출력하시오

SELECT JOB, MIN(SALARY)
FROM EMPLOYEE
WHERE  MANAGER IS NOT NULL
GROUP BY JOB
having min(salary)>2000
ORDER BY MIN(SALARY)DESC;

--PRESIDENT 는 MANAGER가 알 수 없지않나? 없잖아.

SELECT JOB, MIN(SALARY)
FROM EMPLOYEE
WHERE SALARY>2000 
GROUP BY JOB
ORDER BY MIN(SALARY)DESC;

-- 07 각 부서에 대해 부서번호, 사원수, 부서 내 모든 사원의 평균 급여를 출력하시오.
--칼럼의 별칭은 결과 화면과 동일하게 지정하고 평균 급여는 소수점 둘쨰자리로 반올림하시오.
SELECT * FROM EMPLOYEE;
SELECT DNO, COUNT(DNO) as "Number of People", ROUND(AVG(SALARY),2) as "Salary"
FROM EMPLOYEE
GROUP BY DNO
ORDER BY DNO;


select * from department;


--08번 각 부서에 대해 부서번호 이름, 지역명, 사원수, 부서내의 모든 사원의 평균 급여를 출력하시오.
--컬럼의 별칭은 결과 화면과 동일하게 지정하고 평균 급여는 정수로 반올림하시오.
SELECT Decode(dno, 10, 'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES', 40, 'OPERARIONS') Dname,
    Decode(dno, 10, 'NEW YORK', 20, 'DALLAS', 30, 'CHICAGO', 40, 'BOSTON') Location,
 COUNT(dno)"Number of People", ROUND(AVG(SALARY)) FROM EMPLOYEE
GROUP BY dno;
select * from employee;
--뭐야 이거

--09번 업무를 표시한 다음 해당 업무에 대해 부서번호별 급여 및 부서 10,20,30의 급여 총액을 각각 출력하시오.
--각 컬럼에 별칭은 각각 JPB, 부서 10, 부서 20, 부서 30, 총액으로 지정시오
SELECT job, dno, Decode(dno, 10, sum(salary), 0) as "부서 10", Decode(dno, 20, sum(salary), 0), Decode(dno, 30, sum(salary), 0) ,sum(salary)
from employee
GROUP BY job, dno
order by dno;








--복습
--1. 문자함수
--1.1 대소문자 변환함수
--upper('----'): 대문자 변환
select upper('abc') from dual;
select upper(ename) from employee;
--lower('---'): 소문자 변환
select lower('ABC') from dual;
select lower(ename) from employee;
--initcap('----') 앞글자만 대문자로하고 나머지 글자는 소문자로 변환한다.
select initcap('aASDasㅁdWE') FROM DUAL;
select initcap(ename) from employee;
--한글 넣으면 걍 쌩까고 넘어감

--1.2 문자의 길이를 반환하는 함수
select length('Oracle mania')
       , length('대한민국 만세')
       , lengthb('Oracle mania')
       , lengthb('대한민국 만세')
FROM DUAL;
-- length 문자 수를 리턴, lengthb 바이트를 리턴 그래서 한국어를 치면 3바이트여서 곱하기 3배 됨.

--1.3 문자 조작 함수
--concat은 2개 밖에 안된다.
select concat('oracle', ' oracle') as "concat"
--오라클은 숫자를 1번 부터 샌다. 1번 글자를 포함하여 2앞으로 2개를 잘라온다는 뜻.
, substr('oracle mania', 1, 2)
, substr('오라클 마니아', 1, 2) as "substr"
--substrb는 바이트를 잘라 추출한다. 1바이트인 영어는위와 동일하게 잘리나 2바이트인 한글은 3을 입력해야 비로소 잘라지며 한글 한글자를 자르기 위해선 3 단위로 움직여야 한다.
, substrb('oracle mania', 1, 2)
, substrb('오라클 마니아', 1, 2)
, substrb('오라클 마니아', 1, 3)
, substrb('오라클 마니아', 1, 5)
, substrb('오라클 마니아', 1, 6)
-- 위치에 - 넣으면 거꾸로 오른쪽에서 왼쪽으로 간다.
from dual;

select instr('oracle mania', 'a', 1, 1)
, instr('oracle mania', 'a')
--위는 서로 동일하다. 시작위치와 몇번쨰 발견을 입력하지 않으면 그냥 생략된다.
--이도 마찬가지로 발견위치를 - 로 치면 거꾸로 가며 읽어나가는 방향은 정수를 입력했을때와 동일하게
--오른쪽에서 왼쪽이다b 가 붙으면 위와 동일하게 바이트 단위로 리턴한다.
, instr('oracle mania', 'l', -1, 1)
from dual;


--왼쪽 *을 채워 도합 10자리의 값을 만든다. RPAD는 이와 동일.
select lpad(salary, 10, '*')
from employee;

--TRIM 함수
--TRIM ('-' FROM 'SANTANCE')
--이렇게 하면 센텐스 앞 뒤에 해당하는ㄴ '-'이 올 경우 이걸 전부 날리고간다
SELECT 
TRIM('O' FROM ' ORACLE MANIAO ')
FROM DUAL;
--아무것도 없으면 앞 뒤 공백 잘라서 간다.
SELECT 
TRIM(' ORACLE MANIAO ')
FROM DUAL;


--2 숫자 함수.
-- ROUND 반올림 함수, TRUNC 버림 함수
-- 해당 값, 반올림or버림할 자리 이런식으로 돌아가는데 앞에 instr이나 이나 substr 처럼 - 쓰면 뒤에서 부터 간다.

select round(93.12341, 2)
from dual;

select round(93.12341, -1)
,mod(10,3)
from dual;

--coalesce(n1, n2, n3, n4 ......)
--n1이 null이 아니면 n1을 리턴하고 끝낸다. 만약 null이면 n2로 이동하여 앞에서 했던 공정을 반복하여 null이 아닌 섹션이 나올때 까지 반복한다.
--만약 전부 null이면 강 null값을 리턴한다.
select coalesce(null, null, null)
from dual;




select * from employee;
--혼자해보기 문제 1
select hiredate, substr(hiredate, 1, 2) as "년", substr(hiredate, 4,2)"달"
from employee;

--혼자해보기 문제 2
select *
from employee
where substr(hiredate, 4,2)=04;

--3번문제
select *
from employee
where mod(eno, 2)=0;

--4번문제
select to_char(hiredate, 'yy-mon-dy')
from employee;

--5번 문제
select ROUND(sysdate-to_date(20210101, 'YYYY/MM/DD'))
from dual;

--6번문제
SELECT NVL(MANAGER, 0)
FROM EMPLOYEE;

--7번 문제 
SELECT JOB, SALARY, DECODE(JOB, 'ANALYST', SALARY+200, 'SALESMAN', SALARY+180, 'MANAGER', SALARY+150, SALARY)
FROM EMPLOYEE;