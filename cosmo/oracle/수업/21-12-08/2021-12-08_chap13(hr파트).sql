grant select on hr.employee to usertest01;


--with grant option ��Ʈ!!!
--usertest2�� �ڱ� ���̺��� �ƴԿ��� �ұ��ϰ� �ٸ� �����鿡�� ������ �� �� ����

grant select on hr.employee to usertest2 with grant option;
--�̷��� ������ usertest�� �ڱ� ���̺��� �ƴԿ��� �ұ��ϰ� �ش� ���̺� ������ �� �� ����
grant select on hr.employee to usertest3;
--��� ������ ���޾Ƽ� �� ���� ����.

--��� ����ڵ��� �ش� ���̺� ���� �� ���ֵ��� �����ϴ� ��.
grant select on hr.department to public;
/*
SQL> conn usertest01/1234;
Connected.
SQL> selecr * from hr.department;
SP2-0734: unknown command beginning "selecr * f..." - rest of line ignored.
SQL> select * from hr.department;

       DNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON

SQL> conn usertest2/pass2
Connected.
SQL> select * from hr.department;

       DNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON
        
�̷������� ���� ��� select �ؿ� �� ����
*/

--�ٽ� system���� �̵�


--��ü ������ �ѿ� �ο��ϱ�
grant select on employee to roletest02;


--#######################################################
--���Ǿ� ���� ����!
select * from sys.sampletbl;
--sys.���� ����߸� ���� �� ����

--���Ǿ ����
create synonym priv_sampletbl for sys.sampletbl;
select * from priv_sampletbl;
--���Ǿ� �����ε� �о�� �� ����.

--���뵵���̾� �о����
select * from pub_sampletbl;


--���Ǿ� �����ϱ�
drop synonym priv_sampletbl;
select * from priv_sampletbl;
--��ȸ �ȵ�!!!