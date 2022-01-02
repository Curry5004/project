-- 01
select e.dno, d.dname
from employee e, department d
where e.dno=d.dno
and e.ename='SCOTT';

--02
select e.ENAME, d.dname, d.LOC
from employee e join department d
on e.dno=d.dno;

--03
select dno, e.job, d.LOC
from employee e join department d
using(dno)
where dno=10;

--04
select e.ename, e.job, d.LOC
from employee e natural join department d 
where e.commission>0;

--05 
SELECT e.ename, d.dname
from employee e natural join department d
where e.ename like '%A%';

SELECT e.ename, d.dname
from employee e, department d
where e.dno=d.dno 
AND e.ename like '%A%';



--06
select e.ename, e.job, dno, d.dname
from employee e natural join department d
where d.loc = 'NEW YORK';

--07
SELECT e.ename, e.eno, m.ename, m.eno
from employee e, employee m
where e.manager=m.eno;


--08 
select e.eno, e.ename, m.eno, m.ename
from employee e, employee m
where e.manager=m.eno(+);

--09
select *
from employee s, employee c
where s.DNO=c.DNO
and s.ename='SCOTT'
AND C.ENAME !='SCOTT';

--10
SELECT *
FROM EMPLOYEE W , EMPLOYEE C
WHERE W.HIREDATE<C.HIREDATE
AND W.ENAME='WARD';

--11
SELECT *
FROM EMPLOYEE E, EMPLOYEE M
WHERE E.HIREDATE<M.HIREDATE
AND E.MANAGER=M.ENO;