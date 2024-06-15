CREATE DATABASE QLDL;
USE QLDL;


CREATE TABLE USER
(
	User_Id int PRIMARY KEY AUTO_INCREMENT,
	
	UserName varchar(40),
	Password varchar(40),
    Email varchar(40),
    Name varchar(40),
    Address varchar(40),
    BirthDate Date,
	SDT VARCHAR(20),
    Gender nvarchar(10),
    Status boolean
	
);

CREATE TABLE  ROLE
(
	Role_Id  int PRIMARY KEY AUTO_INCREMENT,
	Role_1 boolean,
    Role_2 boolean,
    Role_3 boolean,
    Role_4 boolean,
    Role_5 boolean,
    
    Position VARCHAR(255),
    User_Id int,
    CONSTRAINT FK_USER FOREIGN KEY(User_Id) REFERENCES USER(User_Id)
);

CREATE TABLE AGENT_TYPE
(
	AgentType_Id int NOT NULL AUTO_INCREMENT,
	AgentType_Name varchar(40),
    AgentType_MaxDebt double,
    AgentType_Status tinyint,
	CONSTRAINT PK_AGT PRIMARY KEY(AgentType_Id)
);


CREATE TABLE district (
    district_Id INT PRIMARY KEY AUTO_INCREMENT,
    district_Name VARCHAR(40),
    district_Status tinyint
    
);


CREATE TABLE AGENT
(
	Agent_Id int NOT NULL AUTO_INCREMENT,
	Agent_Name varchar(40),
	Agent_Phone varchar(10),
	Agent_Address varchar(200),
	district_Id INT,
    Agent_Status tinyint,
    Agent_Debt double,
    AgentType_Id int,
    Agent_Email varchar(30),
	CONSTRAINT PK_AG PRIMARY KEY(Agent_Id),
    CONSTRAINT FK_RC FOREIGN KEY(AgentType_Id) REFERENCES AGENT_TYPE(AgentType_Id),
    CONSTRAINT FK_RC2 FOREIGN KEY(district_Id) REFERENCES district(district_Id)
);




CREATE TABLE RECEPTION
(
	Reception_Id int NOT NULL AUTO_INCREMENT,
	IdAgent int,
	IdAgentType int,
	ReceptionDate date,
	CONSTRAINT PK_RCP PRIMARY KEY(Reception_Id),
	CONSTRAINT FK_RCP1 FOREIGN KEY(IdAgent) REFERENCES AGENT(Agent_Id),
	CONSTRAINT FK_RCP2 FOREIGN KEY(IdAgentType) REFERENCES AGENT_TYPE(AgentType_Id)
);

CREATE TABLE RECEIPT
(
	Receipt_Id int NOT NULL AUTO_INCREMENT,
	Id_Agent int,	
    Id_User int,
	ReceiptDate date,	
	MoneyReceived double,
    IsReceived tinyint,
	CONSTRAINT PK_RECEIPT PRIMARY KEY(Receipt_Id),
	CONSTRAINT FK_RECEIPT FOREIGN KEY(Id_Agent) REFERENCES Agent(Agent_Id),
    CONSTRAINT FK_RECEIPT2 FOREIGN KEY(Id_User) REFERENCES User(User_Id)
);

INSERT INTO RECEIPT (Id_Agent, Id_User, ReceiptDate, MoneyReceived, IsReceived) VALUES 
(1024, 2, '2024-01-01', 120000, 1),
(1025, 3, '2024-01-02', 120000, 1),
(1026, 4, '2024-01-03', 120000, 1),
(1027, 5, '2024-01-04', 120000, 1),
(1028, 6, '2024-01-05', 120000, 1),
(1029, 7, '2024-01-06', 120000, 1),
(1030, 2, '2024-01-07', 120000, 1),
(1031, 3, '2024-01-08', 120000, 1),
(1032, 4, '2024-01-09', 120000, 1),
(1033, 5, '2024-01-10', 120000, 1),
(1034, 6, '2024-01-11', 120000, 1),
(1035, 7, '2024-01-12', 120000, 1),
(1036, 2, '2024-01-13', 120000, 1),
(1037, 3, '2024-01-14', 120000, 1),
(1038, 4, '2024-01-15', 120000, 1),
(1039, 5, '2024-01-16', 120000, 1),
(1040, 6, '2024-01-17', 120000, 1),
(1041, 7, '2024-01-18', 120000, 1),
(1042, 2, '2024-01-19', 120000, 1),
(1043, 3, '2024-01-20', 120000, 1),
(1044, 4, '2024-01-21', 120000, 1),
(1045, 5, '2024-01-22', 120000, 1),
(1024, 6, '2024-01-23', 120000, 1),
(1025, 7, '2024-01-24', 120000, 1),
(1026, 2, '2024-01-25', 120000, 1),
(1027, 3, '2024-01-26', 120000, 1),
(1028, 4, '2024-01-27', 120000, 1),
(1029, 5, '2024-01-28', 120000, 1),
(1030, 6, '2024-01-29', 120000, 1),
(1031, 7, '2024-01-30', 120000, 1),
(1032, 2, '2024-01-31', 120000, 1),
(1033, 3, '2024-02-01', 120000, 1),
(1034, 4, '2024-02-02', 120000, 1),
(1035, 5, '2024-02-03', 120000, 1),
(1036, 6, '2024-02-04', 120000, 1),
(1037, 7, '2024-02-05', 120000, 1),
(1038, 2, '2024-02-06', 120000, 1),
(1039, 3, '2024-02-07', 120000, 1),
(1040, 4, '2024-02-08', 120000, 1),
(1041, 5, '2024-02-09', 120000, 1),
(1042, 6, '2024-02-10', 120000, 1),
(1043, 7, '2024-02-11', 120000, 1),
(1044, 2, '2024-02-12', 120000, 1),
(1045, 3, '2024-02-13', 120000, 1),
(1024, 4, '2024-02-14', 120000, 1),
(1025, 5, '2024-02-15', 120000, 1),
(1026, 6, '2024-02-16', 120000, 1),
(1027, 7, '2024-02-17', 120000, 1),
(1028, 2, '2024-02-18', 120000, 1),
(1029, 3, '2024-02-19', 120000, 1),
(1030, 4, '2024-02-20', 120000, 1),
(1031, 5, '2024-02-21', 120000, 1),
(1032, 6, '2024-02-22', 120000, 1),
(1033, 7, '2024-02-23', 120000, 1),
(1034, 2, '2024-02-24', 120000, 1),
(1035, 3, '2024-02-25', 120000, 1),
(1036, 4, '2024-02-26', 120000, 1),
(1037, 5, '2024-02-27', 120000, 1),
(1038, 6, '2024-02-28', 120000, 1),
(1039, 7, '2024-02-29', 120000, 1),
(1040, 2, '2024-03-01', 120000, 1),
(1041, 3, '2024-03-02', 120000, 1),
(1042, 4, '2024-03-03', 120000, 1),
(1043, 5, '2024-03-04', 120000, 1),
(1044, 6, '2024-03-05', 120000, 1),
(1045, 7, '2024-03-06', 120000, 1),
(1024, 2, '2024-03-07', 120000, 1),
(1025, 3, '2024-03-08', 120000, 1),
(1026, 4, '2024-03-09', 120000, 1),
(1027, 5, '2024-03-10', 120000, 1),
(1028, 6, '2024-03-11', 120000, 1),
(1029, 7, '2024-03-12', 120000, 1),
(1030, 2, '2024-03-13', 120000, 1),
(1031, 3, '2024-03-14', 120000, 1),
(1032, 4, '2024-03-15', 120000, 1),
(1033, 5, '2024-03-16', 120000, 1),
(1034, 6, '2024-03-17', 120000, 1),
(1035, 7, '2024-03-18', 120000, 1),
(1036, 2, '2024-03-19', 120000, 1),
(1037, 3, '2024-03-20', 120000, 1),
(1038, 4, '2024-03-21', 120000, 1),
(1039, 5, '2024-03-22', 120000, 1),
(1040, 6, '2024-03-23', 120000, 1),
(1041, 7, '2024-03-24', 120000, 1),
(1042, 2, '2024-03-25', 120000, 1),
(1043, 3, '2024-03-26', 120000, 1),
(1044, 4, '2024-03-27', 120000, 1),
(1045, 5, '2024-03-28', 120000, 1),
(1024, 6, '2024-03-29', 120000, 1),
(1025, 7, '2024-03-30', 120000, 1),
(1026, 2, '2024-03-31', 120000, 1),
(1027, 3, '2024-04-01', 120000, 1),
(1028, 4, '2024-04-02', 120000, 1),
(1029, 5, '2024-04-03', 120000, 1),
(1030, 6, '2024-04-04', 120000, 1),
(1031, 7, '2024-04-05', 120000, 1),
(1032, 2, '2024-04-06', 120000, 1),
(1033, 3, '2024-04-07', 120000, 1),
(1034, 4, '2024-04-08', 120000, 1),
(1035, 5, '2024-04-09', 120000, 1),
(1036, 6, '2024-04-10', 120000, 1),
(1037, 7, '2024-04-11', 120000, 1),
(1038, 2, '2024-04-12', 120000, 1),
(1039, 3, '2024-04-13', 120000, 1),
(1040, 4, '2024-04-14', 120000, 1),
(1041, 5, '2024-04-15', 120000, 1),
(1042, 6, '2024-04-16', 120000, 1),
(1043, 7, '2024-04-17', 120000, 1),
(1044, 2, '2024-04-18', 120000, 1),
(1045, 3, '2024-04-19', 120000, 1),
(1024, 4, '2024-04-20', 120000, 1),
(1025, 5, '2024-04-21', 120000, 1),
(1026, 6, '2024-04-22', 120000, 1),
(1027, 7, '2024-04-23', 120000, 1),
(1028, 2, '2024-04-24', 120000, 1),
(1029, 3, '2024-04-25', 120000, 1),
(1030, 4, '2024-04-26', 120000, 1),
(1031, 5, '2024-04-27', 120000, 1),
(1032, 6, '2024-04-28', 120000, 1),
(1033, 7, '2024-04-29', 120000, 1),
(1034, 2, '2024-04-30', 120000, 1),
(1035, 3, '2024-05-01', 120000, 1),
(1036, 4, '2024-05-02', 120000, 1),
(1037, 5, '2024-05-03', 120000, 1),
(1038, 6, '2024-05-04', 120000, 1),
(1039, 7, '2024-05-05', 120000, 1),
(1040, 2, '2024-05-06', 120000, 1),
(1041, 3, '2024-05-07', 120000, 1),
(1042, 4, '2024-05-08', 120000, 1),
(1043, 5, '2024-05-09', 120000, 1),
(1044, 6, '2024-05-10', 120000, 1),
(1045, 7, '2024-05-11', 120000, 1),
(1024, 2, '2024-05-12', 120000, 1),
(1025, 3, '2024-05-13', 120000, 1),
(1026, 4, '2024-05-14', 120000, 1),
(1027, 5, '2024-05-15', 120000, 1),
(1028, 6, '2024-05-16', 120000, 1),
(1029, 7, '2024-05-17', 120000, 1),
(1030, 2, '2024-05-18', 120000, 1),
(1031, 3, '2024-05-19', 120000, 1),
(1032, 4, '2024-05-20', 120000, 1),
(1033, 5, '2024-05-21', 120000, 1),
(1034, 6, '2024-05-22', 120000, 1),
(1035, 7, '2024-05-23', 120000, 1),
(1036, 2, '2024-05-24', 120000, 1),
(1037, 3, '2024-05-25', 120000, 1),
(1038, 4, '2024-05-26', 120000, 1),
(1039, 5, '2024-05-27', 120000, 1),
(1040, 6, '2024-05-28', 120000, 1),
(1041, 7, '2024-05-29', 120000, 1),
(1042, 2, '2024-05-30', 120000, 1),
(1043, 3, '2024-05-31', 120000, 1);

select * from RECEIPT;
CREATE TABLE IMPORT	
(
	ImportId int NOT NULL AUTO_INCREMENT,
    Id_User int,
	ImportDate date,
	Import_TotalMoney double,
	CONSTRAINT PK_IMPORT PRIMARY KEY(ImportId),
    CONSTRAINT FK_IMPORT FOREIGN KEY(Id_User) REFERENCES USER(User_Id)
);


CREATE TABLE UNIT
(
	Unit_Id int NOT NULL AUTO_INCREMENT,
	Unit_Name varchar(40),
    Unit_Status tinyint,
	CONSTRAINT PK_UNIT PRIMARY KEY(Unit_Id)
);
CREATE TABLE ITEMS
(
	Items_Id int NOT NULL AUTO_INCREMENT,
	Items_Name varchar(30),
	Items_Price double,
	Items_Quantity int,
    IdUnit int,
    Items_Status tinyint,
    CONSTRAINT FK_IMPORT_DETAIL2 FOREIGN KEY(IdUnit) REFERENCES UNIT(Unit_Id),
	CONSTRAINT PK_ITEMS PRIMARY KEY(Items_Id)
);




CREATE TABLE IMPORT_DETAIL
(
	Import_Detail_Id int NOT NULL AUTO_INCREMENT,
	IdImport int,
	
	IdItems int,
	Items_Price double,
	Total_Money double,
	Items_Quantity int,
	CONSTRAINT PK_IMPORT_DETAIL PRIMARY KEY(Import_Detail_Id),
	CONSTRAINT FK_IMPORT_DETAIL1 FOREIGN KEY(IdImport) REFERENCES IMPORT(ImportId),
	
	CONSTRAINT FK_IMPORT_DETAIL3 FOREIGN KEY(IdItems) REFERENCES ITEMS(Items_Id)
);

CREATE TABLE EXPORT
(
	Export_Id int NOT NULL AUTO_INCREMENT,
	Id_Agent int,
    Id_User int,
    Id_Receipt int,
	Export_Date date,
	Export_TotalMoney double,
	PayAmount double,
    Remaining double,
	CONSTRAINT PK_EXPORT PRIMARY KEY(Export_Id),
	CONSTRAINT FK_EXPORT FOREIGN KEY(Id_Agent) REFERENCES AGENT(Agent_Id),
    CONSTRAINT FK_EXPORT2 FOREIGN KEY(Id_User) REFERENCES USER(User_Id),
    CONSTRAINT FK_EXPORT3 FOREIGN KEY(Id_Receipt) REFERENCES Receipt(Receipt_Id)
);

CREATE TABLE EXPORT_DETAIL
(
	ExportDetail_Id int NOT NULL AUTO_INCREMENT,
	IdExport int,
	
	ItemsId int,
	ItemsQuantity int,
	PriceExport double,
	TotalMoney_Export double,
	CONSTRAINT PK_EXPORT_DETAIL PRIMARY KEY(ExportDetail_Id),
	CONSTRAINT FK_EXPORT_DETAIL1 FOREIGN KEY(IdExport) REFERENCES EXPORT(Export_Id),
	
	CONSTRAINT FK_EXPORT_DETAIL3 FOREIGN KEY(ItemsId) REFERENCES ITEMS(Items_Id)
);
delete from SALES_REPORT;
select * from SALES_REPORT;

select * from SALES_REPORT_DETAIL ;
CREATE TABLE SALES_REPORT
(
	SalesReport_Id int NOT NULL AUTO_INCREMENT,
    
	SalesReport_Date date,
	CONSTRAINT PK_SALES_REPORT PRIMARY KEY(SalesReport_Id)

);

drop table SALES_REPORT_DETAIL;
drop table SALES_REPORT;
CREATE TABLE SALES_REPORT_DETAIL
(
	SalesReportDetail_Id int NOT NULL AUTO_INCREMENT,
	IdSalesReport int,
	IdAgent int,
	AmountExport int,
	TotalMoney double,
	Rate float,
	CONSTRAINT PK_SALES_REPORT_DETAIL1 PRIMARY KEY(SalesReportDetail_Id),
	CONSTRAINT FK_SALES_REPORT_DETAIL1 FOREIGN KEY(IdSalesReport) REFERENCES SALES_REPORT(SalesReport_Id),
	CONSTRAINT FK_SALES_REPORT_DETAIL2 FOREIGN KEY(IdAgent) REFERENCES AGENT(Agent_Id)
);

CREATE TABLE DEBT_AGENT_REPORT
(
	DebtAgentReport_Id int AUTO_INCREMENT,
	DebtAgentReport_Date date,
	CONSTRAINT PK_DEBT_AGENT_REPORT PRIMARY KEY(DebtAgentReport_Id)
);

CREATE TABLE DEBT_AGENT_REPORT_DETAIL
(
	DebtAgentReportDetail_Id int NOT NULL AUTO_INCREMENT,
	IdDebtAgentReport int,
	IdAgent int,
	NoDau double, 
	PhatSinh double,
	NoCuoi double,
	CONSTRAINT PK_DEBT_AGENT_REPORT_DETAIL PRIMARY KEY(DebtAgentReportDetail_Id),
	CONSTRAINT FK_DEBT_AGENT_REPORT_DETAIL1 FOREIGN KEY(IdDebtAgentReport) REFERENCES DEBT_AGENT_REPORT(DebtAgentReport_Id),
	CONSTRAINT FK_DEBT_AGENT_REPORT_DETAIL2 FOREIGN KEY(IdAgent) REFERENCES AGENT(Agent_Id)
);

CREATE TABLE FIXED_VALUES (
  Maximum_Agent INT NOT NULL ,
  Maximum_Agent_District int not null,
 Rate float not null
);

INSERT INTO FIXED_VALUES (Maximum_Agent, Maximum_Agent_District, Rate)
VALUES (80, 4, 1.02);

INSERT INTO USER (UserName, Password, Email, Name, Address, BirthDate, SDT, Gender, Status)
VALUES
('admin', '1', '22521107', 'User One', 'Address 1', '1980-01-01', '0123456781', 'Male', TRUE),
('user2', 'password2', 'user2@example.com', 'User Two', 'Address 2', '1981-02-02', '0123456782', 'Female', TRUE),
('user3', 'password3', 'user3@example.com', 'User Three', 'Address 3', '1982-03-03', '0123456783', 'Male', TRUE),
('user4', 'password4', 'user4@example.com', 'User Four', 'Address 4', '1983-04-04', '0123456784', 'Female', TRUE),
('user5', 'password5', 'user5@example.com', 'User Five', 'Address 5', '1984-05-05', '0123456785', 'Male', TRUE),
('user6', 'password6', 'user6@example.com', 'User Six', 'Address 6', '1985-06-06', '0123456786', 'Female', TRUE),
('user7', 'password7', 'user7@example.com', 'User Seven', 'Address 7', '1986-07-07', '0123456787', 'Male', TRUE);

INSERT INTO ROLE (Role_1, Role_2, Role_3, Role_4, Role_5, Position, User_Id)
VALUES
(TRUE, FALSE, FALSE, FALSE, FALSE, 'Sales Manager', 1),
(FALSE, TRUE, FALSE, FALSE, FALSE, 'Account Manager', 2),
(FALSE, FALSE, TRUE, FALSE, FALSE, 'Operations Manager', 3),
(FALSE, FALSE, FALSE, TRUE, FALSE, 'Field Manager', 4),
(FALSE, FALSE, FALSE, FALSE, TRUE, 'Debt Manager', 5),
(TRUE, TRUE, FALSE, FALSE, FALSE, 'Sales & Account Manager', 6),
(TRUE, TRUE, TRUE, TRUE, TRUE, 'General Manager', 7);

INSERT INTO AGENT_TYPE (AgentType_Name, AgentType_MaxDebt, AgentType_Status)
VALUES
('SuperAgent', 10000000, 1),
('MegaAgent', 5000000, 1);

INSERT INTO district (district_Name, district_Status)
VALUES
('Quan 1', 1),
('Quan 2', 1),
('Quan 3', 1),
('Quan 4', 1),
('Quan 5', 1),
('Quan 6', 1),
('Quan 7', 1),
('Quan 8', 1),
('Quan 9', 1),
('Quan 10', 1),
('Quan 11', 1),
('Quan 12', 1),
('Quan Binh Thanh', 1),
('Quan Go Vap', 1),
('Quan Phu Nhuan', 1),
('Quan Tan Binh', 1),
('Quan Tan Phu', 1),
('Quan Thu Duc', 1),
('Quan Binh Tan', 1),
('Quan Nha Be', 1);

INSERT INTO AGENT (Agent_Name, Agent_Phone, Agent_Address, district_Id, Agent_Status, Agent_Debt, AgentType_Id, Agent_Email)
VALUES
('Agent 1', '0123456789', 'Address 1', 1, 1, 100000, 1, 'agent1@example.com'),
('Agent 2', '0123456789', 'Address 2', 1, 1, 200000, 2, 'agent2@example.com'),
('Agent 3', '0123456789', 'Address 3', 2, 1, 3000000, 1, 'agent3@example.com'),
('Agent 4', '0123456789', 'Address 4', 2, 1, 400000, 2, 'agent4@example.com'),
('Agent 5', '0123456789', 'Address 5', 3, 1, 500000, 1, 'agent5@example.com'),
('Agent 6', '0123456789', 'Address 6', 3, 1, 600000, 2, 'agent6@example.com'),
('Agent 7', '0123456789', 'Address 7', 4, 1, 700000, 1, 'agent7@example.com'),
('Agent 8', '0123456789', 'Address 8', 4, 1, 800000, 2, 'agent8@example.com'),
('Agent 9', '0123456789', 'Address 9', 5, 1, 900000, 1, 'agent9@example.com'),
('Agent 10', '0123456789', 'Address 10', 5, 1, 100000, 2, 'agent10@example.com'),
('Agent 11', '0123456789', 'Address 11', 6, 1, 110000, 1, 'agent11@example.com'),
('Agent 12', '0123456789', 'Address 12', 6, 1, 120000, 2, 'agent12@example.com'),
('Agent 13', '0123456789', 'Address 13', 7, 1, 130000, 1, 'agent13@example.com'),
('Agent 14', '0123456789', 'Address 14', 7, 1, 140000, 2, 'agent14@example.com'),
('Agent 15', '0123456789', 'Address 15', 8, 1, 150000, 1, 'agent15@example.com'),
('Agent 16', '0123456789', 'Address 16', 8, 1, 160000, 2, 'agent16@example.com'),
('Agent 17', '0123456789', 'Address 17', 9, 1, 170000, 1, 'agent17@example.com'),
('Agent 18', '0123456789', 'Address 18', 9, 1, 180000, 2, 'agent18@example.com'),
('Agent 19', '0123456789', 'Address 19', 10, 1, 190000, 1, 'agent19@example.com'),
('Agent 20', '0123456789', 'Address 20', 10, 1, 200000, 2, 'agent20@example.com'),
('Agent 21', '0123456789', 'Address 21', 11, 1, 210000, 1, 'agent21@example.com'),
('Agent 22', '0123456789', 'Address 22', 11, 1, 220000, 2, 'agent22@example.com'),
('Agent 23', '0123456789', 'Address 23', 12, 1, 230000, 1, 'agent23@example.com'),
('Agent 24', '0123456789', 'Address 24', 12, 1, 240000, 2, 'agent24@example.com'),
('Agent 25', '0123456789', 'Address 25', 13, 1, 250000, 1, 'agent25@example.com'),
('Agent 26', '0123456789', 'Address 26', 13, 1, 260000, 2, 'agent26@example.com'),
('Agent 27', '0123456789', 'Address 27', 14, 1, 270000, 1, 'agent27@example.com'),
('Agent 28', '0123456789', 'Address 28', 14, 1, 280000, 2, 'agent28@example.com'),
('Agent 29', '0123456789', 'Address 29', 15, 1, 29000, 1, 'agent29@example.com'),
('Agent 30', '0123456789', 'Address 30', 15, 1, 30000, 2, 'agent30@example.com'),
('Agent 31', '0123456789', 'Address 31', 16, 1, 31000, 1, 'agent31@example.com'),
('Agent 32', '0123456789', 'Address 32', 16, 1, 320000, 2, 'agent32@example.com'),
('Agent 33', '0123456789', 'Address 33', 17, 1, 33000, 1, 'agent33@example.com'),
('Agent 34', '0123456789', 'Address 34', 17, 1, 340000, 2, 'agent34@example.com'),
('Agent 35', '0123456789', 'Address 35', 18, 1, 350000, 1, 'agent35@example.com'),
('Agent 36', '0123456789', 'Address 36', 18, 1, 360000, 2, 'agent36@example.com'),
('Agent 37', '0123456789', 'Address 37', 19, 1, 37000, 1, 'agent37@example.com'),
('Agent 38', '0123456789', 'Address 38', 19, 1, 38000, 2, 'agent38@example.com'),
('Agent 39', '0123456789', 'Address 39', 20, 1, 390000, 1, 'agent39@example.com'),
('Agent 40', '0123456789', 'Address 40', 20, 1, 400000, 2, 'agent40@example.com');

INSERT INTO RECEPTION (IdAgent, IdAgentType, ReceptionDate)
VALUES
(1024, 1, '2023-01-01'),
(1025, 2, '2023-01-02'),
(1026, 1, '2023-01-03'),
(1027, 2, '2023-01-04'),
(1028, 1, '2023-01-05'),
(1029, 2, '2023-01-06'),
(1030, 1, '2023-01-07'),
(1031, 2, '2023-01-08'),
(1032, 1, '2023-01-09'),
(1033, 2, '2023-01-10'),
(1034, 1, '2023-01-11'),
(1035, 2, '2023-01-12'),
(1036, 1, '2023-01-13'),
(1037, 2, '2023-01-14'),
(1038, 1, '2023-01-15'),
(1039, 2, '2023-01-16'),
(1040, 1, '2023-01-17'),
(1041, 2, '2023-01-18'),
(1042, 1, '2023-01-19'),
(1043, 2, '2023-01-20'),
(1044, 1, '2023-01-21'),
(1045, 2, '2023-01-22'),
(1046, 1, '2023-01-23'),
(1047, 2, '2023-01-24'),
(1048, 1, '2023-01-25'),
(1049, 2, '2023-01-26'),
(1050, 1, '2023-01-27'),
(1051, 2, '2023-01-28'),
(1052, 1, '2023-01-29'),
(1053, 2, '2023-01-30'),
(1054, 1, '2023-01-31'),
(1055, 2, '2023-02-01'),
(1056, 1, '2023-02-02'),
(1057, 2, '2023-02-03'),
(1058, 1, '2023-02-04'),
(1059, 2, '2023-02-05'),
(1060, 1, '2023-02-06'),
(1061, 2, '2023-02-07'),
(1062, 1, '2023-02-08'),
(1063, 2, '2023-02-09');

INSERT INTO RECEIPT (Id_Agent, Id_User, ReceiptDate, MoneyReceived, IsReceived)
VALUES
(1024, 2, '2023-03-01', 1000000, 1),
(1024, 3, '2023-03-02', 1500000, 1),
(1025, 4, '2023-03-03', 1100000, 1),
(1025, 5, '2023-03-04', 1600000, 1),
(1026, 6, '2023-03-05', 1200000, 1),
(1026, 2, '2023-03-06', 1700000, 1),
(1027, 3, '2023-03-07', 1300000, 1),
(1027, 4, '2023-03-08', 1800000, 1),
(1028, 5, '2023-03-09', 1400000, 1),
(1028, 6, '2023-03-10', 1900000, 1),
(1029, 2, '2023-03-11', 1500000, 1),
(1029, 3, '2023-03-12', 2000000, 1),
(1030, 4, '2023-03-13', 1600000, 1),
(1030, 5, '2023-03-14', 1000000, 1),
(1031, 6, '2023-03-15', 1700000, 1),
(1031, 2, '2023-03-16', 1100000, 1),
(1032, 3, '2023-03-17', 1800000, 1),
(1032, 4, '2023-03-18', 1200000, 1),
(1033, 5, '2023-03-19', 1900000, 1),
(1033, 6, '2023-03-20', 1300000, 1),
(1034, 2, '2023-03-21', 2000000, 1),
(1034, 3, '2023-03-22', 1400000, 1),
(1035, 4, '2023-03-23', 1000000, 1),
(1035, 5, '2023-03-24', 1500000, 1),
(1036, 6, '2023-03-25', 1100000, 1),
(1036, 2, '2023-03-26', 1600000, 1),
(1037, 3, '2023-03-27', 1200000, 1),
(1037, 4, '2023-03-28', 1700000, 1),
(1038, 5, '2023-03-29', 1300000, 1),
(1038, 6, '2023-03-30', 1800000, 1),
(1039, 2, '2023-03-31', 1400000, 1),
(1039, 3, '2023-04-01', 1900000, 1),
(1040, 4, '2023-04-02', 1500000, 1),
(1040, 5, '2023-04-03', 2000000, 1),
(1041, 6, '2023-04-04', 1600000, 1),
(1041, 2, '2023-04-05', 1000000, 1),
(1042, 3, '2023-04-06', 1700000, 1),
(1042, 4, '2023-04-07', 1100000, 1),
(1043, 5, '2023-04-08', 1800000, 1),
(1043, 6, '2023-04-09', 1200000, 1),
(1044, 2, '2023-04-10', 1900000, 1),
(1044, 3, '2023-04-11', 1300000, 1),
(1045, 4, '2023-04-12', 2000000, 1),
(1045, 5, '2023-04-13', 1400000, 1),
(1046, 6, '2023-04-14', 1000000, 1),
(1046, 2, '2023-04-15', 1500000, 1),
(1047, 3, '2023-04-16', 1100000, 1),
(1047, 4, '2023-04-17', 1600000, 1),
(1048, 5, '2023-04-18', 1200000, 1),
(1048, 6, '2023-04-19', 1700000, 1),
(1049, 2, '2023-04-20', 1300000, 1),
(1049, 3, '2023-04-21', 1800000, 1),
(1050, 4, '2023-04-22', 1400000, 1),
(1050, 5, '2023-04-23', 1900000, 1),
(1051, 6, '2023-04-24', 1500000, 1),
(1051, 2, '2023-04-25', 2000000, 1),
(1052, 3, '2023-04-26', 1600000, 1),
(1052, 4, '2023-04-27', 1000000, 1),
(1053, 5, '2023-04-28', 1700000, 1),
(1053, 6, '2023-04-29', 1100000, 1),
(1054, 2, '2023-04-30', 1800000, 1),
(1054, 3, '2023-05-01', 1200000, 1),
(1055, 4, '2023-05-02', 1900000, 1),
(1055, 5, '2023-05-03', 1300000, 1),
(1056, 6, '2023-05-04', 2000000, 1),
(1056, 2, '2023-05-05', 1400000, 1),
(1057, 3, '2023-05-06', 1000000, 1),
(1057, 4, '2023-05-07', 1500000, 1),
(1058, 5, '2023-05-08', 1100000, 1),
(1058, 6, '2023-05-09', 1600000, 1),
(1059, 2, '2023-05-10', 1200000, 1),
(1059, 3, '2023-05-11', 1700000, 1),
(1060, 4, '2023-05-12', 1300000, 1),
(1060, 5, '2023-05-13', 1800000, 1),
(1061, 6, '2023-05-14', 1400000, 1),
(1061, 2, '2023-05-15', 1900000, 1),
(1062, 3, '2023-05-16', 1500000, 1),
(1062, 4, '2023-05-17', 2000000, 1),
(1063, 5, '2023-05-18', 1600000, 1),
(1063, 6, '2023-05-19', 1000000, 1);

INSERT INTO UNIT (Unit_Name, Unit_Status)
VALUES
('Kilogram', 1),
('Liter', 1),
('Piece', 1);


INSERT INTO ITEMS (Items_Name, Items_Price, Items_Quantity, IdUnit, Items_Status)
VALUES
('Sugar', 1.5, 100, 1, 1),
('Milk', 1.2, 200, 2, 1),
('Bread', 0.8, 150, 3, 1),
('Butter', 2.5, 80, 1, 1),
('Cheese', 3.0, 120, 3, 1);


CREATE TABLE EXPORT_DETAIL
(
	ExportDetail_Id int NOT NULL AUTO_INCREMENT,
	IdExport int,
	ItemsId int,
	ItemsQuantity int,
	PriceExport double,
	TotalMoney_Export double,
	CONSTRAINT PK_EXPORT_DETAIL PRIMARY KEY(ExportDetail_Id),
	CONSTRAINT FK_EXPORT_DETAIL1 FOREIGN KEY(IdExport) REFERENCES EXPORT(Export_Id),
	CONSTRAINT FK_EXPORT_DETAIL3 FOREIGN KEY(ItemsId) REFERENCES ITEMS(Items_Id)
);

-- Chèn dữ liệu vào bảng EXPORT_DETAIL
INSERT INTO EXPORT_DETAIL (IdExport, ItemsId, ItemsQuantity, PriceExport, TotalMoney_Export)
VALUES
    (3, 1, 10, 12000, 120000),
    (4, 1, 10, 12000, 120000),
    (5, 1, 10, 12000, 120000),
    (6, 1, 10, 12000, 120000),
    (7, 1, 10, 12000, 120000),
    (8, 1, 10, 12000, 120000),
    (9, 1, 10, 12000, 120000),
    (10, 1, 10, 12000, 120000),
    (11, 1, 10, 12000, 120000),
    (12, 1, 10, 12000, 120000),
    (13, 1, 10, 12000, 120000),
    (14, 1, 10, 12000, 120000),
    (15, 1, 10, 12000, 120000),
    (16, 1, 10, 12000, 120000),
    (17, 1, 10, 12000, 120000),
    (18, 1, 10, 12000, 120000),
    (19, 1, 10, 12000, 120000),
    (20, 1, 10, 12000, 120000),
    (21, 1, 10, 12000, 120000),
    (22, 1, 10, 12000, 120000),
    (23, 1, 10, 12000, 120000),
    (24, 1, 10, 12000, 120000),
    (25, 1, 10, 12000, 120000),
    (26, 1, 10, 12000, 120000),
    (27, 1, 10, 12000, 120000),
    (28, 1, 10, 12000, 120000),
    (29, 1, 10, 12000, 120000),
    (30, 1, 10, 12000, 120000),
    (31, 1, 10, 12000, 120000),
    (32, 1, 10, 12000, 120000),
    (33, 1, 10, 12000, 120000),
    (34, 1, 10, 12000, 120000),
    (35, 1, 10, 12000, 120000),
    (36, 1, 10, 12000, 120000),
    (37, 1, 10, 12000, 120000),
    (38, 1, 10, 12000, 120000),
    (39, 1, 10, 12000, 120000),
    (40, 1, 10, 12000, 120000),
    (41, 1, 10, 12000, 120000),
    (42, 1, 10, 12000, 120000),
    (43, 1, 10, 12000, 120000),
    (44, 1, 10, 12000, 120000),
    (45, 1, 10, 12000, 120000),
    (46, 1, 10, 12000, 120000),
    (47, 1, 10, 12000, 120000),
    (48, 1, 10, 12000, 120000),
    (49, 1, 10, 12000, 120000),
    (50, 1, 10, 12000, 120000),
    (51, 1, 10, 12000, 120000),
    (52, 1, 10, 12000, 120000),
    (53, 1, 10, 12000, 120000),
    (54, 1, 10, 12000, 120000),
    (55, 1, 10, 12000, 120000),
    (56, 1, 10, 12000, 120000),
    (57, 1, 10, 12000, 120000),
    (58, 1, 10, 12000, 120000),
    (59, 1, 10, 12000, 120000),
    (60, 1, 10, 12000, 120000),
    (61, 1, 10, 12000, 120000),
    (62, 1, 10, 12000, 120000),
    (63, 1, 10, 12000, 120000),
    (64, 1, 10, 12000, 120000),
    (65, 1, 10, 12000, 120000),
    (66, 1, 10, 12000, 120000),
    (67, 1, 10, 12000, 120000),
    (68, 1, 10, 12000, 120000),
    (69, 1, 10, 12000, 120000),
    (70, 1, 10, 12000, 120000),
    (71, 1, 10, 12000, 120000),
    (72, 1, 10, 12000, 120000),
    (73, 1, 10, 12000, 120000),
    (74, 1, 10, 12000, 120000),
    (75, 1, 10, 12000, 120000),
    (76, 1, 10, 12000, 120000),
    (77, 1, 10, 12000, 120000),
    (78, 1, 10, 12000, 120000),
    (79, 1, 10, 12000, 120000),
    (80, 1, 10, 12000, 120000),
    (81, 1, 10, 12000, 120000),
    (82, 1, 10, 12000, 120000),
    (83, 1, 10, 12000, 120000),
    (84, 1, 10, 12000, 120000),
    (85, 1, 10, 12000, 120000),
    (86, 1, 10, 12000, 120000),
    (87, 1, 10, 12000, 120000),
    (88, 1, 10, 12000, 120000),
    (89, 1, 10, 12000, 120000),
    (90, 1, 10, 12000, 120000),
    (91, 1, 10, 12000, 120000),
    (92, 1, 10, 12000, 120000),
    (93, 1, 10, 12000, 120000),
    (94, 1, 10, 12000, 120000),
    (95, 1, 10, 12000, 120000),
    (96, 1, 10, 12000, 120000),
    (97, 1, 10, 12000, 120000),
    (98, 1, 10, 12000, 120000),
    (99, 1, 10, 12000, 120000),
    (100, 1, 10, 12000, 120000),
    (101, 1, 10, 12000, 120000),
    (102, 1, 10, 12000, 120000),
    (103, 1, 10, 12000, 120000),
    (104, 1, 10, 12000, 120000),
    (105, 1, 10, 12000, 120000),
    (106, 1, 10, 12000, 120000),
    (107, 1, 10, 12000, 120000),
    (108, 1, 10, 12000, 120000),
    (109, 1, 10, 12000, 120000),
    (110, 1, 10, 12000, 120000),
    (111, 1, 10, 12000, 120000),
    (112, 1, 10, 12000, 120000),
    (113, 1, 10, 12000, 120000),
    (114, 1, 10, 12000, 120000),
    (115, 1, 10, 12000, 120000),
    (116, 1, 10, 12000, 120000),
    (117, 1, 10, 12000, 120000),
    (118, 1, 10, 12000, 120000),
    (119, 1, 10, 12000, 120000),
    (120, 1, 10, 12000, 120000),
    (121, 1, 10, 12000, 120000),
    (122, 1, 10, 12000, 120000),
    (123, 1, 10, 12000, 120000),
    (124, 1, 10, 12000, 120000),
    (125, 1, 10, 12000, 120000),
    (126, 1, 10, 12000, 120000),
    (127, 1, 10, 12000, 120000),
    (128, 1, 10, 12000, 120000),
    (129, 1, 10, 12000, 120000),
    (130, 1, 10, 12000, 120000),
    (131, 1, 10, 12000, 120000),
    (132, 1, 10, 12000, 120000),
    (133, 1, 10, 12000, 120000),
    (134, 1, 10, 12000, 120000),
    (135, 1, 10, 12000, 120000),
    (136, 1, 10, 12000, 120000),
    (137, 1, 10, 12000, 120000),
    (138, 1, 10, 12000, 120000),
    (139, 1, 10, 12000, 120000),
    (140, 1, 10, 12000, 120000),
    (141, 1, 10, 12000, 120000),
    (142, 1, 10, 12000, 120000),
    (143, 1, 10, 12000, 120000),
    (144, 1, 10, 12000, 120000),
    (145, 1, 10, 12000, 120000),
    (146, 1, 10, 12000, 120000),
    (147, 1, 10, 12000, 120000),
    (148, 1, 10, 12000, 120000),
    (149, 1, 10, 12000, 120000),
    (150, 1, 10, 12000, 120000),
    (151, 1, 10, 12000, 120000),
    (152, 1, 10, 12000, 120000),
    (153, 1, 10, 12000, 120000),
    (154, 1, 10, 12000, 120000);


INSERT INTO DEBT_AGENT_REPORT (DebtAgentReport_Date)
VALUES 
('2024-01-31'),
('2024-02-29'),
('2024-03-31'),
('2024-04-30'),
('2024-05-31');

INSERT INTO DEBT_AGENT_REPORT_DETAIL (IdDebtAgentReport, IdAgent, NoDau, PhatSinh, NoCuoi)
VALUES 
(1, 1024, 2000000, 0, 2000000),
(1, 1025, 2100000, 100000, 2200000),
(1, 1026, 2200000, 200000, 2400000),
(1, 1027, 2300000, 300000, 2600000),
(1, 1028, 2400000, 400000, 2800000),
(1, 1029, 2500000, 500000, 3000000),
(1, 1030, 2600000, 600000, 3200000),
(1, 1031, 2700000, 700000, 3400000),
(1, 1032, 2800000, -100000, 2700000),
(1, 1033, 2900000, -200000, 2700000),
(1, 1034, 3000000, -300000, 2700000),
(1, 1035, 3100000, -400000, 2700000),
(1, 1036, 3200000, -500000, 2700000),
(1, 1037, 3300000, -600000, 2700000),
(1, 1038, 3400000, -700000, 2700000),
(1, 1039, 3500000, -800000, 2700000),
(1, 1040, 2000000, 0, 2000000),
(1, 1041, 2100000, 100000, 2200000),
(1, 1042, 2200000, 200000, 2400000),
(1, 1043, 2300000, 300000, 2600000),
(1, 1044, 2400000, 400000, 2800000),
(1, 1045, 2500000, 500000, 3000000),
(1, 1046, 2600000, 600000, 3200000),
(1, 1047, 2700000, 700000, 3400000),
(1, 1048, 2800000, -100000, 2700000),
(1, 1049, 2900000, -200000, 2700000),
(1, 1050, 3000000, -300000, 2700000),
(1, 1051, 3100000, -400000, 2700000),
(1, 1052, 3200000, -500000, 2700000),
(1, 1053, 3300000, -600000, 2700000),
(1, 1054, 3400000, -700000, 2700000),
(1, 1055, 3500000, -800000, 2700000),
(1, 1056, 2000000, 0, 2000000),
(1, 1057, 2100000, 100000, 2200000),
(1, 1058, 2200000, 200000, 2400000),
(1, 1059, 2300000, 300000, 2600000),
(1, 1060, 2400000, 400000, 2800000),
(1, 1061, 2500000, 500000, 3000000),
(1, 1062, 2600000, 600000, 3200000),
(1, 1063, 2700000, 700000, 3400000);

INSERT INTO DEBT_AGENT_REPORT_DETAIL (IdDebtAgentReport, IdAgent, NoDau, PhatSinh, NoCuoi)
VALUES 
(2, 1024, 2000000, 0, 2000000),
(2, 1025, 2200000, -100000, 2100000),
(2, 1026, 2400000, -200000, 2200000),
(2, 1027, 2600000, -300000, 2300000),
(2, 1028, 2800000, -400000, 2400000),
(2, 1029, 3000000, -500000, 2500000),
(2, 1030, 3200000, -600000, 2600000),
(2, 1031, 3400000, -700000, 2700000),
(2, 1032, 2700000, 100000, 2800000),
(2, 1033, 2700000, 200000, 2900000),
(2, 1034, 2700000, 300000, 3000000),
(2, 1035, 2700000, 400000, 3100000),
(2, 1036, 2700000, 500000, 3200000),
(2, 1037, 2700000, 600000, 3300000),
(2, 1038, 2700000, 700000, 3400000),
(2, 1039, 2700000, 800000, 3500000),
(2, 1040, 2000000, 0, 2000000),
(2, 1041, 2200000, -100000, 2100000),
(2, 1042, 2400000, -200000, 2200000),
(2, 1043, 2600000, -300000, 2300000),
(2, 1044, 2800000, -400000, 2400000),
(2, 1045, 3000000, -500000, 2500000),
(2, 1046, 3200000, -600000, 2600000),
(2, 1047, 3400000, -700000, 2700000),
(2, 1048, 2700000, 100000, 2800000),
(2, 1049, 2700000, 200000, 2900000),
(2, 1050, 2700000, 300000, 3000000),
(2, 1051, 2700000, 400000, 3100000),
(2, 1052, 2700000, 500000, 3200000),
(2, 1053, 2700000, 600000, 3300000),
(2, 1054, 2700000, 700000, 3400000),
(2, 1055, 2700000, 800000, 3500000),
(2, 1056, 2000000, 0, 2000000),
(2, 1057, 2200000, -100000, 2100000),
(2, 1058, 2400000, -200000, 2200000),
(2, 1059, 2600000, -300000, 2300000),
(2, 1060, 2800000, -400000, 2400000),
(2, 1061, 3000000, -500000, 2500000),
(2, 1062, 3200000, -600000, 2600000),
(2, 1063, 3400000, -700000, 2700000);

INSERT INTO DEBT_AGENT_REPORT_DETAIL (IdDebtAgentReport, IdAgent, NoDau, PhatSinh, NoCuoi)
VALUES 
(3, 1024, 2000000, 0, 2000000),
(3, 1025, 2100000, 100000, 2200000),
(3, 1026, 2200000, 200000, 2400000),
(3, 1027, 2300000, 300000, 2600000),
(3, 1028, 2400000, 400000, 2800000),
(3, 1029, 2500000, 500000, 3000000),
(3, 1030, 2600000, 600000, 3200000),
(3, 1031, 2700000, 700000, 3400000),
(3, 1032, 2700000, -100000, 2800000),
(3, 1033, 2700000, -200000, 2900000),
(3, 1034, 2700000, -300000, 3000000),
(3, 1035, 2700000, -400000, 3100000),
(3, 1036, 2700000, -500000, 3200000),
(3, 1037, 2700000, -600000, 3300000),
(3, 1038, 2700000, -700000, 3400000),
(3, 1039, 2700000, -800000, 3500000),
(3, 1040, 2000000, 0, 2000000),
(3, 1041, 2100000, 100000, 2200000),
(3, 1042, 2200000, 200000, 2400000),
(3, 1043, 2300000, 300000, 2600000),
(3, 1044, 2400000, 400000, 2800000),
(3, 1045, 2500000, 500000, 3000000),
(3, 1046, 2600000, 600000, 3200000),
(3, 1047, 2700000, 700000, 3400000),
(3, 1048, 2700000, -100000, 2800000),
(3, 1049, 2700000, -200000, 2900000),
(3, 1050, 2700000, -300000, 3000000),
(3, 1051, 2700000, -400000, 3100000),
(3, 1052, 2700000, -500000, 3200000),
(3, 1053, 2700000, -600000, 3300000),
(3, 1054, 2700000, -700000, 3400000),
(3, 1055, 2700000, -800000, 3500000),
(3, 1056, 2000000, 0, 2000000),
(3, 1057, 2100000, 100000, 2200000),
(3, 1058, 2200000, 200000, 2400000),
(3, 1059, 2300000, 300000, 2600000),
(3, 1060, 2400000, 400000, 2800000),
(3, 1061, 2500000, 500000, 3000000),
(3, 1062, 2600000, 600000, 3200000),
(3, 1063, 2700000, 700000, 3400000);

INSERT INTO DEBT_AGENT_REPORT_DETAIL (IdDebtAgentReport, IdAgent, NoDau, PhatSinh, NoCuoi)
VALUES 
(4, 1024, 2000000, 0, 2000000),
(4, 1025, 2200000, -100000, 2100000),
(4, 1026, 2400000, -200000, 2200000),
(4, 1027, 2600000, -300000, 2300000),
(4, 1028, 2800000, -400000, 2400000),
(4, 1029, 3000000, -500000, 2500000),
(4, 1030, 3200000, -600000, 2600000),
(4, 1031, 3400000, -700000, 2700000),
(4, 1032, 2800000, 100000, 2700000),
(4, 1033, 2900000, 200000, 2700000),
(4, 1034, 3000000, 300000, 2700000),
(4, 1035, 3100000, 400000, 2700000),
(4, 1036, 3200000, 500000, 2700000),
(4, 1037, 3300000, 600000, 2700000),
(4, 1038, 3400000, 700000, 2700000),
(4, 1039, 3500000, 800000, 2700000),
(4, 1040, 2000000, 0, 2000000),
(4, 1041, 2200000, -100000, 2100000),
(4, 1042, 2400000, -200000, 2200000),
(4, 1043, 2600000, -300000, 2300000),
(4, 1044, 2800000, -400000, 2400000),
(4, 1045, 3000000, -500000, 2500000),
(4, 1046, 3200000, -600000, 2600000),
(4, 1047, 3400000, -700000, 2700000),
(4, 1048, 2800000, 100000, 2700000),
(4, 1049, 2900000, 200000, 2700000),
(4, 1050, 3000000, 300000, 2700000),
(4, 1051, 3100000, 400000, 2700000),
(4, 1052, 3200000, 500000, 2700000),
(4, 1053, 3300000, 600000, 2700000),
(4, 1054, 3400000, 700000, 2700000),
(4, 1055, 3500000, 800000, 2700000),
(4, 1056, 2000000, 0, 2000000),
(4, 1057, 2200000, -100000, 2100000),
(4, 1058, 2400000, -200000, 2200000),
(4, 1059, 2600000, -300000, 2300000),
(4, 1060, 2800000, -400000, 2400000),
(4, 1061, 3000000, -500000, 2500000),
(4, 1062, 3200000, -600000, 2600000),
(4, 1063, 3400000, -700000, 2700000);

INSERT INTO DEBT_AGENT_REPORT_DETAIL (IdDebtAgentReport, IdAgent, NoDau, PhatSinh, NoCuoi)
VALUES 
(5, 1024, 2000000, 0, 2000000),
(5, 1025, 2200000, -100000, 2100000),
(5, 1026, 2400000, -200000, 2200000),
(5, 1027, 2600000, -300000, 2300000),
(5, 1028, 2800000, -400000, 2400000),
(5, 1029, 3000000, -500000, 2500000),
(5, 1030, 3200000, -600000, 2600000),
(5, 1031, 3400000, -700000, 2700000),
(5, 1032, 2800000, 100000, 2700000),
(5, 1033, 2900000, 200000, 2700000),
(5, 1034, 3000000, 300000, 2700000),
(5, 1035, 3100000, 400000, 2700000),
(5, 1036, 3200000, 500000, 2700000),
(5, 1037, 3300000, 600000, 2700000),
(5, 1038, 3400000, 700000, 2700000),
(5, 1039, 3500000, 800000, 2700000),
(5, 1040, 2000000, 0, 2000000),
(5, 1041, 2200000, -100000, 2100000),
(5, 1042, 2400000, -200000, 2200000),
(5, 1043, 2600000, -300000, 2300000),
(5, 1044, 2800000, -400000, 2400000),
(5, 1045, 3000000, -500000, 2500000),
(5, 1046, 3200000, -600000, 2600000),
(5, 1047, 3400000, -700000, 2700000),
(5, 1048, 2800000, 100000, 2700000),
(5, 1049, 2900000, 200000, 2700000),
(5, 1050, 3000000, 300000, 2700000),
(5, 1051, 3100000, 400000, 2700000),
(5, 1052, 3200000, 500000, 2700000),
(5, 1053, 3300000, 600000, 2700000),
(5, 1054, 3400000, 700000, 2700000),
(5, 1055, 3500000, 800000, 2700000),
(5, 1056, 2000000, 0, 2000000),
(5, 1057, 2200000, -100000, 2100000),
(5, 1058, 2400000, -200000, 2200000),
(5, 1059, 2600000, -300000, 2300000),
(5, 1060, 2800000, -400000, 2400000),
(5, 1061, 3000000, -500000, 2500000),
(5, 1062, 3200000, -600000, 2600000),
(5, 1063, 3400000, -700000, 2700000);



