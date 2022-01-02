create table dept_copy
as
select * from department where 0=1;

select * from dept_copy;

insert into dept_copy
--�÷����� ������� ������ ���̺��� �÷� ������� �ۼ��Ѵ�.
values(10, 'ACCOUNTING', 'NEW YORK');

select * from dept_copy;

COMMIT;

select * from dept_copy;

--RESEARCH �μ��� ���� �Է��ϱ�.
insert into dept_copy
(dno, loc, dname)
/*�̷��� ���� �Է��� �� ������ �ٲܼ��� �ִ�*/
--�����͸� �����ҋ� �÷����� ������ �ٲ� �� �ִ�.
values(20, 'DALLAS', 'RESEARCH');

select * from dept_copy;

COMMIT;

select * from dept_copy;


--�ش� �÷��� �����Ϳ� null�� ������ ��� �ɱ�
--�ƿ� �÷��� ���� ������ �ȴ�.
insert into dept_copy
(dno, dname)
values(20, 'SALES');
COMMIT;
SELECT * FROM DEPT_COPY;
--�ƿ� �ǵ������� NULL���� ���� �� ���� �ִ�.
INSERT INTO DEPT_COPY
VALUES(40, 'OPERATIONS', NULL);
COMMIT;
SELECT * FROM DEPT_COPY;

INSERT INTO DEPT_COPY
VALUES(50, 'COMPUTING', ' ');
COMMIT;
SELECT * FROM DEPT_COPY;


--�ǽ��� ���̺� �ۼ�
CREATE TABLE EMP_COPY
AS
SELECT eno, ename, job, hiredate, dno from employee where 0=1;

--������ ����

insert into emp_copy
values(7000, 'CANDY', 'MANAGER', '2012/05/01', 10);
SELECT * FROM EMP_COPY;
COMMIT;
SELECT * FROM EMP_COPY;

INSERT into emp_copy
values(7010, 'TOM', 'MANAGER', TO_DATE('2012.05.01', 'YYYY.MM.DD.'), 20);
COMMIT;
SELECT * FROM EMP_COPY;

--���� ��¥�� �Էµ� ���� Ȯ���� �� �ִ�.
insert into emp_copy
values(7020, 'JERRY', 'SALESMAN', SYSDATE, 30);
COMMIT;
SELECT * FROM EMP_COPY;

--�ǽ��� ���� �տ��� ���� ����.
DROP TABLE DEPT_COPY;

--�÷��� ����°� ����.
create table dept_copy
as
select * from department where 0=1;

select * from dept_copy;


--���������� �ۼ��Ͽ� ������ ����
insert into dept_copy
select * from department;
commit;
select * from dept_copy;
desc dept_copy;

--where ���� Ư�� �ο츸 �����ϱ�
update dept_copy
set dname='PROGRAMMING'
WHERE dno=10;
commit;
select * from dept_copy;

update dept_copy
set dname='HR';

SELECT * FROM dept_copy;
COMMIT;

update dept_copy
set dname='PROGRAMMING', LOC='SEOUL'
WHERE DNO=10;
COMMIT;
SELECT * FROM DEPT_COPY;

--10�� �μ��� �������� 20�� �μ��� ���������� �����ϱ�
update dept_copy
 set loc=(select loc from dept_copy where dno=20) --DALLAS
where dno=10;
commit;

--�������� �÷����� �����ϱ�.
update dept_copy
set dname=(select dname from dept_copy where dno=30), loc=(select loc from dept_copy where dno=30)
where dno=10;
commit;

--where���� Ư�� �ο츸 �����ϱ�
--from�� ���� ������!
delete from dept_copy
where dno=10;
commit;

--where���� ��� �ο츦 �����ϰ��� �Ѵ�.
delete dept_copy;
commit;
SELECT * FROM DEPT_COPY;

drop table emp_copy;

-- ���������� ���� ���̺� �ۼ�
create table emp_copy
as
select * from employee;

select * from emp_copy;

--���������� ���� Ư�� �ο츸 ����
--�����ο� �ٹ��ϴ� ��� ����� ����
delete emp_copy
where dno=(select dno from department where dname='SALES');
COMMIT;
SELECT * FROM EMP_COPY;


--���̺� ������ �� ���̺� JOIN �ؼ��� ����� �� �ִ�.
CREATE TABLE emp_copy_1
as 
select eno, ename, job, hiredate, e.dno, d.dname
from employee e, department d;
desc emp_copy_1;



--############################################################################
--Ʈ������ ��
drop table dept_copy;

create table dept_copy
as
select * from department;

select * from dept_copy;

--DML�� ���� ���� �������� �۾��� ��ģ Ʈ������
delete dept_copy;
rollback;
--����Ŭ�� ���� �̷��� ROLLBACK�� �� ������ MYSQL ���� ���� DDL �� ó�� Ÿ���� ���ڸ��� Ŀ���� �Ǿ������ ������ �������� ������ ��

DELETE DEPT_COPY
WHERE DNO=10;
COMMIT;


--ȥ���غ���
--1
create table EMP_INSERT
AS
SELECT * FROM EMPLOYEE WHERE 0=1;
select * from emp_insert;


--02
insert into emp_insert
values(1, 'HONG', 'STUDENT', NULL, SYSDATE, NULL, NULL, NULL);

select * from emp_insert;
COMMIT;

--03
insert into emp_insert
values(2, 'SO', 'STUDENT', NULL, TO_DATE('2021/12/05', 'YYYY/MM/DD'), NULL, NULL, NULL);
COMMIT;

--04
CREATE TABLE EMP_COPY
AS 
SELECT * FROM EMPLOYEE;

--05
select dno from emp_copy where eno=7788;
update emp_copy
set dno=10
where eno=7788;
commit;

--06
select * from emp_copy where eno=7788;
update emp_copy
set (job, salary) = (select job, salary from emp_copy where eno=7499)
where eno=7788;
commit;

--07
select * from emp_copy where eno=7369;
select * from emp_copy where job=(select job from emp_copy where eno=7369);

update emp_copy
set dno = (select dno from emp_copy where eno=7369)
where job = (select job from emp_copy where eno=7369);
commit;

--08
select * from dept_copy;
drop table dept_copy;

create table dept_copy
as
select * from department;


--09
delete dept_copy
where dname='RESEARCH';
COMMIT;

--10
delete dept_copy
where dno in (10, 40);
commit;


--#####################################################################
--Chap 10

--�÷� ���� �������� constraint
create table dept_second(
    dno number(2) constraint pk_dept_second primary key, /*���������� �÷� ������ ��*/
    dname varchar2(14),
    loc varchar2(13));
desc dept_second;

drop table dept_third;

--���̺� ���� constraint
create table dept_third(
    dno number(2),
    dname varchar2(14),
    loc varchar2(13),
    constraint pk_dept_third primary key(dno));

--not null �������� �����ϱ�.
create table customer(
    id varchar2(20) not null,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    phone varchar2(30),
    address varchar2(100));
    
--not null ���� �� �÷��� null�� �־��� �� ������ �߻��� ���� Ȯ�� �� �� �ִ�.
insert into customer
values (null, null, null, '010-111-1111', 'seoul');
--���� ���� -
--ORA-01400: cannot insert NULL into ("HR"."CUSTOMER"."ID")



--������ ���� ����ϴ� unique ��������
drop table customer;

--uinique �������� �����ϱ�.
create table customer(
    id varchar2(20) unique,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    phone varchar2(30),
    address varchar2(100));

drop table custmoer;
    
insert into customer
values('greentea', '1234', '�����ư���', '010-111-1111', 'seoul');
commit;

--unique ������ �Ǿ��� ������ �ߺ��� �����Ͱ� �� �� ����.
insert into customer
values('greentea', '1234123', '�׸�Ƽ', '010-222-1111', 'busan');
--���� ���� -
--ORA-00001: unique constraint (HR.SYS_C007020) violated

--null�� unique �������ǿ� ���ݵ��� �����Ƿ� null�� ���
insert into customer
values(null, '123', 'Ŀ��', '010-333-1111', 'seoul');
commit;


insert into customer
values(null, '1245613', '�׸�ƼĿ��', '010-555-1111', 'seoul');
commit;

select * from customer;

drop table customer;

create table customer(
/* ���̺���̶� �÷��̶� uk �ٿ��� ���� -> �̰� �������� �̸���. ���߿� �˻��ؼ� Ȯ���ϱ� ������ �̷��� ��������*/
    id varchar2(20) constraint customer_id_uk unique,
    pwd varchar2(20) constraint customer_pwd_nn not null,
    name varchar2(20) constraint customer_name_nn not null,
    phone varchar2(30), 
    address varchar2(100));
    
--�������� Ȯ���ϱ�
--����(?) ���
select table_name, constraint_name
from user_constraints
where table_name= 'CUSTOMER';

--���������� ���߿� alter table�� ���� ������ ���� �ִ�.
alter table CUSTOMER
drop constraint customer_name_nn;


--������ ���������� PRIMARY KEY ��������
--�켱 ��������
DROP TABLE customer;

create table customer(
    id varchar2(20),
    pwd varchar2(20) constraint customer_pwd_nn not null,
    name varchar2(20) constraint customer_name_nn not null,
    phone varchar2(30),
    address varchar2(30),
    constraint customer_id_pk primary key(id));
    
insert into customer
values('greentea', '1234123', '�׸�Ƽ', '010-222-1111', 'busan');
commit;

--uniqui ������ �Ͽ��� ������ �ߺ� �Է��� �Ұ���
insert into customer
values('greentea', '1234123', '�׸�Ƽ', '010-222-1111', 'busan');
--���� ���� -
--ORA-00001: unique constraint (HR.CUSTOMER_ID_PK) violated

--null���� �Ұ�
insert into customer
values(null, '1234123', '�׸�Ƽ', '010-222-1111', 'busan');
/*���� ���� -
ORA-01400: cannot insert NULL into ("HR"."CUSTOMER"."ID")*/


--###########################################################
--���� ���Ἲ�� ���� forign key ��������.
select * from department;
--���� �� ����!
insert into employee(eno, ename, dno)
values(8000,'����ȭ',50);
/*���� ���� -
ORA-02291: integrity constraint (HR.FK_DNO) violated - parent key not found*/
--�ֳ�? �ش� ���̺��� dno�� forgin key�� �����Ͽ� �θ� ���̺� ���� ���� �Է��� �� ���� �Ǿ��ִ�.

-- foreign key ���� ���� �����ϱ�
create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    job varchar2(9),
    dno number(2) constraint emp_second_dno_fk references department);
    
    select * from emp_second;

insert into emp_second
values(8000, '����ȭ','FC', 50);
/*
���� ���� -
ORA-02291: integrity constraint (HR.EMP_SECOND_DNO_FK) violated - parent key not found
�Է��� �ȵ�. FOREEGIN KEY�� ����� �����Ȱ� Ȯ�� �� �� ����.*/




--1.5 ���� ������ �����ϴ� CHECK ���� ����
drop table emp_second;

create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    salary number(7,2) constraint emp_second_salary_min check(salary>0));
    
insert into emp_second
values(8000, '����ȭ', -200);
/*���� ���� -
ORA-02290: check constraint (HR.EMP_SECOND_SALARY_MIN) violated
check�� ���������� ������ ���� Ȯ�� �� �������� �� ����� ������ �߻��Ѵ�.
*/


--default ��������.
drop table emp_second;

create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    salary number(7,2) default 1000);
-- salary�� �Է� �����ϸ� �⺻���� 1000 �ڵ����� �Էµ�

--default ���� ������ ������ �÷� �� ����!
insert into emp_second
(eno, ename)
values (8000, '����ȭ');
select * from emp_second;
commit;
--salary�� �Է����� �ʾҴµ��� �˾Ƽ� 1000�� ������ ��. �̰� default ��������!



---------------------------------
--�������� �߰��ϱ�
drop table dept_copy;

create table dept_copy
as
select * from department;

--�ش� ���̺� ���������� �ִ��� Ȯ���ϴ� ����
select table_name, constraint_name, status
from user_constraints
where table_name in ('EMP_COPY', 'DEPT_COPY');

--PRIMARY KET ���� ���� �߰��ϱ�
ALTER table emp_copy
add constraint emp_copy_eno_pk primary key(eno);

alter table dept_copy
add constraint dept_dopy_dno_pk primary key(dno);

alter table emp_copy
add constraint emp_copy_dno_fk foreign key(dno) references dept_copy(dno); 

--modify�� not null �־� null�� ������� �ʱ� �߰��ϱ�.
alter table emp_copy
modify ename constraint emp_copy_ename_nn not null;


--�������� �����ϱ�.
--cascade �ɼ��� ������ ���� ���Ǳ��� ��� �����ϴ� ��!
alter table dept_copy
drop primary key cascade;

alter table emp_copy
drop constraint emp_copy_ename_nn;

alter table emp_copy
drop primary key cascade;


--���������� ���������ʰ� ���������� ��ø� ��Ȱ��ȭ ��Ű�� ��
--������ ó���� �� �� ���������� �˻��ϴµ� �̻��� �ҿ�Ǿ� ��� ���������� ���� �� ������ ó�� �ѵ� �ٽ� ���������� ����ִ� ��,

select * from dept_copy;

insert into emp_copy(eno, ename, dno)
values(8000, '����ȭ', 50);
--�� �� ����! �ֳ�? dno porimary key�� ������ ���� �����ϱ�!

alter table emp_copy
disable constraint emp_copy_dno_fk;

--�ش� ���̺� ���������� �ִ��� Ȯ���ϴ� ����
select table_name, constraint_name, status
from user_constraints
where table_name in ('EMP_COPY', 'DEPT_COPY');
--emp_copy_dno_fk�� ���������� status�� ���� disable ���°� �Ǿ������� �� �� �ִ�.

--�ٽ� �ǵ����� ��
alter table emp_copy
enable constraint emp_copy_dno_fk;
--�ٽ� ������ status�� Ȯ���غ��� enable �� ���� �� �� �ִ�.


--##########################################################
--01
drop table emp_sample_1;

create table emp_sample_1
as
select * from employee where 0=1;

select * from emp_sample_1;

alter table emp_sample_1
add constraint my_emp_pk primary key(eno);


select table_name, constraint_name, status
from user_constraints
where table_name in ('emp_sample_1');

--02 
drop table dept_sample;

create table dept_sample
as
select * from department where 1=0;

alter table dept_sample
add constraint my_dept_key primary key(dno);

select table_name, constraint_name, status
from user_constraints
where table_name in ('dept_sample');

--03
alter table emp_sample_1
add constraint my_empt_dept_fk foreign key(dno) references  dept_sample(dno);

--04
alter table emp_sample_1
add constraint my_emp_commission_check check(commission>0);






--###############################################�߰� ���� Ǯ��
--01���̺�� address
--id number(3), name varchar2(50), addr varchar2(100), phone varchar2(30), email varchar2(100) �ּҷ� ���̺� �ۼ��ϱ�
create table address(
    id number(3),
    name varchar2(50),
    addr varchar2(100),
    phone varchar2(30),
    email varchar2(100));
    
--02�������� ���� ����Ͽ� �ּҷ� ���̺��� ������ �����͸� �����Ͽ� addr_second ���̺��� ����
create table addr_second
as
select * from address where 0=1;

/*03 �ּҷ� ���̺��� id, name Į���� �����Ͽ� addr_forth ���̺��� ���� ������ ����*/
create table addr_forth
as
select id, name from address where 0=1;
select * from addr_forth;

/*04-1 address ���̺� 5���� �����͸� �߰��ϼ���*/
select * from address;
insert into address
VALUES(1, '��', 'seoul', '010-111', 'mail1');
commit;

insert into address
VALUES(2, '��2', 'seoul2', '010-222', 'mail2');
commit;

insert into address
VALUES(3, '��3', 'seoul3', '010-333', 'mail3');
commit;

insert into address
VALUES(4, '��4', 'seoul4', '010-444', 'mail4');
commit;

insert into address
VALUES(5, '��5', 'seoul5', '010-555', 'mail5');
commit;

/*4-2 address ���̺��� id, name�� ���� address2 ���̺��� ���� �ڷḦ ���� ��������*/
create table address2
as
select id, name from address;
desc address2;

/*05 �ּҷ� ���̺� ��¥ Ÿ���� ������ birth �÷��� �߰�
06 �ּҷ� ���̺� ���� Ÿ���� ������ comments Į���� �߰�*/
alter table address
add(birth date,
    comments varchar2(100));
commit;
select * from address;

/*07 �ּҷ� ���̺��� comments �÷� ����*/
alter table address
drop column comments;
commit;

/*08 �ּҷ� ���̺��� phone �÷��� ������ Ÿ���� ũ�⸦ 50���� ����*/
alter table address
modify phone varchar(50);
desc address;
commit;

/*09���̺� �̸� ����(addr_second ->client_address)*/
rename addr_second to client_address;

/*10 client_address ���̺� ����*/
drop table client_address;

/*11 address2 ���̺� ������ �����ϰ� �����Ϳ� �Ҵ�� ������ ����*/
select * from address2;
truncate table address2;

/*12 �Ʒ��� �����Ͽ� ���̺��� ���弼��
���̺� �̸� Member
userid varchar2(10) ����ھ��̵�, username varchar2(10) ȸ���̸�, passwd varchar2(10) ��й�ȣ, IDNUM VARCHAR2(10) �ֹε�Ϲ�ȣ,
PHONE NUMBER(13) ��ȭ��ȣ, ADDRESS VARCHAR2(20) �ּ�, REGDATE DATE ������)*/
create table Member(
    userid varchar2(10),
    username varchar2(10) ,
    passwd varchar2(10),
    IDNUM varchar2(10) ,
    PHONE NUMBER(13),
    ADDRESS varchar2(20),
    REGDATE DATE);

--comment�� �޾Ƽ� ���̺� ������ �߰��ȴ�.    
comment on table member is 'ȸ�����̺�';
comment on column member.userid is '����� ���̵�';
    
/*13 ȸ�� ���̺��� ������ �������� ������ ���� MEMBER_SECOND�� �����ϼ���*/
CREATE TABLE member_second
as
select * from member;

/*14 ȸ�����̺��� userid, username, passwd Į���� �����Ͽ� ember_third ���̺��� �����ϼ���*/
create table  member_third
as
select userid, username, passwd from member;
/*15ȸ�� ���̺�� ������ �����ϰ� �����ʹ� �������ʴ� member_forth ���̺��� �����ϼ���*/
create table member_forth
as
select * from member where 0=1;

/*16 ȸ�����̺� email�÷��� �߰��ϼ���*/
alter table member
add(email varchar2(50));
select * from member;
/*17 ȸ�� ���̺�� ������ ��Ÿ���� country �÷��� �߰��ϼ���*/
alter table member
add(country varchar2(50));
commit;
/*18 ȸ�� ���̺� �ֹε�Ϲ�ȣ Į���� tkrwpgktpdy*/
alter table member
drop column IDNUM;
/*19 ȸ�� ���̺��� address Į���� ������ ũ�⸦ 30���� ����)*/
alter table member
modify(address varchar2(30));
commit;
desc member;

/*���̺�� dept�й�c
no number(7)�ϰ� no�� �����̸Ӹ� Ű �������� �߰�
name varchar2(25) �� ���̺� ����*/
create table dept�й�c(
    no number(7),
    name varchar2(25),
    constraint dept�й�c_no_pk primary key(no));
    
    /*���̺� �̸��� dept�й�c���� d�й����� �����ϼ���*/
rename dept�й�c to d�й�;
desc d�й�;
alter table d�й�
add(regionid number(5));
desc d�й�;

/*name column�� not null ������ �߰��ϼ���*/
alter table d�й� modify name varchar2(10) constraint d�й�_name_nn not null;

/*�й� �����̺��� ���������� Ȯ��Ŀ��(db�������̺� ���) �ۼ��ϼ���*/

select table_name, constraint_name, status
from user_constraints
where table_name = ('D�й�');