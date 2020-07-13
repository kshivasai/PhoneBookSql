/*create table People(
Person_Id int PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
PhoneNumber numeric UNIQUE,
IsActive BIT
);

create table City(
Id int UNIQUE NOT NULL,
CityName varchar(50),
IsActive BIT
);

create table Country(
Id int UNIQUE NOT NULL,
CountryName varchar(50),
IsActive BIT
);

create table States(
Id int UNIQUE NOT NULL,
StateName varchar(50),
IsActive BIT
);

CREATE TABLE City_Name_lookup (
  CityName varchar(50) PRIMARY KEY
);

CREATE TABLE State_Name_lookup (
  StateName varchar(50) PRIMARY KEY
);
CREATE TABLE Country_Name_lookup (
  CountryName varchar(50) PRIMARY KEY
);

Alter table City ADD Constraint "City_Name_Constraint" FOREIGN KEY (CityName) REFERENCES City_Name_lookup (CityName);
Alter table States ADD Constraint "State_Name_Constraint" FOREIGN KEY (StateName) REFERENCES State_Name_lookup (StateName);
Alter table Country ADD Constraint "Country_Name_Constraint" FOREIGN KEY (CountryName) REFERENCES Country_Name_lookup (CountryName);

create table PhoneBill(
PersonID int,
BillingDate date,
BilleddUnits int,
BilledAmount real,
DueDate date,
PaymentStatus BIT,
PaymentDate date,
IsActive BIT
);

Alter table PhoneBill ADD constraint "Person_ID_constraint" Foreign key (PersonId) References People (Person_ID);


create table Addresses(
AddressOne Varchar(100),
AddressTwo varchar(100),
CityName varchar(20),
StateName varchar(20),
CountryName Varchar(20),
PhoneNumber Numeric,
Pincode int,
isActive Bit
);





ALTER TABLE Addresses 
ALTER COLUMN CityName int;
ALTER TABLE Addresses 
ALTER COLUMN StateName int;
ALTER TABLE Addresses 
ALTER COLUMN CountryName int;

Alter table Addresses ADD constraint "CityName_constraint" Foreign key (CityName) References City (Id);
Alter table Addresses ADD constraint "StateName_constraint" Foreign key (StateName) References States (Id);
Alter table Addresses ADD constraint "CountryName_constraint" Foreign key (CountryName) References Country (Id);



create view PersonInfo as select p.FirstName, p.LastName, p.PhoneNumber, pb.BilledAmount, pb.DueDate from People p, PhoneBill pb;

*/