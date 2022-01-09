insert into siu_lib(slid,slname,location,noofbranches)
values(1,'Pune Central Library','Pune',10);

insert into Ilib(lid,lname,city,area,slid)
values(1,'SITLib','Pune','Lavale',1),
(2,'SIBMLib','Pune','Lavale',1),
(3,'SSACLib','Nagpur','Ramnagar',1),
(4,'SSLALib','Pune','Vimannagar',1),
(5,'SIBMBLib','Banglore','Jaynagar',1),
(6,'SITMHLib','Hyderabad','Banjara hills',1),
(7,'SIOMLib','Pune','S.B. Road',1),
(8,'SITMNLib','Noida','Golf course area',1),
(9,'SSLAHLib','Hydrabad','Gacchibowli',1),
(10,'SSBSLib','Pune','Tithnagar',1);


insert into books(bid,bname,price,lid)
values(1,'Operating system',1000,1),
(2,'Management system',2500,2),
(3,'Supply chain management',500,8),
(4,'Bioinformatics',780,10),
(5, 'Tele informatics',4567,10),
(6,'IP and Patents formation', 345,4),
(7,'Engineering Graphics', 2456,1),
(8,'Customer Management',3467,5),
(9,'Buying Pattern Analysis',456,8),
(10,'Digital Finance' , 600, 8),
(11,'Telecommunication',1500,6),
(12, 'Algorithms',6754,1),
(13, 'Child Law',1800,4),
(14, 'Multimanagers',2345,2),
(15,  'MicroEconomics',267,5),
(16, 'Electronics',2341, 1),
(17, 'Structure foundations' ,1700,3),
(18,'Ecohomes',1234,3),
(19,'Mobile Communication',456,6),
(20,'Labor Laws',3452,9),
(21,'Copyrights',2789, 9),
(22,'Research Laws', 1100, 9),
(23,'DBMS',700,1),
(24,'Computer networks',3451,1);


insert into noofcopies(bnid,bid,lid)
values(1,1,1),(2,1,2),(3,1,3),(4,3,1),
(5,3,2),(6,3,3),
(7,2,1),
(8,2,2),
(9,4,1),
(10,4,2),
(11,4,3),
(12,5,1),
(13,5,2),
(14,6,1),
(15,7,1),
(16,8,1),
(17,8,2),
(18,9,1),
(19,10,1),
(20,11,1),
(21,12,1),
(22,12,2),
(23,13,1),
(24,13,2),
(25,14,1),
(26,14,2),
(27,14,4),
(28,15,1),
(29,15,2),
(30,16,1),
(31,16,2),
(32,17,1);


insert into author(Aid,aname,email,phoneno)
values(1, 'Shruti','abc@gmail.com', 6447896542),
(2, 'Shivam Kapoor', 'adf@gmail.com',2345778998),
(3, 'Ameya', 'ert@gmail.com', 23456789087),
(4, 'Pooja Pai', 'edr@gamil.com', 32554565678),
(5, 'Brian Kernighan', 'rtyu@gmail.com', 2143454657),
(6, 'Ken Thompson', 'errt@gmail.com', 2343454565);


insert into publisher(Pid,pname)
values(1, 'Tata Macgraw hill'),
(2,'Pragati book store'),
(3, 'Prentice Hall'),
(4, 'oReilly'),
(5, 'Emrald publishing');


insert into seller(Sid,slname,city)
values
(1, 'Kohinoor','Pune'),
(2, 'Shiksha ','Pune'),
(3, 'ABP','Noida'),
(4, 'Technical','Hyderabad'),
(5, 'Timenowta','Bangalore'),
(6, 'Kirti','Pune');


insert into writes(bid,Aid,pid)
values
(1,1,2),
(2,2,3),
(3,5,2),
(4,6,4),
(5,1,5),
(6,1,2),
(7,4,1),
(8,2,2),
(9,5,5),
(10,6,4),
(11,1,1),
(12,4,2),
(13,5,5),
(14,6,2),
(15,3,1),
(16,4,2),
(17,6,5),
(18,2,4),
(19,5,1),
(20,1,2),
(21,3,5),
(22,5,2),
(23,6,1),
(24,3,3);


insert into department(deptid,deptname,Iname,lid)
values
(1, 'Civil', 'SIT', 1),
(2, 'E&TC', 'SIT', 1),
(3, 'Biology', 'SSBS', 10),
(4, 'Law', 'SSLA', 4),
(5, 'Structure', 'SSAC', 3),
(6, 'Finance management', 'SIBM', 2),
(7, 'Digital Telecommunications', 'SITMH', 6),
(8, 'Clinical Research', 'SSBS', 10);


insert into member(memid,lid)
values
(1,1),
(16,1),
(13,1),
(44,1),
(35,1),
(26,10),
(45,1),
(23,10),
(12,3),
(78,1),
(49,4),
(50,1);


insert into student(Stuid,sname,email,memid,deptid)
values
(1, 'Pooja', 'aswq@gmail.com', 1,1),
(2, 'Satish', 'azsx@gmail.com',16,1),
(3, 'Amar', 'cvnn@gmail.com',13,2),
(4, 'Meera', 'lkio@gmail.com',	44,2),
(5, 'Ravi', 'fghj@gmail.com',35,2),
(6, 'Adit', 'cfgb@gmail.com',26,3);


insert into staff(Stid,stname,email,memid,deptid)
values
(1, 'Satish' ,'sddf@gmail.com' ,45,1),
(2, 'Rachit' ,'zxzxc@gmail.com' ,23,3),
(3, 'Seema' ,'lkklk@gmail.com	' ,12,5),
(4, 'Sayali	' ,'xzcxc@gmail.com' ,78,2),
(5, 'Aditya' ,'cvvcb@gmail.com' ,49,4),
(6, 'Archit' ,'gfdfg@gmail.com' ,50,1);


insert into purchase(prid,lid,Sid,Pid,bid,quantity,date,totalcost)
values
(1001,1,1,3,1,100,'2015-07-12',70000),
(1002,2,3,4,2,1000,'2015-04-10',80000),
(1003,1,4,2,5,45,'2016-08-01',4500),
(1004,4,1,5,6,34,'2016-02-06',23000),
(1005,3,4,1,9,20,'2017-03-15',1200),
(1006,1,2,4,10,89,'2017-04-20',4500),
(1007,2,5,2,12,67,'2018-07-25',5600),
(1008,3,2,4,15,45,'2018-03-27',50000),
(1009,4,3,1,16,340,'2019-02-12',7800),
(1010,1,1,2,17,23,'2020-07-11',10000);



insert into A_specialization(spec_id,Aid,spec_name)
values
(101,1,'Technical'),
(201,1,'Fiction'),
(301,2,'Non_Fiction'),
(401,3,'Autobiographies'),
(501,2,'Technical'),
(601,4,'Real life stories');



///////
insert into issue(issueid,memid,bid,bnid,lid,issuedate,returndate)
values
(205,44,2,1,2,'2020-03-12','2020-04-12'),
(206,12,7,1,1,'2020-05-10',null),
(207,78,4,3,10,'2019-03-05','2019-08-05'),
(208,13,10,1,8,'2019-04-09','2019-06-09'),
(209,35,12,2,1,'2020-10-07','2020-12-07'),
(210,45,2,2,2,'2020-04-06',null);



insert into sells(Sid,bid,Pid)
values
(1,1,2),
(5,3,2),
(3,2,3),
(2,6,5),
(1,10,5),
(4,14,1);


insert into employee(eid,empname,email,salary,lid)
values
(111,'Shilpa','sdfdsf@gmail.com',10000	,1),
(222,'Shivani','sadsf@gmail.com',20000	,1),
(333,'Hemani','ertet@gmail.com',500000,2),
(444,'Rekha','scdsf@gmail.com',35000,3),
(555,'Anil','asd@gmail.com',45000,5),
(666,'Suhas','fdgfg@gmail.com',20000,2);




