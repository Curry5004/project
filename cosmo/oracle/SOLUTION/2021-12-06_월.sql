create table dept_copy
as
select * from department where 0=1;  -- where 0=1 ������ ����

insert into dept_copy
values(10, 'ACCOUNTING', 'NEW YORK');

COMMIT;

select * from dept_copy;

-- RESEARCH �μ��� ���� �Է��ϱ� 
insert into dept_copy
(dno, loc, dname)
values(20, 'DALLAS', 'RESEARCH');

select * from dept_copy;
commit;

insert into dept_copy
(dno, dname)
values(30, 'SALES');
commit;
select * from dept_copy;

insert into dept_copy
values(40, 'OPERATIONS', NULL);
commit;
select * from dept_copy;

insert into dept_copy
values(50, 'COMPUTING', ' ');
commit;
select * from dept_copy;

create table emp_copy_1
as
select eno, ename, job, hiredate, e.dno, d.dname
from employee e, department d
where e.dno = d.dno and 0=1 ;

select * from emp_copy_1;

desc emp_copy_1;

insert into emp_copy
values(7000, 'CANDY', 'MANAGER', '2012/05/01', 10);
commit;
select * from emp_copy;

insert into emp_copy
values(7010, 'TOM', 'MANAGER', TO_DATE('2012.05.01', 'YYYY.MM.DD'), 20);
commit;

select * from emp_copy;

insert into emp_copy
values(7020, 'JERRY', 'SALAESMAN', SYSDATE, 30);
commit;
select * from emp_copy;

drop table dept_copy;
-- ���̺� ������ ����
create table dept_copy
as
select * from department where 0=1;

-- ���� ������ ���� �� �Է��ϱ� 
 insert into dept_copy
 select * from department;
commit;

select * from dept_copy;

-- WHERE ���� Ư�� �ο츸 �����ϱ� 
update dept_copy
   set dname = 'PROGRAMMING'
 where dno = 10;
 
 commit;
 
 select * from dept_copy
  where dno = 10;

update dept_copy
set dname = 'HR';

select * from dept_copy;
commit;

update dept_copy
set dname= 'PROGRAMMING', loc='SEOUL'
WHERE DNO = 10;
commit;
select * from dept_copy;

-- 10�� �μ��� �������� 20�� �μ��� ���������� �����ϱ� 
update dept_copy
  set loc=(select loc from dept_copy where dno=20) -- DALLAS
where dno = 10;
commit;

-- ���� ���� �÷� �� �����ϱ� 
update dept_copy
   set dname= (select dname from dept_copy where dno = 30)
     , loc=(select loc from dept_copy where dno=30)
 where dno = 10;
commit;
select * from dept_copy;

-- WHERE ���� Ư�� �ο츸 �����ϱ� 
delete from dept_copy
where dno=10;
commit;

delete dept_copy;

drop table emp_copy;

create table emp_copy
as
select * from employee;

select * from emp_copy;
-- �����ο� �ٹ��ϴ� ����� ��� ����
delete emp_copy
 where dno = (select dno from department where dname='SALES');  --30
commit;

select * from emp_copy;

drop table dept_copy;

create table dept_copy
as
select * from department;

select * from dept_copy;

delete dept_copy;

rollback;

delete dept_copy
where dno =20;

select * from dept_copy;

commit;

select * from employee where ename = 'SMITH';

-- CHAPTER 10
-- Į�� ����  constraint
create table dept_second(
   dno number(2) constraint pk_dept_second primary key,
   dname varchar2(14),
   loc varchar2(13));

-- ���̺� ���� constraint
create table dept_third(
    dno number(2),
    dname varchar2(14),
    loc varchar2(13),
    constraint pk_dept_third primary key(dno)); 

--NOT NULL ���� ���� �����ϱ�    
create table customer(
    id varchar2(20) not null,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    phone varchar2(30),
    address varchar2(100));
    
insert into customer
values(null, null, null, '010-111-1111', 'seoul');
/* ���� ���� -
ORA-01400: cannot insert NULL into ("HR"."CUSTOMER"."ID") */

-- ������ ���� ����ϴ� UNIQUE ���� ���� 

drop table customer;

-- UNIQUE ���� ���� �����ϱ� 
create table customer(
    id varchar2(20) unique,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    phone varchar2(30),
    address varchar2(100));

insert into customer
values('greentea', '1234', '�����ư���', '010-111-1111', 'seoul');
commit;

--�ߺ� id �ԷºҰ�
insert into customer
values('greentea', '1231234', '�׸�Ƽ', '010-222-1111', 'busan');
 
-- NULL�� UNIQUE ���� ���ǿ� ���ݵ��� �����Ƿ� NULL ���� ���    
insert into customer
values(null, '4321', 'Ŀ��', '010-333-1111', 'seoul');    
commit;
insert into customer
values(null, '1231234', '�׸�ƼĿ��', '010-555-1111', 'seoul');    

select * from customer;

drop table customer;

create table customer(
    id varchar2(20) constraint customer_id_uk unique,
    pwd varchar2(20) constraint customer_pwd_nn not null,
    name varchar2(20) constraint customer_name_nn not null,
    phone varchar2(30),
    address varchar2(100));

-- ���� ���� Ȯ���ϱ� 
select *  -- table_name, constraint_name
  from user_constraints
 where table_name = 'CUSTOMER';
 
-- ���� ���� �����ϱ�
alter table customer
drop constraint customer_name_nn; 
 
-- 1.3 ������ ������ ���� PRIMARY KEY ���� ���� 
drop table customer;

create table customer(
    id varchar2(20),
    pwd varchar2(20) constraint customer_pwd_nn not null,
    name varchar2(20) constraint customer_name_nn not null,
    phone varchar2(30),
    address varchar(100),
    constraint customer_id_pk primary key(id)); 

 
 insert into customer
values('greentea', '1231234', '�׸�Ƽ', '010-222-1111', 'busan');
 commit;

--�ߺ� id �ԷºҰ�
insert into customer
values('greentea', '1231234', '�׸�Ƽ', '010-222-1111', 'busan');

insert into customer
values(null, '1231234', '�׸�ƼĿ��', '010-555-1111', 'seoul');  

-- 1.4 ���� ���Ἲ�� ���� FOREIGN KEY ���� ���� 
select * from department;

insert into employee(eno, ename, dno)
values(8000, '����ȭ', 50);


--  FOREIGN KEY ���� ���� �����ϱ� 
create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    job varchar2(9),
    dno number(2) constraint emp_second_dno_fk references department);
select * from emp_second;

insert into emp_second
 values(8000, '����ȭ', 'FC', 50);
    
-- 1.5 ���� ������ �����ϴ� CHECK ���� ���� 
drop table emp_second;

create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    salary number(7, 2) constraint emp_second_salary_min check(salary > 0));

insert into emp_second
values(8000, '����ȭ', -200);

select * from emp_second;

drop table emp_second;

create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    salary number(7, 2) default 1000);
    
-- DEFAULT ���� ���� ������ �÷� �� ���� 
insert into emp_second
(eno, ename)
values(8000, '����ȭ');
commit;
select * from emp_second;


select * from   emp_copy;

create table emp_copy_temp
as
select * from employee;

create table dept_copy_temp
as
select * from department;

select table_name, constraint_name
from user_constraints
where table_name in ('EMP_COPY_TEMP', 'DEPT_COPY_TEMP');

-- PRIMARY KEY ���� ���� �߰��ϱ� 

alter table emp_copy_temp
add constraint emp_copy_temp_eno_pk primary key(eno);

alter table dept_copy_temp
add constraint dept_copy_temp_dno_pk primary key(dno);

alter table emp_copy_temp
add constraint emp_copy_temp_dno_fk
foreign key(dno) references dept_copy_temp(dno);

-- MODIFY NOT NULL�� NULL �� ������� �ʱ� 
alter table emp_copy_temp
modify ename constraint emp_copy_temp_ename_nn not null;

-- cascade �ɼ����� ���� ���� ���Ǳ��� ��� �����ϱ�
alter table dept_copy_temp
drop primary key cascade;

select table_name, constraint_name, status
from user_constraints
where table_name in ('EMP_COPY_TEMP', 'DEPT_COPY_TEMP');

alter table emp_copy_temp
drop constraint EMP_COPY_TEMP_ENAME_NN;

alter table emp_copy_temp
drop primary key cascade;

select * from DEPT_COPY_TEMP;

insert into emp_copy_temp(eno, ename, dno)
values(8000, '����ȭ', 50);

alter table emp_copy_temp
disable constraint EMP_COPY_TEMP_DNO_FK;

alter table emp_copy_temp
enable constraint EMP_COPY_TEMP_DNO_FK;

1. ���̺�� address, id NUMBER(3), name VARCHAR2(50), addr VARCHAR2(100), phone VARCHAR2(30), email VARCHAR2(100)
�ּҷ� ���̺� �����ϱ�
create table address (
	id      number(3),
	name    varchar2(50),
	addr    varchar2(100),
	phone   varchar2(30),
	email   varchar2(100)
);


2. �������� ���� �̿��Ͽ� �ּҷ� ���̺��� ������ �����͸� �����Ͽ� addr_second ���̺��� ����
create table addr_second
as
select * from address;

3.  �ּҷ� ���̺��� id, name Į���� �����Ͽ� addr_forth ���̺��� ���� (������ ����)

create table addr_forth as
select id, name from address where 0=1;

4 - 1) address���̺� 5���� �����͸� �߰��ϼ���  ex.) 1,'����','�Ȼ�','112','seulgizzang@naver.com'   
                                                   2,'���̸�','�뱸','119','dkdlfls@nate.com'  �� ���Ƿ� ����
      select * from address;                                             
 insert into address
values(1,'����','�Ȼ�','112','seulgizzang@naver.com'); 
insert into address
values(2,'���̸�','�뱸','119','dkdlfls@nate.com');
insert into address
values(3,'����','America','911','wendy123@yahoo.com');                                                   
 insert into address
values(4,'����','��õ','032','joyjoyjoy@hanmail.net');   
insert into address
values(5,'����','���ͺ�','3123','KKobugi1@monsterball.com');
commit;
4 - 2) address ���̺��� id, name �� ���� address2 ���̺��� ����� �ڷḦ ���� ������ ����
create table address2
as
select id, name from address;

select * from address2;

5. �ּҷ� ���̺� ��¥ Ÿ���� ������ birth Į���� �߰� , 
alter table address
add (birth date);
desc address;
6. �ּҷ� ���̺� ���� Ÿ���� ������ comments Į���� �߰�
alter table address
add(comments varchar2(50));

7. �ּҷ� ���̺��� comments Į���� ����
alter table address drop column comments;

8. 8�� �ּҷ� ���̺��� phone Į���� ������ Ÿ���� ũ�⸦ 50���� ����
alter table address
modify (phone varchar2(50));
desc address;

9. ���̺� �̸� ���� (addr_second  -> client_address)
rename addr_second to client_address;
desc client_address;

10. client_address ���̺� ����
drop table client_address;

11. address2 ���̺� ������ �״�� �����ϰ� �����Ϳ� �Ҵ�� ������ ����
truncate table address2;
select * from address2;

12. �Ʒ��� �����Ͽ� ���̺��� ���弼�� Table name : Member
USERID VARCHAR2(10) ����ھ��̵� , USERNAME VARCHAR2(10) ȸ���̸� , PASSWD  VARCHAR2(10) ��й�ȣ 
IDNUM  VARCHAR2(10) �ֹε�Ϲ�ȣ , PHONE      NUMBER(13) ��ȭ��ȣ , ADDRESS VARCHAR2(20) �ּ� 
,   REGDATE    DATE ������ 

create table member
     ( userid varchar2(10)
     , username varchar2(10)
     , passwd varchar2(10)
     , idnum varchar2(10)
     , phone number(13)
     , address varchar2(20)
     , regdate date
     , interest varchar2(15));

comment on table member is 'ȸ�� ���̺�';
comment on column member.userid is '����� ���̵�';
comment on column member.username is '����ڸ�';


13. ȸ�� ���̺��� ������ ������ ������ ���� member_second ���̺��� �����ϼ���.
create table member_second
as select * from member;


14. ȸ�� ���̺��� userid, username, passwd Į���� �����Ͽ� member_third ���̺��� �����ϼ���.
create table memeber_third
as select  userid, username, passwd from member;

15. ȸ�� ���̺�� ������ �����ϰ� �����ʹ� ������ �ʴ� member_forth ���̺��� �����ϼ���.(������)
create table member_forth
as select * from member where 0=1;

16. ȸ�� ���̺� email Į���� �߰��ϼ���. �� email Į���� ������ Ÿ���� VARCHAR2(50)�̴�.
alter table member
add(email varchar2(50));
desc member;
17. ȸ�� ���̺� ������ ��Ÿ���� country Į���� �߰��ϼ���
alter table member
add(country varchar2(30));
desc member;

18. �� ���̺��� �ֹε�Ϲ�ȣ Į���� �����ϼ���
alter table member
drop column idnum;

19. ȸ�� ���̺��� address Į���� ������ ũ�⸦ 30���� ����
alter table member 
modify address varchar2(30);


1. ���̺�� DEPT�й�c  �̰�   NO     NUMBER(7)  NO�� �����̸Ӹ� Ű �������� �߰�, 
                             NAME  VARCHAR2(25)  �� ���̺� ����
create table   DEPT�й�c (
    NO     NUMBER(7) constraint DEPT�й�c_NO_PK PRIMARY KEY,
    NAME   VARCHAR2(25));
                             
2.  ���̺� �̸��� DEPT�й�c ���� D�й� ���� �����ϼ���.
rename DEPT�й�c to  D�й�;

3.  NAME Į���� NOT NULL ���������� �߰��ϼ���
alter table D�й� modify name varchar2(10) constraint D�й�_NAME_NN not null;

4.  regionid Į���� NUMBER(5)�� �߰��ϼ���.
alter table D�й� ADD regionid number(5);
desc D�й�; 

5. �й� ���̺��� ���������� Ȯ������(DB�������̺� �̿�) �ۼ��ϼ���
select table_name, constraint_name, status
  from user_constraints
  where table_name = 'D�й�'; 
  













