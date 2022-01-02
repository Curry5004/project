set serveroutput on
begin
    dbms_output.put_line('ORACLE');
END;
/

/*01*/
set serveroutput on
declare
    v_dno employee.dno%type;
    v_dname department.dname%type;
begin
    select dno into v_dno
    from employee
    where ename='KING';
    
    IF V_DNO=10 THEN v_dname:='ACCOUNTING';
    ELSIF V_DNO=20 THEN v_dname:='ACCOUNTING';
    ELSIF V_DNO=30 THEN v_dname:='SALES';
    ELSE v_dname:='OPERATOR';
    END IF;
    dbms_output.put_line(v_dname);
end;
/

/*02*/
set serveroutput on
declare
    pot number:=0;
    counting number:=1;
begin
    loop
        pot:=pot+counting;
        counting:=counting+1;
        exit when counting>10;
    end loop;
    dbms_output.put_line(pot);
end;
/

/*03*/
set serveroutput on
declare
    pot number:=0;
    counting number:=1;
begin
    for counting in 1..10 loop
        pot:=pot+counting;
    end loop;
    dbms_output.put_line(pot);
end;
/

/*04*/
set serveroutput on
declare
    pot number:=0;
    counting number:=1;
begin
    while counting<=10 loop
        pot:=pot+counting;
        counting:=counting+1;
    end loop;
    dbms_output.put_line(pot);
end;
/

/*문제 1) 직원번호가 7900  인 직원정보를 출력해보세요*/
set serveroutput on
declare
    v_eno employee.eno%type;
    v_ename employee.ename%type;
    v_sal employee.salary%type;
begin
    select eno, ename, salary into v_eno, v_ename, v_sal
    from employee
    where eno=7900;
    dbms_output.put_line(v_eno||v_ename||v_sal);
end;
/

/*문제 2) 직원번호가 7900  인 직원정보를  ROWTYPE 변수를 활용하여 데이터 출력해보세요*/
set serveroutput on
declare
    v_emp employee%rowtype;
begin
    select * into v_emp
    from employee
    where eno=7900;
    dbms_output.put_line(v_emp.eno||v_emp.ename||v_emp.salary);
end;
/

/*문제 3) employee, department를 조인해서 직원번호가 7900인 사람의 정보를 출력해보세요
(v_empno||' '||v_ename||' '||v_deptno||' '||v_dname)*/
set serveroutput on
declare
    v_eno employee.eno%type;
    v_ename employee.ename%type;
    v_dno employee.dno%type;
    v_dname department.dname%type;
begin
    select e.eno, e.ename, e.dno, d.dname
    into v_eno, v_ename, v_dno, v_dname
    from employee e, department d
    where e.dno=d.dno and e.eno=7900;
    dbms_output.put_line(v_eno||v_ename||v_dno||v_dname);
end;
/

/*7369사원의 급여가 10000이상이면 '상'을 5000 이상이면 '중'을 그이하면 '하' 출력 
      (IF 문 사용)*/
set serveroutput on 
DECLARE
    v_sal employee.salary%type;
    grade varchar(4);
begin
    select salary into v_sal
    from employee
    where eno=7369;
        if v_sal>=10000 then grade:='상';
        elsif v_sal>=5000 then grade:='중';
        else grade:='하';
        end if;
    dbms_output.put_line(grade);
end;
/