/*종합문제*/
/*01 emp와 dept tableㅡㅇㄹ 조인하여 
부서번호 부서명 이름 급여를 출력하라*/
select e.eno, d.dname, e.ename, e.salary
from employee e, department d
where e.dno=d.dno;

/*02이름이 allen인 사원의 부서명을 출력하라*/
select d.dname
from employee e , department d
where e.dno= d.dno and e.ename='ALLEN';

/*03DEPT TABLE에 있는 모든 부서를 출력ㅎ고 EMP TABLE에 있는 DATA와 JOIN 하여 
모든 사원의 이름 부서번호 부서명 급여를 출력하라*/
SELECT e.ename, dno, d.dname, e.salary
from employee e natural join department d;

/*04 emp table에 있는 empno와 mgr을 이용하여 서로 관계를 다음과 같이 출력하라*/
select e.ename||'의 매니저는'||m.ename||'이다'
from employee e, employee m
where e.manager=m.eno;


/*05 allen의 직무와 같은 사람의 
이름, 부서명, 급여, 직무를 출력하라*/
select e.ename, d.dname, e.salary, e.job
from employee e natural join department d
where e.job=(select job from employee where ename='ALLEN');

/*06 JONES가 속해있는 부서의 모든 사람의 
사원번호, 이름, 입사일, 급여를 출력하라*/
select eno, ename, hiredate, salary
from employee
where dno=(select dno from employee where enamE='JONES');

/*07 전체 사원의 평균임금보다 많은 사원의
사원번호 이름 부서명 입사일 지역 급여를 출력하라*/
SELECT e.eno, e.ename, d.dname, e.hiredate, d.loc, e.salary
from employee e, department d
where e.dno=d.dno
and e.salary>(select avg(salary) from employee);

/*08 10번 부서 사함들 중에서 20번 부서와 같은 업무를 하는 사원의
사원번호 이름 부서명 입사일 지역을 출력하라*/
select e.eno, e.ename, d.dname, e.hiredate, d.loc
from employee e, department d
where e.dno=d.dno
and e.dno=10
and e.job in (select job from employee where dno=20);

/*09 10번 부서중에서 30번 부서에는 없는 업무를 하는 사원의 
사원번호, 이름, 부서명, 입사일, 지역을 출력하라.  (subquery)*/
select e.eno, e.ename, d.dname, e.hiredate, d.loc
from employee e, department d
where e.dno=d.dno
and e.dno=10
and e.job not in (select job from employee where dno=30);

select * from employee;

/*10번. 10번 부서와 같은 일을 하는 사원의 
사원번호, 이름 , 부서명, 지역, 급여를 급여가 많은 순으로 출력하라. (subquery)*/
select e.eno, e.ename, d.dname, d.loc, e.salary
from employee e join department d
on e.dno=d.dno
where job in (select job from employee where dno=10)
order by e.salary desc;

/*11번. MARTIN이나 SCOTT의 급여와 같은 
사원의 사원번호, 이름, 급여를 출력하라.  (subquery)*/
select eno, ename, salary
from employee
where salary in (
    select salary from employee where ename='MARTIN'
    UNION
    select salary from employee where ename='SCOTT'
    )
AND ename not in ('MARTIN', 'SCOTT');
--더 쉽게 가는거
select eno, ename, salary
from employee
where salary in (select salary from employee where ename in ('MARTIN', 'SCOTT'))
AND ename not in ('MARTIN', 'SCOTT');


/*12번. 급여가 30번 부서의 최고 급여보다 높은 사원의
사원번호, 이름, 급여를 출력하라.  (subquery)*/
SELECT ENO, ENAME, salary
from employee
where salary>(select max(salary) from employee where dno=30 group by dno);
--그룹은 안해줘도 됨
SELECT ENO, ENAME, salary
from employee
where salary>(select max(salary) from employee where dno=30);

/*13번. 급여가 30번 부서의 최저 급여보다 높은 사원의 
사원번호, 이름, 급여를 출력하라.  (subquery)*/
select eno, ename, salary
from employee
where salary>(select min(salary) from employee where dno=30 group by dno);

/*14번. EMP 테이블에서 부서 인원이 4명보다 많은 부서의 
부서번호, 인원수, 급여의 합을 출력하라. (HAVING)*/
select dno, count(*), sum(salary)
from employee
group by dno
having count(*)>4;

/*15번. EMP 테이블에서 가장 많은 사원이 속해있는 
부서번호와 사원수를 출력하라.(HAVING)*/
select dno, count(*)
from employee
group by dno
having count(*) = (select max(count(*)) from employee group by dno);

/*16번. EMP 테이블에서 가장 많은 사원을 갖는 MGR의 
사원번호를 출력하라.(HAVING)*/
select eno
from employee
where eno=(select manager from employee group by manager having count(*)=5);

select eno
from employee
where eno=(select manager from employee group by manager having count(*)=(select max(count(*)) from employee group by manager));


/*17번. EMP(employee) 테이블에서 부서번호가 10인 사원수와 부서번호가 30인 사원수를 각각 출력하라.( COUNT(DECODE(~  )

18번. EMP 테이블에서 사원번호가 7521인 사원의 직업과 같고 사원번호가 7934인 사원의 급여(SAL)보다 
         많은 사원의 사원번호, 이름, 직업, 급여를 출력하라.  (subquery)

19번. 직업(JOB)별로 최소 급여를 받는 사원의 정보를 사원번호, 이름, 업무, 부서명을 출력하라.  (subquery + group 함수)

20번. 각 사원 별 시급을 계산하여 부서번호, 사원이름, 시급을 출력하라.
      ( 조건1. 한달 근무일수는 20일, 하루 근무시간은 8시간이다. 
        조건2. 시급은 소수 두 번째 자리에서 반올림한다.
        조건3. 부서별로 오름차순 정렬,  조건4. 시급이 많은 순으로 출력 )    (산술식 + 함수)

21번. 각 사원 별 커미션이 0 또는 NULL이고 부서위치가 ‘GO’로 끝나는 사원의 정보를 
      사원번호, 사원이름, 커미션, 부서번호, 부서명, 부서위치를 출력하라.  ( 커미션이 NULL이면 0으로 출력 )

22번. 각 부서 별 평균 급여가 2000 이상이면 초과, 그렇지 않으면 미만을 출력하라.  (그룹함수 CASE WHEN 사용)
             (참고> CASE WHEN AVG(salary) > 2000 THEN '초과'  )

23번. 각 부서 별 입사일이 가장 오래된 사원을 한 명씩 선별해 사원번호, 사원명, 부서번호, 입사일을 출력하라. (그룹함수)
*/


/*17번 EMP 테이블에서 부서번호가 10인 사원수와 부서번호가30인 
사원수를 각각 출력하라*/
SELECT COUNT(DECODE(DNO, 10, 1)) as "10인 사원 수", COUNT(DECODE(DNO, 30, 1)) as "30인 사원 수"
FROM EMPLOYEE;


/*18번. EMP 테이블에서 사원번호가 7521인 사원의 직업과 같고 사원번호가 7934인 사원의 급여(SAL)보다 
         많은 사원의 사원번호, 이름, 직업, 급여를 출력하라.  (subquery)*/
SELECT eno, ename, job, salary
from employee
where job=(select job from employee where eno=7521) and salary>(select salary from employee where eno=7934);

/*19번. 직업(JOB)별로 최소 급여를 받는 사원의 정보를 
사원번호, 이름, 업무, 부서명을 출력하라.  (subquery + group 함수)*/
select e.eno, e.ename, e.job, d.dname, e.salary
from employee e natural join department d
where (job, salary) in (select job , min(salary) from employee group by job);

/*20번. 각 사원 별 시급을 계산하여 
부서번호, 사원이름, 시급을 출력하라.
      ( 조건1. 한달 근무일수는 20일, 하루 근무시간은 8시간이다. 
        조건2. 시급은 소수 두 번째 자리에서 반올림한다.
        조건3. 부서별로 오름차순 정렬, 
        조건4. 시급이 많은 순으로 출력 )    (산술식 + 함수)*/
select eno, dno,ename, round(((salary/20)/8), 1)
from employee
order by dno, round(((salary/20)/8), 1) desc;

/*21번. 각 사원 별 커미션이 0 또는 NULL이고 부서위치가 ‘GO’로 끝나는 사원의 정보를 
      사원번호, 사원이름, 커미션, 부서번호, 부서명, 부서위치를 출력하라.  ( 커미션이 NULL이면 0으로 출력 )*/
select e.eno, e.ename, nvl(e.commission, 0), dno, d.dname, d.loc
from employee e natural join department d
where (e.commission IS NULL or e.commission=0) and d.loc like '%GO';

/*22번. 각 부서 별 평균 급여가 2000 이상이면 초과, 그렇지 않으면 미만을 출력하라.  (그룹함수 CASE WHEN 사용)
             (참고> CASE WHEN AVG(salary) > 2000 THEN '초과'  )*/
select dno,case when avg(salary)>=2000 then '초과'
                when avg(salary)<2000 then '미만'
                end
from employee
group by dno;

/*23번. 각 부서 별 입사일이 가장 오래된 사원을 한 명씩 선별해 
사원번호, 사원명, 부서번호, 입사일을 출력하라. (그룹함수)*/
select eno, ename, dno, hiredate
from employee
where (dno, hiredate) in (select dno, min(hiredate) from employee group by dno) ;




---############################################꽉잡아###################


/*24번. 1980년~1982년 사이에 입사된 각 부서별 사원수를 부서번호, 부서명, 입사1980, 입사1981, 입사1982로 출력하라. (그룹함수)
25번. 1981년 5월 31일 이후 입사자 중 커미션이 NULL이거나 0인 사원의 커미션은 500으로 그렇지 않으면
      기존 커미션을 출력하라.(DECODE)
26번. 1981년 6월 1일 ~ 1981년 12월 31일 입사자 중 부서명이 SALES인 사원의 부서번호, 사원명, 직업, 입사일을 출력하라.
        조건1. 입사일 오름차순 정렬    
27번. "현재시간"과 현재 시간으로부터 "한시간후"의 시간을 출력하라.
       조건1. "현재시간" 포맷은 ‘4자리년-2자일월-2자리일 24시:2자리분:2자리초’로 출력
       조건2. "한시간후" 포맷은 ‘4자리년-2자일월-2자리일 24시:2자리분:2자리초’로 출력 
28번. 각 부서별 사원수를 출력하라. (group by  dno, dname)  (참고. 부서기준  아우터 조인 포함할것)
       조건1. 부서별 사원수가 없더라도 부서번호, 부서명은 출력   decode(count(
       조건2. 부서별 사원수가 0인 경우 ‘없음’ 출력
       조건3. 부서번호 오름차순 정렬
29. 사원 테이블에서 각 사원의 사원번호, 사원명, 매니저번호, 매니저명을 출력하라.
       조건1. 각 사원의 급여(SAL)는 매니저 급여보다 많거나 같다.
30. 사원명의 첫 글자가 ‘A’이고, 처음과 끝 사이에 ‘LL’이 들어가는 사원의 커미션이 COMM2일때, 
    모든 사원의 커미션에 COMM2를 더한 결과를 사원명, commission, COMM2, COMM+COMM2로 출력하라.
31. 각 부서별로 1981년 5월 31일 이후 입사자의 부서번호, 부서명, 사원번호, 사원명, 입사일을 출력하시오.
     조건1. 부서별 사원정보가 없더라도 부서번호, 부서명은 출력
     조건2. 부서번호 오름차순 정렬
     조건3. 입사일 오름차순 정렬
     24번. 1980년~1982년 사이에 입사된 각 부서별 사원수를 부서번호, 부서명, 입사1980, 입사1981, 입사1982로 출력하라. (그룹함수)
25번. 1981년 5월 31일 이후 입사자 중 커미션이 NULL이거나 0인 사원의 커미션은 500으로 그렇지 않으면
      기존 커미션을 출력하라.(DECODE)
26번. 1981년 6월 1일 ~ 1981년 12월 31일 입사자 중 부서명이 SALES인 사원의 부서번호, 사원명, 직업, 입사일을 출력하라.
        조건1. 입사일 오름차순 정렬    
27번. "현재시간"과 현재 시간으로부터 "한시간후"의 시간을 출력하라.
       조건1. "현재시간" 포맷은 ‘4자리년-2자일월-2자리일 24시:2자리분:2자리초’로 출력
       조건2. "한시간후" 포맷은 ‘4자리년-2자일월-2자리일 24시:2자리분:2자리초’로 출력 
28번. 각 부서별 사원수를 출력하라. (group by  dno, dname)  (참고. 부서기준  아우터 조인 포함할것)
       조건1. 부서별 사원수가 없더라도 부서번호, 부서명은 출력   decode(count(
       조건2. 부서별 사원수가 0인 경우 ‘없음’ 출력
       조건3. 부서번호 오름차순 정렬
29. 사원 테이블에서 각 사원의 사원번호, 사원명, 매니저번호, 매니저명을 출력하라.
       조건1. 각 사원의 급여(SAL)는 매니저 급여보다 많거나 같다.
30. 사원명의 첫 글자가 ‘A’이고, 처음과 끝 사이에 ‘LL’이 들어가는 사원의 커미션이 COMM2일때, 
    모든 사원의 커미션에 COMM2를 더한 결과를 사원명, commission, COMM2, COMM+COMM2로 출력하라.
31. 각 부서별로 1981년 5월 31일 이후 입사자의 부서번호, 부서명, 사원번호, 사원명, 입사일을 출력하시오.
     조건1. 부서별 사원정보가 없더라도 부서번호, 부서명은 출력
     조건2. 부서번호 오름차순 정렬
     조건3. 입사일 오름차순 정렬
30년, 30.7년=30년)

*/

    /*1980~1982년 사이에 입사된 각 부서별 
    사원수를 부서번호 부서명 입사 1980, 입사 1981, 입사 1982로 출력하라*/
    select e.dno, d.dname
        ,count(decode(to_char(e.hiredate, 'YYYY'), '1980', 0)) AS "입사1980"
        ,count(decode(to_char(e.hiredate, 'YYYY'), '1981', 0)) AS "입사1981"
        ,count(decode(to_char(e.hiredate, 'YYYY'), '1982', 0)) AS "입사1982"
    from employee e, department d
    where e.dno=d.dno
    and e.hiredate between to_date(19800101) and to_date(19821231)
    group by E.dno, d.dname;
/*25번. 1981년 5월 31일 이후 입사자 중 커미션이 NULL이거나 0인 사원의 커미션은 500으로 그렇지 않으면
      기존 커미션을 출력하라.(DECODE)*/
select ename, decode(commission, 0, 500, null, 500, commission), hiredate
from employee
where hiredate>'1981/05/31';
      
/*26번. 1981년 6월 1일 ~ 1981년 12월 31일 입사자 중 부서명이 SALES인 
사원의 부서번호, 사원명, 직업, 입사일을 출력하라.
        조건1. 입사일 오름차순 정렬 */
    
select dno, ename, job, hiredate
from employee
where (hiredate>='1981/06/01' and hiredate<'1981/12/31') and dno=(select dno from department where dname='SALES')
ORDER BY HIREDATE;

    /*27번. "현재시간"과 현재 시간으로부터 "한시간후"의 시간을 출력하라.
           조건1. "현재시간" 포맷은 ‘4자리년-2자일월-2자리일 24시:2자리분:2자리초’로 출력
           조건2. "한시간후" 포맷은 ‘4자리년-2자일월-2자리일 24시:2자리분:2자리초’로 출력 */
    select to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS') 현재시간
        , to_char(sysdate+1/24, 'YYYY-MM-DD HH24:MI:SS') 한시간후
    FROM DUAL;

    /*28번. 각 부서별 사원수를 출력하라. (group by  dno, dname)  (참고. 부서기준  아우터 조인 포함할것)
           조건1. 부서별 사원수가 없더라도 부서번호, 부서명은 출력   decode(count(
           조건2. 부서별 사원수가 0인 경우 ‘없음’ 출력
           조건3. 부서번호 오름차순 정렬*/
    SELECT D.DNO, D.DNAME, DECODE(count(E.ENO), 0, '없음', COUNT(E.ENO))
    FROM EMPLOYEE e, department d
    where e.dno(+)=d.dno
    group by D.dno, d.dname
    ORDER BY D.DNO;
    select * from employee;
    select * from department;
/*29. 사원 테이블에서 각 사원의 사원번호, 사원명, 매니저번호, 매니저명을 출력하라.
       조건1. 각 사원의 급여(SAL)는 매니저 급여보다 많거나 같다.*/
select e.eno, e.ename, e.salary, e.manager, m.ename, m.salary
from employee e, employee m
where e.manager=m.eno
and e.salary>=m.salary;

/*30. 사원명의 첫 글자가 ‘A’이고, 처음과 끝 사이에 ‘LL’이 들어가는 사원의 커미션이 COMM2일때, 
    모든 사원의 커미션에 COMM2를 더한 결과를 사원명, commission, COMM2, COMM+COMM2로 출력하라.*/
select commission, (select commission from employee where ename like 'A%' and ename like '%LL%') AS "COMM2"
    , NVL(commission,0)+(select commission from employee where ename like 'A%' and ename like '%LL%') AS "COMM+COMM2"
FROM EMPLOYEE;

    /*31. 각 부서별로 1981년 5월 31일 이후 입사자의 부서번호, 부서명, 사원번호, 사원명, 입사일을 출력하시오.
         조건1. 부서별 사원정보가 없더라도 부서번호, 부서명은 출력
         조건2. 부서번호 오름차순 정렬
         조건3. 입사일 오름차순 정렬*/
    select D.dno, d.dname, e.eno, e.ename, e.hiredate
    from employee e, department d
    where e.dno(+)=d.dno
    and hiredate>'81/05/31'
    order by D.dno, e.hiredate;
    select * from department
-- ON에 조건 발라서 구현
select d.dno, d.dname, e.eno, e.ename, e.hiredate
from employee e RIGHT OUTER JOIN department d
ON e.dno = d.dno
and to_char(e.hiredate, 'YYYYMMDD')> '19810531'
order by d.dno, e.hiredate;

    
/**/



select D.dno, d.dname, e.eno, e.ename, e.hiredate
    from employee e, department d
    where e.dno(+)=d.dno
    and hiredate>'81/05/31'
    order by D.dno, e.hiredate;
    
    
    
    
    
    
    
    
    


