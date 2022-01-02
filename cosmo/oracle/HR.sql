select distinct dno from employee;

select * from dual;

select sysdate from dual;

select * from employee
where dno =1 or job = 'MANAGER';

SELECT * FROM EMPLOYEE
WHERE NOT DNO = 10;

SELECT * FROM EMPLOYEE
WHERE  DNO  <> 10;
-- 이게 주석처리
/*여러줄 주석도 있음
*/
SELECT * FROM EMPLOYEE
WHERE  DNO  != 10;
 
 
 --btween 연산자 사용
SELECT * FROM EMPLOYEE
WHERE SALARY >= 1000 AND SALARY <= 1500;

select * from employee
where SALARY between 1000 and 1500;
--서로 같다



--not between 사용
SELECT * FROM EMPLOYEE
WHERE SALARY <1000 OR SALARY> 1500;

select * from employee
where salary not between 1000 and 1500;


-- 커미션이 300 이거나 500이거나 1400인 사원 출력하기
select * from employee
where commission = 300 or commission=500 or commission =1400;

-- in 연산자 {a, b, c} 이 중 하나라도 일치하면 연산되는 연산자.
 select * from employee
  where commission in (300, 500, 1400);




--1982년에 입사한 사원 출력하기
 select * from employee
 where hiredate between '1982/01/01' and '1982/12/31';


 --like 연산자. 와일드 카드. 라이크 연산자랑 퍼센트 연산자를 함꼐 사용한다.
 --이름이 f로 시작하는 사원 출력하기.
select * from employee
where ename like 'F%';

--이름 중간에 M이 포함되어있는 사원 출력하기.
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%M%';

--이름이 N으로 끝나는 사원 출력하기
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%N';


--이름의 두번째 글자가 A인 사원 출력하기.
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '_A%';

--이름의 세 번째 글자가 A인 사원 출력하기.
SELECT * FROM EMPLOYEE
--언더바 하나당 한글자!!!!!!!!
WHERE ENAME LIKE '__A%';

--사람 이름에 A가 포함되지 않는 직원 출력하기
SELECT * FROM EMPLOYEE
WHERE ENAME NOT LIKE '%A%';




--커미션이 0인사람을 조회하기
--잘못된 접근
SELECT * FROM EMPLOYEE
WHERE COMMISSION = NULL;

--올바른 접근
--이게 가장 일으키기 쉬운 오류.
SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NULL;

SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL;

--NULL 같은 경우는 등호를 바로 쓰면 안되고 IS를 쓰거나 IS NOT을 사용하여 확인해야 한다.

--IS LIKE BETWEEN  이렇게 가장 많이 씀.


--오름차순으로 정렬.
SELECT * FROM EMPLOYEE
ORDER BY SALARY ASC;
--ORDER BY의 경우 기본적으로 오른차순이기에 ASC 를 붙이지 않고 돌려도 결과는 동일하다.
SELECT * FROM EMPLOYEE
ORDER BY SALARY;

--내림차순으로 정렬
SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC;

SELECT * FROM EMPLOYEE
ORDER BY ENAME;

SELECT * FROM EMPLOYEE
ORDER BY HIREDATE DESC;

--두가지 조건을 조합해서 진행 할 수 있다.
--셀러리는 내림차순으로 되면서 가틍ㄴ 이름인 경우 이름이 오른 차순이 되ㅗ록 조합되어서 출력되도록 코딩
SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC, ENAME ASC;

--어려운건 그렇게 많지 않을 것이다 여기서 중요한 것은 나의 응용력을 기르는 것이 중요하다.

--211130 1545 연습문제 풀이 시작

--1번
SELECT ename, salary, salary+300 FROM employee;

--2번 
select ename, salary, salary*12+100 총수입 from employee
order by 총수입 desc;

--3번
select ename, salary from employee
where salary>=2000 order by salary desc;

--4번
select ename, dno from employee
where eno=7788;

--5번
select ename, salary from employee
where salary not between 2000 and 3000;

--6번
select * from employee;

select ename, job, hiredate from employee
--날짜 넣을 땐 '' 로 꼭 표기줘야함
where hiredate between '81/02/20' and '81/05/01';


--7번
select ename, dno from employee
where dno between 20 and 30 order by ename desc;

--8번
select ename, salary, dno 
  from employee
WHERE dno in(20, 30) and salary between 2000 and 3000 ORDER BY ENAME;

--9번
select ename, hiredate from employee
where hiredate like '81%';

--10번
select ename, job from employee
where manager is null;

--11번
select * from employee;

select ename, salary, commission from employee
where commission is not null order by salary desc, commission desc ;

--시간내로 다 못품ㅋㅋㅋㅋㅋㅋㅋㅋ

--1. 부서번호 10번인 사원들의 사원번호, 사원이름, 월급을 출력하시오
select eno, ename, salary from employee
where dno=10;
--2.  사원번호 7369인 사원 이름 입사일, 부서번호를 출력
select ename, hiredate, dno from employee
where eno=7369;

--3. 사원번호 7300보다 크고 7400 보다 작은 사원 이름, 입사일, 부서번호 출력
select ename, hiredate, dno from employee
where eno>7300 and  eno<7400;

--4. employee의 모든 정보를 사원번호 기준 내림차순으로 검색하시오
select * from employee
order by eno desc;

--5. 이름이 s로 시작하는 모든 사람의 사원번호와 이름을 출력하시오
select eno, ename from employee
where ename like 'S%';
--6. 직속상관 사원번호가 없는 사원의 모든 정보를 검색하시오
select * from employee
where manager is null;



--1 직책이  SALESMAN ANALYST 사람의 든 정보를 출력하시오 ( OR, LIKE IN 3가지 전부 사용)
select * from employee
where job='SALESMAN' OR job='ANALYST';

select * from employee
where job like 'SALESMAN' OR job like'ANALYST';

select * from employee
where job in ('SALESMAN', 'ANALYST');


--2 1981년 5월 1일 ~ 1982년 2월 사이에 입사한 사원들의 모든 정보를 부서번호(오름차순) 으로 검색하ㅣ오
select * from employee
where hiredate between '81/05/01' and '82/02/01'
order by dno asc;

--3 81년에 입사한 사원의 이름과 사원 번호를 출력하는데 사원번호가 내림차순으로 정렬하시오.
select ename, eno from employee
where hiredate like '81%'
order by eno desc;

--4 직급이 salesman인 사원의 급여인상율 (급여 1.1)로 해서 이름, 입사일, 급여를 출력하시오
select ename, hiredate,salary, salary*1.1 as 급여인상 from employee
where job = 'SALESMAN';
--5 모든 사원들에게 커미션ㅇㄹ 200씩 추가하여 사원이름 , 커미션 값을 출력하시오
select ename, nvl(COMMISSION, 0), nvl(COMMISSION, 0)+200 from employee;
--6 커미션을 가지고 있는 사원은 y, 커미션이 null값인 사원은 n을 포함하여 사원 이름과 커미션 값을 출력하시오 (nvl2)
select ename, nvl2(commission, 'Y', 'N') from employee;
--nvl2는 db링크로 쓸 수 없음.

--7 1981년 입사자들의 평균임금 (AVG(salary))를 출력하시오
select (AVG(salary)) from employee
where hiredate like '81%';

--8 사원번호, 사원이름, 총 급여 (salary+commission)을 출력하시오 (commission null 처리)
select eno, ename, nvl(commission, 0)+salary 총급여 from employee;