LAB 10

create view SITbooks as 
select b.bname , b.price, i.lname 
from books b, ilib i where b.lid=i.lid and i.lname="SITLib"
and b.price<1000;






