LAB 4

1
select bname from books where price= 
(select min(price) from books b, ilib i 
where b.lid=i.lid and i.lname="SIBMLib");

2
select i.lname, b.bname, b.price from ilib i, books b 
where i.lid=b.lid and b.price in 
(select max(price) from books);	

3
// select count(*),l.lname, s.sname from issue i, ilib l, student s where i.lid=l.lid and l.lname="SITLib" and s.memid=i.memid;

select count(i.lid),l.lname from issue i, ilib l 
where i.lid=l.lid and l.lname="SITLib";

select count(memid) from issue where memid in ( select memid from student s, department d where s.deptid=d.deptid and d.Iname="SIT");

4
select avg(b.price) from books b, ilib i 
where b.lid=i.lid and i.lname="SITMHLib";

5
select sum(totalcost) from purchase 
where month(date) between 1 and 6  
and lid in (select lid from ilib where lname="SITLib");

6
select count(*) from writes where Aid = 
(select Aid from author where aname="Shruti");

7
select bname,max(price) from books where bid in 
(select bid from writes where Pid in 
(select Pid from publisher where pname ="Pragati book store"));

8
select count(*) from noofcopies where bid in 
(select bid from books where lid in 
(select lid from ilib where lname="SITLib"));

9
select avg(price) from books where bid in 
(select bid from writes where Aid in 
(select Aid from author where aname="Shruti"));

10
select sum(quantity) from purchase where Sid in
( select Sid from seller where city="Pune");

11
select upper(sname) from student where deptid in 
(select deptid from department where Iname="SSBS");

12
select issuedate , date_add(issuedate, interval 60 day) as "Add 2 months" 
from issue where bid in (select bid from author where aname="Ameya");

13
select last_day(issuedate) from issue where memid in
( select memid from student where sname="Amar");

14
select count(bid) from issue 
where month(issuedate) between 1 and 4 
and (year(issuedate)=2020);

15
select * from books b, ilib i where b.lid=i.lid and i.lname="SIBMLib" and bid in
(select bid from noofcopies group by (bid) having count(bid)<5);
