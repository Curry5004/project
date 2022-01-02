17번. EMP(employee) 테이블에서 부서번호가 10인 사원수와 부서번호가 30인 사원수를 각각 출력하라.( COUNT(DECODE(~  )
select count(decode(dno, 10, 0)) as "10인 사원수"
     , count(decode(dno, 30, 0)) as "30인 사원수" 
  from employee;   
     
18번. EMP 테이블에서 사원번호가 7521인 사원의 직업과 같고 사원번호가 7934인 사원의 급여(SAL)보다 
         많은 사원의 사원번호, 이름, 직업, 급여를 출력하라.  (subquery)
select eno, ename, job, salary
  from employee
 where job = (select job from employee where eno = 7521)
   and salary > (select salary from employee where eno = 7934);

19번. 직업(JOB)별로 최소 급여를 받는 사원의 정보를 사원번호, 이름, 업무, 부서명을 출력하라.  (subquery + group 함수)
select e.eno, e.ename, e.job, d.dname  
  from employee e, department d
 where e.dno = d.dno
   and salary in (select MIN(salary) from employee group by job);
 
20번. 각 사원 별 시급을 계산하여 부서번호, 사원이름, 시급을 출력하라.
      ( 조건1. 한달 근무일수는 20일, 하루 근무시간은 8시간이다. 
        조건2. 시급은 소수 두 번째 자리에서 반올림한다.
        조건3. 부서별로 오름차순 정렬,  조건4. 시급이 많은 순으로 출력 )    (산술식 + 함수)
        
select dno
     , ename
     , round( ((salary/20)/8) , 1) 시급
  from employee
 order by dno, 시급 desc;


21번. 각 사원 별 커미션이 0 또는 NULL이고 부서위치가 ‘GO’로 끝나는 사원의 정보를 
      사원번호, 사원이름, 커미션, 부서번호, 부서명, 부서위치를 출력하라.  ( 커미션이 NULL이면 0으로 출력 )
select e.eno, e.ename, nvl(e.commission, 0) 커미션, e.dno, d.dname, d.loc
  from employee e, department d
 where e.dno = d.dno
   and (e.commission = 0 or e.commission is null)
   and d.loc like '%GO';

22번. 각 부서 별 평균 급여가 2000 이상이면 초과, 그렇지 않으면 미만을 출력하라.  (그룹함수 CASE WHEN 사용)
             (참고> CASE WHEN AVG(salary) > 2000 THEN '초과'  )

select dno
     , CASE WHEN AVG(salary) > 2000 THEN '초과'
       ELSE '미만'
       END   as "2000 미만 초과"
  from employee
 group by dno;

23번. 각 부서 별 입사일이 가장 오래된 사원을 한 명씩 선별해 사원번호, 사원명, 부서번호, 입사일을 출력하라. (그룹함수)   
select eno, ename, dno, hiredate 
  from employee
where hiredate in (select min(hiredate) from employee group by dno);


/* ###########################################################  */
24번. 1980년~1982년 사이에 입사된 각 부서별 사원수를 부서번호, 부서명, 입사1980, 입사1981, 입사1982로 출력하라. (그룹함수)

select e.dno
     , d.dname
     , COUNT(DECODE(TO_CHAR(e.hiredate, 'YYYY'), '1980', 0)) 입사1980
     , COUNT(DECODE(TO_CHAR(e.hiredate, 'YYYY'), '1981', 0)) 입사1981
     , COUNT(DECODE(TO_CHAR(e.hiredate, 'YYYY'), '1982', 0)) 입사1982
  from employee e, department d
 where e.dno = d.dno
   and e.hiredate between to_date(19800101) and to_date(19821231)
 group by e.dno, d.dname;
 
 
25번. 1981년 5월 31일 이후 입사자 중 커미션이 NULL이거나 0인 사원의 커미션은 500으로 그렇지 않으면
      기존 커미션을 출력하라.(DECODE)
  
  select ename
       , commission
       , (commission, null, 500, 0,  500, commission) 커미션 
       , hiredate
    from employee
   where hiredate > to_date(19810531);  
      
26번. 1981년 6월 1일 ~ 1981년 12월 31일 입사자 중 부서명이 SALES인 사원의 부서번호, 사원명, 직업, 입사일을 출력하라.
        조건1. 입사일 오름차순 정렬 
        
 select e.dno, e.ename, e.job, e.hiredate         
   from employee e, department d
  where e.dno = d.dno
    and e.hiredate >= TO_DATE(19810601)
    and e.hiredate <= TO_DATE(19811231)
    and d.dname = 'SALES'   
  order by hiredate;
   
27번. "현재시간"과 현재 시간으로부터 "한시간후"의 시간을 출력하라.
       조건1. "현재시간" 포맷은 ‘4자리년-2자일월-2자리일 24시:2자리분:2자리초’로 출력
       조건2. "한시간후" 포맷은 ‘4자리년-2자일월-2자리일 24시:2자리분:2자리초’로 출력 
 SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') 현재시간
      , TO_CHAR(SYSDATE + 1/24, 'YYYY-MM-DD HH24:MI:SS') 한시간후
   FROM dual;
       
       
28번. 각 부서별 사원수를 출력하라. (group by  dno, dname)  (참고. 부서기준  아우터 조인 포함할것)
       조건1. 부서별 사원수가 없더라도 부서번호, 부서명은 출력   decode(count(
       조건2. 부서별 사원수가 0인 경우 ‘없음’ 출력
       조건3. 부서번호 오름차순 정렬
 
 select d.dno, d.dname
      , DECODE(COUNT(e.eno), 0 ,'없음', count(e.eno)) 사원수
   from department d, employee e
  where d.dno = e.dno(+)
  group by d.dno, d.dname
  order by d.dno;
  
29. 사원 테이블에서 각 사원의 사원번호, 사원명, 매니저번호, 매니저명을 출력하라.
       조건1. 각 사원의 급여(SAL)는 매니저 급여보다 많거나 같다.
select e.eno, e.ename, e.manager, m.ename      
  from employee e, employee m
 where e.manager = m.eno 
   and e.salary >= m.salary;
       
30. 사원명의 첫 글자가 ‘A’이고, 처음과 끝 사이에 ‘LL’이 들어가는 사원의 커미션이 COMM2일때, 
    모든 사원의 커미션에 COMM2를 더한 결과를 사원명, commission, COMM2, COMM+COMM2로 출력하라.
  select ename
       , commission
       , (select commission from employee where ename like 'A%LL%') COMM2
       , DECODE(commission, null, 0, commission) +   -- 모든 사원의 커미션
         (select commission from employee where ename like 'A%LL%') "COMM + COMM2" 
    from employee; 
    
31. 각 부서별로 1981년 5월 31일 이후 입사자의 부서번호, 부서명, 사원번호, 사원명, 입사일을 출력하시오.
     조건1. 부서별 사원정보가 없더라도 부서번호, 부서명은 출력
     조건2. 부서번호 오름차순 정렬
     조건3. 입사일 오름차순 정렬

 select e.dno, d.dname, e.eno, e.ename, e.hiredate     
   from department d, employee e 
  where d.dno = e.dno(+)    
    and TO_CHAR(e.hiredate, 'YYYYMMDD') > '19810531' 
  order by e.dno, e.hiredate;  
  
select *
 from (
     select e.dno, d.dname, to_char(e.eno, '9999') eno, e.ename, to_char(e.hiredate, 'yyyy-mm-dd') hiredate      
       from department d, employee e 
      where d.dno = e.dno(+)    
        and TO_CHAR(e.hiredate, 'YYYYMMDD') > '19810531' 
        
     union all
     
     select dno, dname, '' eno, ' ' ename,'' hiredate     
     from (
     select d.dno, d.dname
          , DECODE(COUNT(e.eno), 0 ,'없음', count(e.eno)) 사원수
       from department d, employee e
      where d.dno = e.dno(+)
      group by d.dno, d.dname )
    where 사원수 = '없음'
)
order by dno, hiredate;
  
  
  
  
  
  
  
  
  
  
  
     
32. 입사일로부터 지금까지 근무년수가 30년 이상인 사원의 사원번호, 사원명, 입사일, 근무년수를 출력하라.
     조건1. 근무년수는 월을 기준으로 버림 (예:30.4년 = 30년, 30.7년=30년)

  select eno, ename, hiredate, TRUNC( (SYSDATE - HIREDATE) / 365 ) 근무년수
   from employee
  where TRUNC( (SYSDATE - HIREDATE) / 365 ) >= 30;
  
  








