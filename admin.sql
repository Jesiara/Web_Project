create table AdminMst
(
IID int identity(1,1) primary key,
Username nvarchar(50),
Password nvarchar(50)
)

select * from AdminMst

insert into AdminMst (Username,Password) values(@Username,@Password)

select Username,Password from AdminMst where Username=@Username and Password=@Password

create table CateMst
(
CID int identity(1,1) primary key,
CName nvarchar(50)
)

insert into CateMst (CName) values(@CName)
select * from CateMst

create table ItemMast
(
IID int identity(1,1) primary key,
IName nvarchar(350),
Detail nvarchar(600),
price float,
Image nvarchar(250),
Qnt int,
AQt int,
SQnt int,
CName nvarchar(500),
EntryDate datetime,
Image1 nvarchar(250),
Image2 nvarchar(250),
Image3 nvarchar(250)
)

select * from ItemMast
insert into ItemMast(IName,Detail,price,Image,Qnt,CName,Image1,Image2,Image3,EntryDate) values (@IName,@Detail,@Price,@Image,@Qnt,@CName,@Image1,@Image2,@Image3,getDate())