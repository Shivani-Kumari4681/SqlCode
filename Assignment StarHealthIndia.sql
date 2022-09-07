Create Table HealthInsurence
(
SN int,
Fcountry varchar (30),
City varchar (50),
Customers varchar (50), 
Mobile varchar (10)
)

select *from HealthInsurence


Create Table AccidentalPlan_Details
(
BranchId int ,
Bname Varchar (50),
Customername varchar (50),
Category Varchar (50),
Plans Varchar (50),

)

Select *from AccidentalPlan_Details

insert into AccidentalPlan_Details values (105, 'Ukraine', 'Robert', 'Gold', 39999)
insert into AccidentalPlan_Details values (109, 'Belgium', 'Sujan', 'Silver', 27999)
insert into AccidentalPlan_Details values (103, 'Russia', 'Sujika', 'Accidental cover', 19999)

insert into AccidentalPlan_Details values (105, 'Ukraine', 'Jim', 'Gold', 39999)
insert into AccidentalPlan_Details values (109, 'Belgium', 'Duke', 'Silver', 27999)
insert into AccidentalPlan_Details values (103, 'Russia', 'Perk', 'Accidental cover', 19999)

insert into AccidentalPlan_Details values (105, 'Ukraine', 'Saga', 'Gold', 39999)
insert into AccidentalPlan_Details values (109, 'Belgium', 'Jack', 'Silver', 27999)
insert into AccidentalPlan_Details values (103, 'Russia', 'Liam', 'Accidental cover', 19999)

insert into AccidentalPlan_Details values (105, 'Ukraine', 'Mattew', 'Gold', 39999)
insert into AccidentalPlan_Details values (109, 'Belgium', 'Aaron', 'Silver', 27999)
insert into AccidentalPlan_Details values (103, 'Russia', 'Nathan', 'Accidental cover', 19999)

insert into AccidentalPlan_Details values (105, 'Ukraine', 'Zerry', 'Gold', 39999)
insert into AccidentalPlan_Details values (109, 'Belgium', 'Nathan', 'Silver', 27999)
insert into AccidentalPlan_Details values (103, 'Russia', 'Piter', 'Accidental cover', 19999)




Create Table DentalPlan_Details
(
BranchId int,
Bname Varchar (50),
Customername varchar (50),
Category Varchar (50),
Plans Varchar (50),
)



insert into DentalPlan_Details values (101, 'Canada', 'Charles', 'Premium', 49999)
insert into DentalPlan_Details values (104, 'China', 'Chioke', 'Life cover', 28999)
insert into DentalPlan_Details values (108, 'Bangladesh', 'Nobita', 'Premium', 49999)
insert into DentalPlan_Details values (107, 'Armenia', 'Giyan', 'Critical illness', 21999)
insert into DentalPlan_Details values (106, 'Estonia', 'John', 'Premium', 49999)

insert into DentalPlan_Details values (101, 'Canada', 'Elina', 'Premium', 49999)
insert into DentalPlan_Details values (104, 'China', 'Sterry', 'Life cover', 28999)
insert into DentalPlan_Details values (108, 'Bangladesh', 'Sassy', 'Premium', 49999)
insert into DentalPlan_Details values (107, 'Armenia', 'Senurita', 'Critical illness', 21999)
insert into DentalPlan_Details values (106, 'Estonia', 'Nike', 'Premium', 49999)

insert into DentalPlan_Details values (101, 'Canada', 'Zuke', 'Premium', 49999)
insert into DentalPlan_Details values (104, 'China', 'Daniel', 'Life cover', 28999)
insert into DentalPlan_Details values (108, 'Bangladesh', 'Joseph', 'Premium', 49999)
insert into DentalPlan_Details values (107, 'Armenia', 'Noah', 'Critical illness', 21999)
insert into DentalPlan_Details values (106, 'Estonia', 'Charlee', 'Premium', 49999)

insert into DentalPlan_Details values (101, 'Canada', 'Aiden', 'Premium', 49999)
insert into DentalPlan_Details values (104, 'China', 'Peter', 'Life cover', 28999)
insert into DentalPlan_Details values (108, 'Bangladesh', 'Aadam', 'Premium', 49999)
insert into DentalPlan_Details values (107, 'Armenia', 'Douglas', 'Critical illness', 21999)
insert into DentalPlan_Details values (106, 'Estonia', 'Dennis', 'Premium', 49999)

insert into DentalPlan_Details values (101, 'Canada', 'Patrik', 'Premium', 49999)
insert into DentalPlan_Details values (104, 'China', 'Adam', 'Life cover', 28999)
insert into DentalPlan_Details values (108, 'Bangladesh', 'Henerry', 'Premium', 49999)
insert into DentalPlan_Details values (107, 'Armenia', 'Kylee', 'Critical illness', 21999)
insert into DentalPlan_Details values (106, 'Estonia', 'Roger', 'Premium', 49999)



Select *from DentalPlan_Details



CREATE VIEW V_AccidentalPlan_Details AS Select * from AccidentalPlan_Details

Select * from V_AccidentalPlan_Details

Select *From V_AccidentalPlan_Details




Create view [dbo].[V_AccidentalPlan_Details] As
Select Bname, Plans, Customername from AccidentalPlan_Details
Where Category = 'Accidental cover'


Insert into V_AccidentalPlan_Details values('105', 'Ukraine', 'Yuhan', 'Gold','39999')
Insert into V_AccidentalPlan_Details values('109', 'Belgium', 'Fanky', 'Silver','27999')
Insert into V_AccidentalPlan_Details values('103', 'Russia', 'Yusuf', 'Accidental cover','19999')



Update V_AccidentalPlan_Details Set Bname = 'Belgium' where Customername = 'Sujika'


Delete from V_AccidentalPlan_Details where Customername = 'Liam'


select *from AccidentalPlan_Details


Alter view V_AccidentalPlan_Details
as
Select BranchId, Bname, Customername, Category, Plans from AccidentalPlan_Details
Insert into V_AccidentalPlan_Details values ('109', 'Belgium', 'Musa','Silver',27999)




Create procedure Proc_AccidentalPlan_Details
@vCustomername varchar(60)
As
Begin
  Declare @V_Bname varchar(30)
  Declare @V_Category varchar(30)
  Declare Cur_AccidentalPlan_Details Cursor For Select Bname, Category from AccidentalPlan_Details Where Customername = @vCustomername
  open Cur_AccidentalPlan_Details
  Fetch Next from Cur_AccidentalPlan_Details into @V_Bname, @V_Category
  while(@@FETCH_STATUS = 0)
  Begin
    Print 'BranchName: ' + @V_Bname + ' Plan Name: ' + @V_Category
    Fetch Next from Cur_AccidentalPlan_Details into @V_Bname, @V_Category
  End
  close Cur_AccidentalPlan_Details
  DeAllocate Cur_AccidentalPlan_Details
End

Exec Proc_AccidentalPlan_Details 'Perk'



Create procedure Proc_DentalPlan_Details
@vBranchID int,
@vBname varchar(30),
@vCustomername varchar(30),
@vCategory varchar(30),
@vPlans varchar(20)
As

Begin
  Insert into DentalPlan_Details values(@vBranchID, @vBname, @vCustomername, @vCategory, @vPlans)
End

Exec Proc_DentalPlan_Details '101', 'Canada' , 'Panky', 'Premium', 49999

select *from DentalPlan_Details




Create Procedure Proc_AccidentalPlan_Details_Insert
@vBranchID int,
@vBname varchar(30),
@vCustomername varchar(30),
@vCategory varchar(30),
@vPlans varchar(20)
As
Begin Transaction
  Insert into AccidentalPlan_Details (BranchId, Bname, Customername, Category, Plans) values (@vBranchID, @vBname, @vCustomername,@vCategory, @vPlans)
Commit Transaction
 
Exec Proc_AccidentalPlan_Details_Insert '105', 'Ukraine', 'Tarzan', 'Gold', 39999
 

Delete from AccidentalPlan_Details where Customername='Alisha';


Alter Procedure Proc_AccidentalPlan_Details_Insert
@vBranchID int,
@vBname varchar(30),
@vCustomername varchar(30),
@vCategory varchar(30),
@vPlans varchar(20)
As
Begin
  Begin Transaction
    if ((len(@vBname) > 0) And (len(@vCustomername) > 0))
    Begin
      Insert into AccidentalPlan_Details (BranchId, Bname, Customername, Category, Plans) values(@vBranchID, @vBname, @vCustomername, @vCategory, @vPlans)
    End
    Else
    Begin
      Print 'Cannot insert blank Branch Name and / Customername'
    End
  Commit Transaction
End


Exec Proc_AccidentalPlan_Details_Insert '', 'Ukraine', '','',''
 
Exec Proc_AccidentalPlan_Details_Insert '103', 'Belgium', 'Aliyah','Silver',27999

Select * from AccidentalPlan_Details























