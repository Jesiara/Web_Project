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