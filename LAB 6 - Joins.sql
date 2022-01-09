LAB 6

1
select s.sname, d.deptname from student s 
inner join department d on s.deptid=d.deptid 
and d.deptname="Civil";

2
select b.bname , i.lname from books b 
inner join ilib i on b.lid=i.lid and i.lname='SITLib';

3
select b.bname, i.lname, count(n.bid) from books b 
inner join ilib i on i.lid=b.lid and i.lname ="SITLib" 
inner join noofcopies n on n.bid=b.bid 
group by b.bid having count(b.bid)<3;

4
select s.slname, s.city, i.lname from seller s 
inner join ilib i on s.city=i.city and i.lname="SITLib";

5
select s.slname, b.bname , i.lname from seller s 
inner join purchase p on s.Sid=p.Sid 
inner join books b on b.bid=p.bid
inner join ilib i on i.lid=p.lid and i.lname="SITLib";

6
select b.bname as "Book Name" , 
a.aname as "Author Name", 
p.pname as "Publisher Name"
from books b 
inner join writes w on w.bid=b.bid 
inner join author a on a.Aid=w.Aid 
and a.aname="Brian Kernighan"
inner join publisher p on p.Pid=w.Pid 
and p.pname="Tata Macgraw hill";

7
select b.bname, a.aname from books b 
inner join writes w on b.bid=w.bid 
inner join author a on a.Aid=w.Aid 
and a.aname="Ken Thompson";

8
select b.bname, s.sname from books b 
inner join issue i on b.bid=i.bid
inner join student s on s.memid=i.memid 
and s.sname="Meera";

9
select b.bname, s.stname, d.deptname, d.Iname 
from books b inner join issue i on b.bid=i.bid
inner join staff s on s.memid=i.memid
inner join department d on s.deptid=d.deptid and d.Iname="SIT";

10
select p.pname as "Publisher Name",
b.bname as "Book Name", i.lname from publisher p 
inner join purchase pur on  pur.Pid=p.Pid 
inner join books b on pur.bid=b.bid
inner join ilib i on pur.lid=i.lid and i.lname="SITLib";


11
select d.Iname ,s.stname ,i.issueid, i.bid,i.lid, i.memid,
 i.issuedate,i.returndate from department d 
inner join staff s on s.deptid=d.deptid 
inner join issue i on s.memid=i.memid and i.bid=7;


select d.Iname ,s.sname ,i.issueid, i.bid,i.lid, i.memid,
 i.issuedate,i.returndate from department d 
inner join student s on s.deptid=d.deptid 
inner join issue i on s.memid=i.memid and i.bid=2;

12
select s.slname,  i.lname, s.city from seller s 
inner join ilib i on s.city=i.city;

13
select b.bname, a.aname, b.price from books b 
inner join writes w on w.bid=b.bid 
inner join author a on a.Aid=w.Aid and b.price>500 ;




