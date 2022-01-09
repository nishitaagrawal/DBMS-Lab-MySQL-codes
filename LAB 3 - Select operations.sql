DBMS LAB 3 DML COMMANDS

1
select lname from ilib where city = "Pune";

2
select Iname from department where deptname="Civil";

3
select * from books where price between 800 and 12000;

4
select empname from employee where salary < 50000;

5
select slname from seller where slname like "%ta";

6
select * from ilib;
select * from ilib where area is null;

7
select * from staff where stname not like "A%";

8
select s.slname, l.lname from siu_lib s, ilib l where s.slid=l.slid and l.city="Banglore";

9
select s.sname, d.deptname from student s, department d where s.deptid=d.deptid and d.deptid=1;

10
select bname from books b, author a, publisher p ,writes w 
where p.pid=w.pid and a.aid=w.aid and b.bid=w.bid 
and p.pname="Tata Macgraw hill" and a.aname='Shruti';

11
select issueid from issue i, student s, department d 
where i.memid=s.memid and s.deptid=d.deptid 
and d.deptname='E&TC' and d.Iname='SITM';

12
select b.bname from books b, ilib i where b.lid=i.lid and i.lname='SITLib';

13
select b.bname from author a, books b, writes w where a.aname='Ken Thompson' and a.Aid=w.Aid and b.bid=w.bid;

14
select empname from employee where salary < some ( select salary from employee);

15
// select bname from books b, purchase p  where b.bid=p.bid and b.price < (p.totalcost/p.quantity);

select bname from books where price > some (select price from books);

16
select empname,salary from employee where salary > all 
( select salary from employee e, department d 
where e.lid=d.lid and d.deptname='E&TC');

17
select prid, date, quantity, totalcost from purchase p, ilib i 
where p.lid=i.lid and i.lname="SITLib";

18
//
select slname from siu_lib s, ilib i where  
i.slid=s.slid and i.city='Pune' and i.lname='SIBMLib';
//


select slname from siu_lib where location='Pune' 
and exists (select lname from ilib where lname='SIBMLib');

19
select stname from staff where stname like "S%" and deptid not in 
(select deptid from department where deptname='Civil');

20
select bname from books b, student s, issue i where s.memid=i.memid and b.bid=i.bid and s.sname='Ravi';

21
select slname from seller s, purchase p, publisher b 
where s.Sid=p.Sid and b.Pid=p.Pid 
and b.pname='Pragati book store';

22
select b.bname, s.stname from books b, issue i, staff s, department d
where s.memid=i.memid
and s.deptid=d.deptid
and b.bid=i.bid
and d.deptname='Civil'
and d.Iname='SIT';

23
select slname,city from seller where city in 
(select city from ilib where lname='SITMHLib');

24
select slname from publisher l, books b, seller s, purchase p, ilib i 
where l.Pid=p.Pid
and b.bid=p.bid
and s.Sid=p.Sid
and i.lid=p.lid 
and l.pname="Pragati book store"
and i.lname='SITLib';

25
select bname from books b, publisher p, author a, writes w
where b.bid=w.bid
and p.Pid=w.Pid 
and a.Aid=w.Aid
and a.aname='Shivam Kapoor'
and p.pname='oReilly';

26
select * from purchase p, ilib i where 
p.lid=i.lid and month(p.date)=7
and i.lname='SIBMLib';

27 *
select lname from ilib l, member m, issue i
where i.lid=l.lid
and i.memid=m.memid
and i.issueid=453;

select slname from siu_lib where slid in (select slid from ilib 
where lid in (select lid from issue where bid=2));


28
select * from books ;

update books set price=(price *	1.1);

select * from books;


29
select * from department;

update department set Iname='SSBSSSS'
where deptname="Biology" ;

select * from department;

30
select * from employee;

update employee set salary=(salary*1.25);

select * from employee;
		

31
select * from purchase;

delete from purchase where year(date)=2016;

select * from purchase;

32
select * from issue;

delete from issue where year(returndate)=2017;

select * from issue;







