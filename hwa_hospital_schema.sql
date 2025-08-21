CREATE TABLE hwa.Doctors (
    D_ID int PRIMARY KEY,
    First_Name varchar(255),
    Last_Name varchar(255),
    Specialist varchar(255),
    Mobile varchar(255),
    Email varchar(255),
    Password varchar(255),
    Address varchar(255)
);

----------------------

CREATE TABLE hwa.Nurses (
    N_ID int PRIMARY KEY,
    Name varchar(255),
    NurseDutyHour varchar(255),
    Email varchar(255),
    Mobile varchar(255),
    Password varchar(255)
);

----------------------

CREATE TABLE hwa.Patients (
    P_ID int PRIMARY KEY,
    First_Name varchar(255),
    Last_Name varchar(255),
    DateOfBirth date,
    Gender varchar(255),
    Address varchar(255),
    Phone varchar(255),
    Email varchar(255),
    History_ID int,
    Blood_Group varchar(255)
);

----------------------

CREATE TABLE hwa.Appointments (
    A_ID int PRIMARY KEY,
    Date date,
    Time time,
    Description varchar(255),
    D_ID int,
    P_ID int,
    FOREIGN KEY (D_ID) REFERENCES hwa.Doctors(D_ID),
    FOREIGN KEY (P_ID) REFERENCES hwa.Patients(P_ID)
);

----------------------

CREATE TABLE hwa.Invoices (
    I_ID int PRIMARY KEY,
    Amount double precision,
    Payment_Status varchar(255),
    P_ID int,
    FOREIGN KEY (P_ID) REFERENCES hwa.Patients(P_ID)
);

----------------------

CREATE TABLE hwa.Medications (
    M_ID int PRIMARY KEY,
    Name varchar(255),
    Dosage varchar(255),
    ExpiryDate date
);

----------------------

CREATE TABLE hwa.Prescriptions (
    Prescription_ID int PRIMARY KEY,
    P_ID int,
    M_ID int,
    FOREIGN KEY (P_ID) REFERENCES hwa.Patients(P_ID),
    FOREIGN KEY (M_ID) REFERENCES hwa.Medications(M_ID)
);

----------------------

CREATE TABLE hwa.PatientNurseAssignments (
    Assignment_ID int PRIMARY KEY,
    P_ID int,
    N_ID int,
    AssignmentDetails varchar(255),
    FOREIGN KEY (P_ID) REFERENCES hwa.Patients(P_ID),
    FOREIGN KEY (N_ID) REFERENCES hwa.Nurses(N_ID)
);
 
