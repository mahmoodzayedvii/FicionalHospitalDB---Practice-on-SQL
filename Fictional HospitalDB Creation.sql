-- Creating the database
create database FictionalHospital;

-- creating the tables
create table Rooms (
Room_ID int,
Department_ID int,
Room_Number int,
Room_Type varchar (100),
Status varchar (100),
PRIMARY KEY (Room_ID)
);

create table Departments (
Department_ID int,
Head_DR_ID int,
Department_Name varchar (100),
Location varchar (100),
Phone_EXT INT,
PRIMARY KEY (Department_ID)
);

-- altering the Rooms Table to add a foreign key as the Dep table didn't exist when we were creating the Rooms table
alter table Rooms
add foreign key (Department_Id) references Departments(Department_ID)
on delete set null;

create table Doctors (
DR_ID int,
Department_ID int,
First_Name varchar (50),
Last_Name varchar (50),
Specialization varchar (100),
License_Number int unique,
Phone varchar (100),
Email varchar (100),
PRIMARY KEY (DR_ID),
FOREIGN KEY (Department_ID) references Departments(Department_ID)
on delete set null
);

-- altering the Departments Table to add a foreign key as the Doctors table didn't exist when we were creating the Department table
alter table Departments
add foreign key (Head_DR_ID) references Doctors(DR_ID)
on delete set null;

create table Nurses (
Nurse_ID int,
Department_ID int,
First_Name varchar (50),
Last_Name varchar (50),
Shift enum ('Morning', 'Evening', 'Night'),
Phone varchar (100),
PRIMARY KEY (Nurse_ID),
FOREIGN KEY (Department_ID) references Departments(Department_ID)
on delete set null
);

create table Insurance (
Insurance_ID Int Primary key not null,
Provider_Name varchar (100),
Policy_Number int unique,
Coverage_Details varchar (255),
Vaild_Until date
);

create table Patients (
Pt_ID int,
Insurance_ID int,
First_Name varchar (100),
Last_Name varchar (100),
DOB date,
Gender varchar (10),
Phone varchar (50),
Email varchar (100),
Address varchar (255),
Blood_Type varchar (10),
Emergency_Contact_Name varchar (100),
Emergency_Contact_Phone varchar (100),
Created_At date,
PRIMARY KEY (Pt_ID),
FOREIGN KEY (Insurance_ID) references Insurance(Insurance_id)
on delete set null
);

create table Admissions (
Admission_ID int,
Pt_ID int,
Room_ID int,
Admission_Date date,
Discharge_Date date,
Admission_Reason varchar (255),
PRIMARY KEY (Admission_ID),
FOREIGN KEY (Pt_ID) references Patients(Pt_ID)
on delete set null,
FOREIGN KEY (Room_ID) references Rooms(Room_ID)
on delete set null
);

create table Appointments (
Appointment_ID int,
Pt_ID int,
DR_ID int,
Appointment_Date date,
Appointment_Time varchar (100),
Status varchar (255),
Reason varchar (255),
PRIMARY KEY (Appointment_ID),
FOREIGN KEY (Pt_ID) references Patients(Pt_ID)
on delete set null,
FOREIGN KEY (DR_ID) references Doctors(DR_ID)
on delete set null
);

create table Invoices (
Invoice_ID int unique,
Pt_ID int,
Appointment_ID int,
Amount int,
Payment_Status Varchar (50),
Issue_Date date,
PRIMARY KEY (Invoice_ID),
FOREIGN KEY (Pt_ID) references Patients(Pt_ID) 
on delete set null,
FOREIGN KEY (Appointment_ID) references Appointments(Appointment_ID) 
on delete set null
);

create Table MR (
Record_ID int unique,
Pt_ID int,
DR_ID int,
Visit_Date date,
Diagnosis varchar (100),
Notes varchar (1000),
PRIMARY KEY (Record_ID),
FOREIGN KEY (Pt_ID) references Patients(Pt_ID) 
on delete set null,
FOREIGN KEY (DR_ID) references Doctors(DR_ID) 
on delete set null
);

create table Lab_Tests (
Lab_Test_ID int,
Record_ID int ,
Test_Name varchar (100),
Test_Date date,
Results varchar (100),
Status varchar (100),
PRIMARY KEY (Lab_Test_ID),
FOREIGN KEY (Record_ID) references MR(Record_ID) 
on delete set null
);

Create table Meds (
Med_ID int unique primary key,
Name varchar (150),
Manufacturer varchar (150),
Unit_Price int,
Stock_Quantity int
);

create table Prescriptions (
Prescriptions_ID int,
Record_ID int,
Med_ID Int,
Dosage varchar (150),
Duration varchar (100),
Instructions varchar (1000),
PRIMARY KEY (Prescriptions_ID),
FOREIGN KEY (Record_ID) references MR(Record_ID) 
on delete set null,
FOREIGN KEY (Med_ID) references Meds(Med_ID) 
on delete set null
);
 
 
