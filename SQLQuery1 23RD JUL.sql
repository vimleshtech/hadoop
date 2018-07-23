select left([Customer Name],3),* from orders
select right([Customer Name],5),* from orders
select len([Customer Name]),* from orders

select replace([Customer Name],'a','xy') ,* from orders
-- raman 
select substring([Customer Name],3,5) ,* from orders

select 
	upper([customer name]),  
	lower([customer name]),
	len([customer name])  ,
	upper(left([customer name],1)) + 
	lower(right([customer name], len([customer name])-1))
from orders

--FIND POSITION OF CHAR
SELECT  [CUSTOMER NAME] ,CHARINDEX('ab',[CUSTOMER NAME] ) from orders


----
select getdate()
select DATEPART(YEAR, getdate())
select DATEPART(MONTH, getdate())
select DATEPART(DAY, getdate())
select DATEPART(DAYOFYEAR, getdate())
select DATEPART(QQ, getdate())
select DATEPART(WEEKDAY, getdate())
select DATEPART(HOUR, getdate())

-- date add
select DATEADD(yyyy,10,getdate())
select DATEPART(weekday, DATEADD(yyyy,10,getdate()))

-- data diff
select DATEDIFF(yyyy,'1990-11-30',getdate())


select DATEDIFF(mm,'1990-11-30',getdate())
select DATEDIFF(day,'1990-11-30',getdate())
select DATEDIFF(HOUR,'1990-11-30',getdate())

--- data format
select convert(varchar,getdate(),101)  --113
select convert(varchar,getdate(),102)
select convert(varchar,getdate(),103)
select convert(varchar,getdate(),104)
select convert(varchar,getdate(),105)
select convert(varchar,getdate(),106)

--Maths
select max(profit) from orders
select min(profit) from orders
select sum(profit) from orders
select avg(profit) from orders

select POWER(2,3) from orders
select sqrt(9) from orders

select var(profit) from orders

select
	  Category
	 ,count(*)
	 ,sum(profit)
	 ,avg(Profit)
	 ,min(profit)
	 ,max(profit)
from Orders
group by Category

select * from orders
select * from backup_tbl


delete from orders
where [Row ID]< 90


select * into backup_tbl from Orders
where [Row ID]< 100

select * from orders
union all
select * from backup_tbl 
--9994
--10004



select [row id],[customer name] from orders
union all
select [row id],[customer name] from backup_tbl 


select [customer name],[row id] from orders
union all
select [row id],[customer name] from backup_tbl 
union  all
select [row id],[customer name] from backup_tbl 



select * from employee_1
select * from salary_1

select e.eid,e.fname,e.email,s.hra,s.basic
from employee_1 as e  inner join salary_1 as s
	on e.eid = s.employee_id
	

select e.eid,e.fname,e.email,s.hra,s.basic
from employee_1 as e  left join salary_1 as s
	on e.eid = s.employee_id
	

select e.eid,e.fname,e.email,s.hra,s.basic
from employee_1 as e  right join salary_1 as s
	on e.eid = s.employee_id
	

eid   name  mgrid
------  --------
1    raman  null
2   chahat   1
3   rahul    1
4    jatin   2


eid ename mgrid mgrrname
-----------------------

create table emps
(
eid int,
ename varchar(100),
mgrid int
)

insert into emps 
values(1,'raman',null),
(2,'chahat',1),
(3,'monika',1),
(4,'divya',2),
(5,'kshitiz',3)

select e.eid,e.ename,e.mgrid,m.ename as mgrname
from emps as e left join emps as m 
	on e.mgrid = m.eid



select top 1 * from 
				(
				select top 30 * from Orders 
				order by profit desc 
				)	t
order by profit asc 


--
product 
pid pname pprice     sprice
101  dove  40        45 


transactions
tid   pid   tran_type   quantity  date
1     101     P			100     ...
2   101     S          30     ..
3   101     P		 200
4   101     S		 100
5	102		P		3000


OUPUT
===
PID  PNAME   TOTAL_PURCHASE_QUANTITY  TOTAL_SALE   AVAILABLE_QUANTITY 
101	  DOVE     300					    130           170



 





