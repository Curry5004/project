
PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

�����ȣ       �̸�       ����
---------------------------
7900       JAMES        950


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

�����ȣ  �̸� ����
7900   JAMES  950


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

�����ȣ      �����       �μ���ȣ     �μ���
7900          JAMES             30          SALES


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

��


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

1
3
5
7
9
11
13
15
17
19


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

�����ȣ  �̸� ����
7900   JAMES  950


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

WLECOME TO ORACLE


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

�����ȣ      �����       �μ���ȣ     �μ���
7900          JAMES             30          SALES


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

��


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

��


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

1
3
5
7
9
11
13
15
17
19


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

7499   ALLEN   SALESMAN
7521   WARD   SALESMAN
7654   MARTIN   SALESMAN
7698   BLAKE   MANAGER
7844   TURNER   SALESMAN
7900   JAMES   CLERK
7900   JAMES   CLERK


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.


����� 343 �࿡�� �����ϴ� �� ���� �߻� -
declare
    v_emp employee%rowtype;
    v_eno employee.eno%type;
    v_ename employee.ename%type;
    v_job employee.job%type;
    cursor c1
    is
    select eno, ename, job from employee where dno=30;
begin
    open c1;
    loop
        fetch c1 into v_emp;
        dbms_output.put_line(v_emp.eno||'   '||v_emp.ename||'   '||v_emp.job);
        exit when c1%notfound;
    end loop;
    close c1;
end;
���� ���� -
ORA-06550: line 12, column 9:
PLS-00394: wrong number of values in the INTO list of a FETCH statement
ORA-06550: line 12, column 9:
PL/SQL: SQL Statement ignored
06550. 00000 -  "line %s, column %s:\n%s"
*Cause:    Usually a PL/SQL compilation error.
*Action:
7499   ALLEN   SALESMAN
7521   WARD   SALESMAN
7654   MARTIN   SALESMAN
7698   BLAKE   MANAGER
7844   TURNER   SALESMAN
7900   JAMES   CLERK
7900   JAMES   CLERK


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

7499   ALLEN   SALESMAN
7521   WARD   SALESMAN
7654   MARTIN   SALESMAN
7698   BLAKE   MANAGER
7844   TURNER   SALESMAN
7900   JAMES   CLERK
7900   JAMES   CLERK


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.


Procedure SP_SALARY��(��) �����ϵǾ����ϴ�.

LINE/COL  ERROR
--------- -------------------------------------------------------------
3/22      PLS-00103: Encountered the symbol "," when expecting one of the following:     := . ( @ % ; not null range default character 
����: �����Ϸ� �α׸� Ȯ���Ͻʽÿ�.

����� 390 �࿡�� �����ϴ� �� ���� �߻� -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE,SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT�� �޿��� '||V_SALARY);
END;
���� ���� -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

����� 390 �࿡�� �����ϴ� �� ���� �߻� -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE,SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT�� �޿��� '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;
���� ���� -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

����� 390 �࿡�� �����ϴ� �� ���� �߻� -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE,SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT�� �޿��� '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;
���� ���� -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

����� 390 �࿡�� �����ϴ� �� ���� �߻� -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE,SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT�� �޿��� '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;
���� ���� -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Procedure SP_SALARY��(��) �����Ǿ����ϴ�.


Procedure SP_SALARY��(��) �����ϵǾ����ϴ�.

LINE/COL  ERROR
--------- -------------------------------------------------------------
3/22      PLS-00103: Encountered the symbol "," when expecting one of the following:     := . ( @ % ; not null range default character 
����: �����Ϸ� �α׸� Ȯ���Ͻʽÿ�.

Procedure SP_SALARY��(��) �����Ǿ����ϴ�.


Procedure SP_SALARY��(��) �����ϵǾ����ϴ�.


����� 390 �࿡�� �����ϴ� �� ���� �߻� -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE.SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT�� �޿��� '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;

EXECUTE SP_SALARY;
���� ���� -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
SCOTT�� �޿��� 3000


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.


����� 390 �࿡�� �����ϴ� �� ���� �߻� -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE.SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT�� �޿��� '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;

EXECUTE SP_SALARY;
���� ���� -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
SCOTT�� �޿��� 3000


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.


Procedure SP_SALARY_ENAME��(��) �����ϵǾ����ϴ�.


Procedure SP_SALARY_ENAME��(��) �����Ǿ����ϴ�.


Procedure SP_SALARY_ENAME��(��) �����ϵǾ����ϴ�.


Procedure SP_SALARY_ENAME��(��) �����ϵǾ����ϴ�.


Procedure SP_SALARY_ENAME��(��) �����ϵǾ����ϴ�.


����� 420 �࿡�� �����ϴ� �� ���� �߻� -
BEGIN sp_salary_ename(KING); END;
���� ���� -
ORA-06550: line 1, column 23:
PLS-00201: identifier 'KING' must be declared
ORA-06550: line 1, column 7:
PL/SQL: Statement ignored
06550. 00000 -  "line %s, column %s:\n%s"
*Cause:    Usually a PL/SQL compilation error.
*Action:
KING�� �޿���5000�Դϴ�.


PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.


Procedure SP_SALARY_ENAME2��(��) �����ϵǾ����ϴ�.

LINE/COL  ERROR
--------- -------------------------------------------------------------
6/5       PL/SQL: SQL Statement ignored
6/24      PLS-00201: identifier 'V_SALARY' must be declared
7/5       PL/SQL: ORA-00904: : invalid identifier
����: �����Ϸ� �α׸� Ȯ���Ͻʽÿ�.

����� 423 �࿡�� �����ϴ� �� ���� �߻� -
CREATE PROCEDURE SP_SALARY_ENAME2(
    IN_ENAME IN EMPLOYEE.ENAME%TYPE,
    OUT_SALARY OUT EMPLOYEE.ENAME%TYPE)
IS
BEGIN
    select salary into OUT_SALARY
    from employee
    where ename=in_ename;
end;
���� ���� -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Procedure SP_SALARY_ENAME2��(��) �����ϵǾ����ϴ�.


Procedure SP_SALARY_ENAME2��(��) �����ϵǾ����ϴ�.


Procedure SP_SALARY_ENAME2��(��) �����ϵǾ����ϴ�.


Procedure SP_SALARY_ENAME2��(��) �����ϵǾ����ϴ�.


Procedure SP_SALARY_ENAME2��(��) �����ϵǾ����ϴ�.


Procedure SP_SALARY_ENAME2��(��) �����ϵǾ����ϴ�.


Function FN_SALARY_ENAME��(��) �����ϵǾ����ϴ�.

LINE/COL  ERROR
--------- -------------------------------------------------------------
12/1      PLS-00103: Encountered the symbol "END" when expecting one of the following:     . ( * @ % & = - + ; < / > at in is mod remainder not rem    <an exponent (**)> <> or != or ~= >= <= <> and or like like2    like4 likec between || multiset member submultiset The symbol ";" was substituted for "END" to continue. 
����: �����Ϸ� �α׸� Ȯ���Ͻʽÿ�.

Function FN_SALARY_ENAME��(��) �����ϵǾ����ϴ�.

LINE/COL  ERROR
--------- -------------------------------------------------------------
0/0       PL/SQL: Compilation unit analysis terminated
2/26      PLS-00302: component 'ENEMA' must be declared
����: �����Ϸ� �α׸� Ȯ���Ͻʽÿ�.

Function FN_SALARY_ENAME��(��) �����ϵǾ����ϴ�.


����� 455 �࿡�� �����ϴ� �� ���� �߻� -
from employee
���� ���� -
�� �� ���� ���


Table DEPT_ORIGINAL��(��) �����Ǿ����ϴ�.


Trigger TRIGGER_SAMPLE2��(��) �����ϵǾ����ϴ�.

