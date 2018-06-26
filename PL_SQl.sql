1//
declare
en emp.ename%type;
ej emp.hiredate%type;
ejo emp.job%type;
emno emp.empno%type:=:employee_number; 

begin
select ename,hiredate,job into en,ej,ejo from emp where empno=emno;
dbms_output.put_line(en ||ej || ejo);
end;

2//

declare
su number(10);
total number(10);
dpno emp.DEPTNO%type:=:depeartnumer; 

begin
select sum(sal) into su from emp where deptno=dpno group by deptno;
select count(*) into total from emp where deptno=dpno group by deptno;

dbms_output.put_line( 'Sallary ' || su || 'Total Empoyee ' || total );
end;

3//
declare
ra number(10):=8;
pi number(10):=3.1416;

begin
select sum(sal) into su from emp where deptno=dpno group by deptno;
select count(*) into total from emp where deptno=dpno group by deptno;

dbms_output.put_line( 'Sallary ' || su || 'Total Empoyee ' || total );
end;
