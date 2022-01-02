set serveroutput on
begin
    dbms_output.put_line('Welcome to Oracle');
end;
/
select * from employee
where ename = 'SCOTT';


-- Chapter 14 PL/SQL


-- 사원번호와사원이름 출력하기 

set serveroutput on;
declare
 v_eno employee.eno%type;
 v_ename employee.ename%type;
begin
 dbms_output.put_line('사원번호 사원이름');
 dbms_output.put_line('------------------------------');
 select eno, ename into v_eno, v_ename
  from employee
 where ename = 'SCOTT';
 dbms_output.put_line(v_eno || '    ' || v_ename);
end;


-- IF ~ END IF 문으로 연봉 계산하기
set serveroutput on 
declare 
  v_employee employee%rowtype; 
  temp number(4) := 1; 
  annsal number(7,2); 
begin 
  select * into v_employee 
   from employee 
 where ename='SCOTT';
 
  if (v_employee.commission is null ) then 
    v_employee.commission := 0; 
  end if; 
 
  annsal:=v_employee.salary * 12 + v_employee.commission; 
 
  dbms_output.put_line('사원번호 사원이름 연봉') ; 
  dbms_output.put_line('------------------------------------'); 
  dbms_output.put_line(v_employee.eno || '   ' ||
v_employee.ename || '    ' || annsal); 
end; 
/ 

-- ELSIF '" END IF 뭄으로 연봉 계산하기
 set serveroutput on 
 declare 
   v_eno employee.eno%type; 
   v_ename employee.ename%type; 
   v_dno employee.dno%type; 
   v_dname varchar2 (20) := null; 
 
begin 
 
  select eno, ename, dno 
    into v_eno, v_ename, v_dno 
    from employee 
  where ename='SCOTT'; 
 
  if (v_dno = 10) then 
    v_ename := 'ACCOUNTING'; 
  elsif (v_dno = 20) then 
    v_ename := 'RESEARCH'; 
  elsif (v_dno = 30) then 
    v_ename := 'SALES'; 
  elsif (v_dno = 40) then 
    v_ename := 'OPERATIONS'; 
  end if; 
 
  dbms_output.put_line('사원 번호  이름 부서명 '); 
  dbms_output.put_line(v_eno || '     ' || v_ename ||  '     ' || v_dname); 

end; 

 --BASIC LOOP.로 구구단 출력하기

set serveroutput on 
declare 
  dan number := 2; 
  i number := 1; 
begin 
  loop 
    dbms_output.put_line( dan || ' * ' ||  i || ' = ' || (dan*i) ); 
    i := i + 1;
    
    if i > 9 then 
      exit; 
    end if; 
  end loop; 
end; 
/ 

-- FOR LOOP로 구구댄 단) 흩력하기

set serveroutput on 
declare 
  dan number := 2; 
  i number := 1; 
begin 
  for i in 1..9 loop 
     dbms_output.put_line( dan || ' * ' ||  i || ' = ' || (dan*i) ); 
  end loop; 
end; 
/ 


-- WHILE LOOP.로 구구단(2단) 훌력하기
set serveroutput on 
declare 
  dan number := 2; 
  i number := 1; 
begin 
  while i <= 9 loop
    dbms_output.put_line( dan || ' * ' ||  i || ' = ' || (dan*i) ); 
    i := i + 1;
  end loop; 
end; 
/ 


-- 커서로 테이블의 모든 내용 조회하기 
set serveroutput on 
declare 
v_dept department%rowtype; 
cursor c1 
is 
select * from department ;
begin 
  dbms_output.put_line('부서번호 부서명 지역명'); 
  dbms_output.put_line('-------------------------');
open c1; 
loop 
  fetch c1 into v_dept. dno, v_dept. dname, v_dept.loc; 
  exit when c1%notfound; 
  dbms_output.put_line(v_dept.dno || '   ' || v_dept.dname || '   ' || v_dept.loc); 
end loop; 
close c1; 
end; 
/


-- cursor for loop로 테이블의 모든 내용 조회하기 

set serveroutput on 
declare 
v_dept department%rowtype; 
cursor c1 
is 
select * from department ;
begin 
  dbms_output.put_line('부서번호 부서명 지역명'); 
  dbms_output.put_line('-------------------------');
  for v_dept in c1 loop 
    exit when c1 %notfound; 
    dbms_output.put_line(v_dept.dno || '   ' || v_dept.dname || '   ' || v_dept.loc); 
  end loop; 
end; 
/




문제 1) 직원번호가 7900  인 직원정보를 출력해보세요
  -- v_no||' '||v_name||' '||v_sal 
set serveroutput on  
declare
  v_no   employee.eno%type;
  v_name employee.ename%type;
  v_sal  employee.salary%type;
begin
  select eno, ename, salary
    into v_no, v_name, v_sal
    from employee
   where eno = 7900;
 
  dbms_output.put_line('직원번호     직원명          급여');
  dbms_output.put_line('--------------------------------------------');
  dbms_output.put_line(v_no || '    ' || v_name || '     ' || v_sal);
end;
/

문제 2) 직원번호가 7900  인 직원정보를  ROWTYPE 변수를 활용하여 데이터 출력해보세요
  -- v_row employee%ROWTYPE ;
set serveroutput on  
declare
  v_row employee%ROWTYPE ;  
begin
  select * into v_row
    from employee
   where eno = 7900;

  dbms_output.put_line('직원번호     직원명          급여');
  dbms_output.put_line('--------------------------------------------');
  dbms_output.put_line(v_row.eno || '    ' || v_row.ename || '     ' || v_row.salary );
end;
  
  
문제 3) employee, department를 조인해서 직원번호가 7900인 사람의 정보를 출력해보세요
(v_empno||' '||v_ename||' '||v_deptno||' '||v_dname)

set serveroutput on  
declare
  v_empno  employee.eno%TYPE ;
  v_ename  employee.ename%TYPE ;
  v_deptno department.dno%TYPE ;
  v_dname  department.dname%TYPE ;
begin
  select e.eno, e.ename, d.dno, d.dname
    into v_empno, v_ename, v_deptno, v_dname
    from employee e, department d 
   where e.dno = d.dno
     and e.eno = 7900 ;

  dbms_output.put_line(v_empno||' '||v_ename||' '||v_deptno||' '||v_dname) ;
end;
/

문제 4) 7369사원의 급여가 10000이상이면 '상'을 5000 이상이면 '중'을 그이하면 '하' 출력 
      (IF 문 사용)
set serveroutput on  
declare
  v_level  varchar2(10); 
  v_salary employee.salary%TYPE; 
  v_empno  employee.eno%TYPE := 7369;  
begin
  SELECT salary INTO v_salary FROM employee WHERE employee.eno = v_empno;
  
  IF(v_salary  >= 10000) THEN 
    v_level := '상'; 
  ELSIF (v_salary >=  5000) THEN 
    v_level := '중'; 
  ELSE 
    v_level :='하'; 
  END IF; 
 
  dbms_output.put_line( v_empno || '번 사원의 급여' || v_salary || '는 '|| v_level); 
 end;
 /
      
문제 5) 1부터 숫자중 홀수 10개만 출력하기 
-- 1 3 5 7 9 11 13 15 17 19
set serveroutput on  
declare
  v_N NUMBER := 1; -- 출력변수
  v_C NUMBER := 1; -- 회차변수

begin
  loop
    exit when v_C > 10;
    /*
    dbms_outpu.put_line(v_N);
    v_N := v_N + 2;
    v_C := v_C + 1;
    */
    if mod(v_N, 2) = 1 then
      dbms_outpu.put_line(v_N);
      v_C := v_C + 1;
    end if;
    v_N := v_N + 1;
    
  end loop;
end;
/

문제 6, 7) 사원테이블에서 30 번 부서인 사원의 사원번호, 이름, 직책 출력하기  
(cusor fetch 사용 작성 및 cursor for loop 사용작성)
-- (v_emp.eno || '  ' || v_emp.ename || '  ' || v_emp.job)

set serveroutput on  
declare
  v_emp  employee%rowtype ;
  cursor c1
  is
  select * from  employee where dno = 30;
begin
  open c1;

  loop
    fetch c1 into v_emp;
    exit when c1%NOTFOUND;
    dbms_output.put_line(v_emp.eno || '  ' || v_emp.ename || '  ' || v_emp.job);
  end loop;
  close c1;
end;
/

-- cursor for loop 사용
set serveroutput on  
declare
  v_emp  employee%rowtype ;
  cursor c1
  is
  select * from  employee where dno = 30;
begin
  for v_emp in c1 loop
    exit when c1%notfound;
    dbms_output.put_line(v_emp.eno || '  ' || v_emp.ename || '  ' || v_emp.job);
  end loop;
end;
/
