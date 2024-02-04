use firstDb;

CREATE TABLE users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Password VARCHAR(255),
    ContactNumber VARCHAR(20),
    Address TEXT
);

select * from users;

create database courier_mgmt;

use courier_mgmt;

CREATE TABLE users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Password VARCHAR(255),
    ContactNumber VARCHAR(20),
    Address TEXT
);

create table couriers
(CourierID INT PRIMARY KEY, 
SenderName VARCHAR(255), 
SenderAddress TEXT, 
ReceiverName VARCHAR(255), 
ReceiverAddress TEXT, 
Weight DECIMAL(5, 2), 
Status VARCHAR(50), 
TrackingNumber VARCHAR(20) UNIQUE, 
DeliveryDate DATE);

create table courierservices
(ServiceID INT PRIMARY KEY, 
ServiceName VARCHAR(100), 
Cost DECIMAL(8, 2)); 

select * from courierservices;


create table employees
(EmployeeID INT PRIMARY KEY, 
Name VARCHAR(255), 
Email VARCHAR(255) UNIQUE, 
ContactNumber VARCHAR(20), 
Role VARCHAR(50), 
Salary DECIMAL(10, 2));

select * from employees;

create table locations
(LocationID INT PRIMARY KEY, 
LocationName VARCHAR(100), 
Address TEXT);


select * from locations;

create table payments
(PaymentID INT PRIMARY KEY, 
CourierID INT, 
LocationId INT, 
Amount DECIMAL(10, 2), 
PaymentDate DATE, 
FOREIGN KEY (CourierID) REFERENCES Couriers(CourierID), 
FOREIGN KEY (LocationID) REFERENCES Locations(LocationID));








