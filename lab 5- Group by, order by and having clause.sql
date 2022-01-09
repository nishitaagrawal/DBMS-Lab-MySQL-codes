LAB 5

1
select i.lname, b.bid, b.bname ,b.price from books b, ilib i 
where b.lid=i.lid order by(b.lid);

2
select b.bname, b.bid, count(n.bid) from books b, noofcopies n 
where b.bid=n.bid group by b.bname;

3
select i.lname, count(n.bid) from ilib i, noofcopies n 
where i.lid=n.lid group by i.lname having count(n.bid)>2;

4
select Iname, deptname, deptid from department order by Iname;

5
select city, slname, Sid from seller order by (city);

6
select b.bid, b.bname,a.aname , a.Aid ,w.Pid 
from author a, writes w, books b 
where b.bid=w.bid and a.Aid=w.Aid 
group by w.Aid having count(w.Aid)>2;

7
select i.lname, b.bname, b.bid, b.price , i.city, i.area 
from ilib i, books b
where i.lid=b.lid order by i.lid;

8
select d.deptid, d.deptname, s.stname, s.Stid , s.email, 
s.memid, d.Iname from department d, staff s 
where s.deptid=d.deptid order by d.deptid;

9
select i.lid, l.lname , count(i.lid) as "no_of_books_issued" 
from issue i, ilib l where i.lid=l.lid group by i.lid;

10
select * from  publisher l ,purchase p 
where p.Pid-l.Pid order by l.Pid;

11
select * from books order by price desc;


