set serveroutput on
begin
    dbms_output.put_line('Welcome to Oracle');
end;
/
select * from employee
where ename = 'SCOTT';


-- Chapter 14 PL/SQL


-- �����ȣ�ͻ���̸� ����ϱ� 

set serveroutput on;
declare
 v_eno employee.eno%type;
 v_ename employee.ename%type;
begin
 dbms_output.put_line('�����ȣ ����̸�');
 dbms_output.put_line('------------------------------');
 select eno, ename into v_eno, v_ename
  from employee
 where ename = 'SCOTT';
 dbms_output.put_line(v_eno || '    ' || v_ename);
end;


-- IF ~ END IF ������ ���� ����ϱ�
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
 
  dbms_output.put_line('�����ȣ ����̸� ����') ; 
  dbms_output.put_line('------------------------------------'); 
  dbms_output.put_line(v_employee.eno || '   ' ||
v_employee.ename || '    ' || annsal); 
end; 
/ 

-- ELSIF '" END IF ������ ���� ����ϱ�
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
 
  dbms_output.put_line('��� ��ȣ  �̸� �μ��� '); 
  dbms_output.put_line(v_eno || '     ' || v_ename ||  '     ' || v_dname); 

end; 

 --BASIC LOOP.�� ������ ����ϱ�

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

-- FOR LOOP�� ������ ��) ����ϱ�

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


-- WHILE LOOP.�� ������(2��) �Ƿ��ϱ�
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


-- Ŀ���� ���̺��� ��� ���� ��ȸ�ϱ� 
set serveroutput on 
declare 
v_dept department%rowtype; 
cursor c1 
is 
select * from department ;
begin 
  dbms_output.put_line('�μ���ȣ �μ��� ������'); 
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


-- cursor for loop�� ���̺��� ��� ���� ��ȸ�ϱ� 

set serveroutput on 
declare 
v_dept department%rowtype; 
cursor c1 
is 
select * from department ;
begin 
  dbms_output.put_line('�μ���ȣ �μ��� ������'); 
  dbms_output.put_line('-------------------------');
  for v_dept in c1 loop 
    exit when c1 %notfound; 
    dbms_output.put_line(v_dept.dno || '   ' || v_dept.dname || '   ' || v_dept.loc); 
  end loop; 
end; 
/




���� 1) ������ȣ�� 7900  �� ���������� ����غ�����
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
 
  dbms_output.put_line('������ȣ     ������          �޿�');
  dbms_output.put_line('--------------------------------------------');
  dbms_output.put_line(v_no || '    ' || v_name || '     ' || v_sal);
end;
/

���� 2) ������ȣ�� 7900  �� ����������  ROWTYPE ������ Ȱ���Ͽ� ������ ����غ�����
  -- v_row employee%ROWTYPE ;
set serveroutput on  
declare
  v_row employee%ROWTYPE ;  
begin
  select * into v_row
    from employee
   where eno = 7900;

  dbms_output.put_line('������ȣ     ������          �޿�');
  dbms_output.put_line('--------------------------------------------');
  dbms_output.put_line(v_row.eno || '    ' || v_row.ename || '     ' || v_row.salary );
end;
  
  
���� 3) employee, department�� �����ؼ� ������ȣ�� 7900�� ����� ������ ����غ�����
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

���� 4) 7369����� �޿��� 10000�̻��̸� '��'�� 5000 �̻��̸� '��'�� �����ϸ� '��' ��� 
      (IF �� ���)
set serveroutput on  
declare
  v_level  varchar2(10); 
  v_salary employee.salary%TYPE; 
  v_empno  employee.eno%TYPE := 7369;  
begin
  SELECT salary INTO v_salary FROM employee WHERE employee.eno = v_empno;
  
  IF(v_salary  >= 10000) THEN 
    v_level := '��'; 
  ELSIF (v_salary >=  5000) THEN 
    v_level := '��'; 
  ELSE 
    v_level :='��'; 
  END IF; 
 
  dbms_output.put_line( v_empno || '�� ����� �޿�' || v_salary || '�� '|| v_level); 
 end;
 /
      
���� 5) 1���� ������ Ȧ�� 10���� ����ϱ� 
-- 1 3 5 7 9 11 13 15 17 19
set serveroutput on  
declare
  v_N NUMBER := 1; -- ��º���
  v_C NUMBER := 1; -- ȸ������

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

���� 6, 7) ������̺��� 30 �� �μ��� ����� �����ȣ, �̸�, ��å ����ϱ�  
(cusor fetch ��� �ۼ� �� cursor for loop ����ۼ�)
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

-- cursor for loop ���
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
