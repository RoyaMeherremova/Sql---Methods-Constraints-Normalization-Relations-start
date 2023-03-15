create database Course

 use Course

 create table Teachers(
  
  Id int primary key identity (1,1),
  [Name] nvarchar(50) not null,
  [Surname] nvarchar(50),
  [Email] nvarchar(150) unique,
  [Age] int check(Age>20),
  [Salary] decimal 
 )
 select * from Teachers
--primary key-hem unic hem not null olsun data.Id-lere teyin edirik
--identity ozu id-nin deyerini teyin edir
--not null -null ola bilmez data
--unique - columa yazib icindeki datalara unic ede bilerik

  insert into Teachers([Name],[Surname],[Email],[Age],[Salary])
  values ('Cavid','Bashirov','javid@code.edu.az',29,4500),
          ('Ulker','Askerova','ulker@code.edu.az',38,1000),
		  ('Shahriyar','Memmedov','shahriyar@code.edu.az',28,1000),
		  ('Fuad','Eliyev','fuad@code.edu.az',35,3000),
		  ('Ulvi','Macidov','ulvi@code.edu.az',27,2000)
		 
--update Teachers
--set [Email] = 'ulker@mail.ru'
--where [Id]=2
--update data from table

 select * from Teachers

--1)Yashi butun muellimlerin orta yashindan boyuk olan muellimlerin siyahisi.

select AVG(Age) as 'Age average' from Teachers


select * from Teachers  where [Age] > (select avg(Age) from Teachers);


 --2)Maashi 1000  ve 3000 araliqinda olan muellimlerin siyahisi.

 select * from Teachers where [Salary] between 1000 and 3000 and [Salary] not in(1000,3000)

--3)Emailin sonu mail.ru olan muellimlerin adi ve soyadi


select * from Teachers where [Email] like '%mail.ru'

-- Adi C herfi ile bashlayan muellimlerin siyahisi.

select * from Teachers where [Name] like 'C%'

