--01 모든 사원의 급여 최고액 최저액 총액 및 평균 급여를 ㄹ출력하시오 
--컬럼의 별칭은 결과 화면과 동일하게 지정하고 평균에 대해서는 정수로 반올림하시오
/*02 각 담당 업무 유형별로 급여 최고액 최저액 총액 및 평균액을 출력하시오. 컬럼의 별칭은 결과 화면과 동일하게
지정하고 평균에 대해서는 정수로 반올림 하시오*/
/*03 count() 함수를 이용하여 담당 업무가 동일한 사원수를 출력하시오*/
/*04 관리자 수를 나열하시오 컬럼과 별칭은 겨로가 화면과 동일하게 지정하시오*/
/*05 급여 최고액 급여 최저액의 차액을 출력하시오 컬럼의 별칭은 결과 화면과 동일하게 지정하시ㅗ=오*/
/*06 직급별 사원의 최저급여를 출력하시오 관리자를 알 수 없는 사원 및 최저
급여가 2000미만인 그룹은 제외시키고 결과를 급여에 대한 내림차순으로 정렬하여 출력하시오*/
/*07 각 부서에 대해 부서번호 사원수 부서 내의 모든 사원의 평균 급여를 출력하시오 컬럼의 
별칭은 결과 화멱놔 동일하게 지정하고 평균 급여는 소수점 둘쨰자리로 반올림 하시오*/
/*08각 부서에 대해 부서번호 이름 ,지역명, 사원수, 부서내의 모든 사원의 평균 급여를 출력하시오 컬럼의 별칭은
결과 화면과 동일하게 지정하고 평균 급여는 정수로 반올림하시오.*/




--01 모든 사원의 급여 최고액 최저액 총액 및 평균 급여를 ㄹ출력하시오 
--컬럼의 별칭은 결과 화면과 동일하게 지정하고 평균에 대해서는 정수로 반올림하시오
select max(salary), min(salary), sum(salary), round(avg(salary))
from employee;

/*02 각 담당 업무 유형별로 급여 최고액 최저액 총액 및 평균액을 출력하시오. 컬럼의 별칭은 결과 화면과 동일하게
지정하고 평균에 대해서는 정수로 반올림 하시오*/
select job, max(salary), min(salary), sum(salary), round(avg(salary))
from employee
group by job;
/*03 count() 함수를 이용하여 담당 업무가 동일한 사원수를 출력하시오*/
select job, count(*)
from employee
group by job;
/*04 관리자 수를 나열하시오 컬럼과 별칭은 겨로가 화면과 동일하게 지정하시오*/
select job, count(*)
from employee
where job='MANAGER'
group by job;
/*05 급여 최고액 급여 최저액의 차액을 출력하시오 컬럼의 별칭은 결과 화면과 동일하게 지정하시ㅗ=오*/
select max(salary)- min(salary) from employee;
 /*06 직급별 사원의 최저급여를 출력하시오 관리자를 알 수 없는 사원 및 최저
급여가 2000미만인 그룹은 제외시키고 결과를 급여에 대한 내림차순으로 정렬하여 출력하시오*/
select job, min(salary)
from employee
where manager is not null
group by job
having avg(salary)>=2000
order by min(salary) desc;
/*07 각 부서에 대해 부서번호 사원수 부서 내의 모든 사원의 평균 급여를 출력하시오 컬럼의 
별칭은 결과 화멱놔 동일하게 지정하고 평균 급여는 소수점 둘쨰자리로 반올림 하시오*/
SELECT dno, count(*), round(avg(salary),2)
from employee
group by dno
order by dno;


/*08각 부서에 대해 부서번호, 이름 ,지역명, 사원수, 부서내의 모든 사원의 평균 급여를 출력하시오 컬럼의 별칭은
결과 화면과 동일하게 지정하고 평균 급여는 정수로 반올림하시오.*/
select dno, dname, loc, count(*), round(avg(salary))
from employee  join department 
USING(dno)
group by dno, dname, loc
ORDER BY DNO DESC;

/*09 업무를 표시한 다음 해당 업무에 대해 부서번호별 급여 및 부서 10,20,30의 급여 총액을 각각 출력하시오
각 컬럼에 별칭은 각각 JOB, 부서 10, 부서 20, 부서 30, 총액으로 지정하시오*/

select job, dno, decode(dno, 10, sum(salary)) as "부서 10"
, decode(dno, 20, sum(salary)) as "부서 20"
, decode(dno, 30, sum(salary)) as "부서 30"
, sum(salary)
from employee
group by job, dno
order by dno;