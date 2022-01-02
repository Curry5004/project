
PL/SQL 프로시저가 성공적으로 완료되었습니다.


PL/SQL 프로시저가 성공적으로 완료되었습니다.


PL/SQL 프로시저가 성공적으로 완료되었습니다.

사원번호       이름       월급
---------------------------
7900       JAMES        950


PL/SQL 프로시저가 성공적으로 완료되었습니다.

사원번호  이름 월급
7900   JAMES  950


PL/SQL 프로시저가 성공적으로 완료되었습니다.

사원번호      사원명       부서번호     부서명
7900          JAMES             30          SALES


PL/SQL 프로시저가 성공적으로 완료되었습니다.

중


PL/SQL 프로시저가 성공적으로 완료되었습니다.

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


PL/SQL 프로시저가 성공적으로 완료되었습니다.

사원번호  이름 월급
7900   JAMES  950


PL/SQL 프로시저가 성공적으로 완료되었습니다.

WLECOME TO ORACLE


PL/SQL 프로시저가 성공적으로 완료되었습니다.

사원번호      사원명       부서번호     부서명
7900          JAMES             30          SALES


PL/SQL 프로시저가 성공적으로 완료되었습니다.

중


PL/SQL 프로시저가 성공적으로 완료되었습니다.

중


PL/SQL 프로시저가 성공적으로 완료되었습니다.

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


PL/SQL 프로시저가 성공적으로 완료되었습니다.

7499   ALLEN   SALESMAN
7521   WARD   SALESMAN
7654   MARTIN   SALESMAN
7698   BLAKE   MANAGER
7844   TURNER   SALESMAN
7900   JAMES   CLERK
7900   JAMES   CLERK


PL/SQL 프로시저가 성공적으로 완료되었습니다.


명령의 343 행에서 시작하는 중 오류 발생 -
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
오류 보고 -
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


PL/SQL 프로시저가 성공적으로 완료되었습니다.

7499   ALLEN   SALESMAN
7521   WARD   SALESMAN
7654   MARTIN   SALESMAN
7698   BLAKE   MANAGER
7844   TURNER   SALESMAN
7900   JAMES   CLERK
7900   JAMES   CLERK


PL/SQL 프로시저가 성공적으로 완료되었습니다.


Procedure SP_SALARY이(가) 컴파일되었습니다.

LINE/COL  ERROR
--------- -------------------------------------------------------------
3/22      PLS-00103: Encountered the symbol "," when expecting one of the following:     := . ( @ % ; not null range default character 
오류: 컴파일러 로그를 확인하십시오.

명령의 390 행에서 시작하는 중 오류 발생 -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE,SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT의 급여는 '||V_SALARY);
END;
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

명령의 390 행에서 시작하는 중 오류 발생 -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE,SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT의 급여는 '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

명령의 390 행에서 시작하는 중 오류 발생 -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE,SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT의 급여는 '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

명령의 390 행에서 시작하는 중 오류 발생 -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE,SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT의 급여는 '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Procedure SP_SALARY이(가) 삭제되었습니다.


Procedure SP_SALARY이(가) 컴파일되었습니다.

LINE/COL  ERROR
--------- -------------------------------------------------------------
3/22      PLS-00103: Encountered the symbol "," when expecting one of the following:     := . ( @ % ; not null range default character 
오류: 컴파일러 로그를 확인하십시오.

Procedure SP_SALARY이(가) 삭제되었습니다.


Procedure SP_SALARY이(가) 컴파일되었습니다.


명령의 390 행에서 시작하는 중 오류 발생 -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE.SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT의 급여는 '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;

EXECUTE SP_SALARY;
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
SCOTT의 급여는 3000


PL/SQL 프로시저가 성공적으로 완료되었습니다.


명령의 390 행에서 시작하는 중 오류 발생 -
 CREATE PROCEDURE SP_SALARY
 IS
    V_SALARY EMPLOYEE.SALARY%TYPE;
BEGIN
    SELECT SALARY INTO V_SALARY
    FROM EMPLOYEE
    WHERE ENAME='SCOTT';

    DBMS_OUTPUT.PUT_LINE('SCOTT의 급여는 '||V_SALARY);
END;

DROP PROCEDURE SP_SALARY;

EXECUTE SP_SALARY;
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
SCOTT의 급여는 3000


PL/SQL 프로시저가 성공적으로 완료되었습니다.


Procedure SP_SALARY_ENAME이(가) 컴파일되었습니다.


Procedure SP_SALARY_ENAME이(가) 삭제되었습니다.


Procedure SP_SALARY_ENAME이(가) 컴파일되었습니다.


Procedure SP_SALARY_ENAME이(가) 컴파일되었습니다.


Procedure SP_SALARY_ENAME이(가) 컴파일되었습니다.


명령의 420 행에서 시작하는 중 오류 발생 -
BEGIN sp_salary_ename(KING); END;
오류 보고 -
ORA-06550: line 1, column 23:
PLS-00201: identifier 'KING' must be declared
ORA-06550: line 1, column 7:
PL/SQL: Statement ignored
06550. 00000 -  "line %s, column %s:\n%s"
*Cause:    Usually a PL/SQL compilation error.
*Action:
KING의 급여는5000입니다.


PL/SQL 프로시저가 성공적으로 완료되었습니다.


Procedure SP_SALARY_ENAME2이(가) 컴파일되었습니다.

LINE/COL  ERROR
--------- -------------------------------------------------------------
6/5       PL/SQL: SQL Statement ignored
6/24      PLS-00201: identifier 'V_SALARY' must be declared
7/5       PL/SQL: ORA-00904: : invalid identifier
오류: 컴파일러 로그를 확인하십시오.

명령의 423 행에서 시작하는 중 오류 발생 -
CREATE PROCEDURE SP_SALARY_ENAME2(
    IN_ENAME IN EMPLOYEE.ENAME%TYPE,
    OUT_SALARY OUT EMPLOYEE.ENAME%TYPE)
IS
BEGIN
    select salary into OUT_SALARY
    from employee
    where ename=in_ename;
end;
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Procedure SP_SALARY_ENAME2이(가) 컴파일되었습니다.


Procedure SP_SALARY_ENAME2이(가) 컴파일되었습니다.


Procedure SP_SALARY_ENAME2이(가) 컴파일되었습니다.


Procedure SP_SALARY_ENAME2이(가) 컴파일되었습니다.


Procedure SP_SALARY_ENAME2이(가) 컴파일되었습니다.


Procedure SP_SALARY_ENAME2이(가) 컴파일되었습니다.


Function FN_SALARY_ENAME이(가) 컴파일되었습니다.

LINE/COL  ERROR
--------- -------------------------------------------------------------
12/1      PLS-00103: Encountered the symbol "END" when expecting one of the following:     . ( * @ % & = - + ; < / > at in is mod remainder not rem    <an exponent (**)> <> or != or ~= >= <= <> and or like like2    like4 likec between || multiset member submultiset The symbol ";" was substituted for "END" to continue. 
오류: 컴파일러 로그를 확인하십시오.

Function FN_SALARY_ENAME이(가) 컴파일되었습니다.

LINE/COL  ERROR
--------- -------------------------------------------------------------
0/0       PL/SQL: Compilation unit analysis terminated
2/26      PLS-00302: component 'ENEMA' must be declared
오류: 컴파일러 로그를 확인하십시오.

Function FN_SALARY_ENAME이(가) 컴파일되었습니다.


명령의 455 행에서 시작하는 중 오류 발생 -
from employee
오류 보고 -
알 수 없는 명령


Table DEPT_ORIGINAL이(가) 생성되었습니다.


Trigger TRIGGER_SAMPLE2이(가) 컴파일되었습니다.

