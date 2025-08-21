# 🏥 Hospital Management System  

![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-blue?logo=postgresql)  
![Java](https://img.shields.io/badge/Language-Java-orange?logo=coffeescript)  
![NetBeans](https://img.shields.io/badge/IDE-NetBeans-lightblue?logo=apache-netbeans-ide)  
![License](https://img.shields.io/badge/License-MIT-green)  

---

## Overview  
The **Hospital Management System (HMS)** is a database-driven project designed to modernize and improve the efficiency of hospital operations.  
It streamlines:  
- Patient records management  
- Appointment scheduling  
- Medication tracking  
- Invoice processing  

By leveraging **PostgreSQL** and relational database principles (Functional Dependencies, Normalization, BCNF), the system ensures **data integrity**, **scalability**, and **ease of access** for healthcare professionals.  

---

## Features  
**Admin** → Full CRUD operations for doctors, nurses, patients, appointments, medications, and invoices  
**Doctor** → View and search patient appointments  
**Nurse** → Access and search assigned patients  
**Patient** → View medications & invoices  
**Guest** → Limited access to doctor/nurse contact info  

---

## Entities & Relationships  
- **Patient** (PatientID, Name, DOB, Gender, Contact, History, BloodGroup)  
- **Doctor** (DoctorID, Name, Specialist, Contact)  
- **Nurse** (NurseID, Name, DutyHours, Contact)  
- **Appointments** (AppointmentID, Date, Time, DoctorID, PatientID, Notes)  
- **Medications** (MedicationID, Name, Dosage, ExpiryDate)  
- **Invoices** (InvoiceID, PatientID, Amount, PaymentStatus)  

**Relationships:**  
- One-to-Many → Doctor ↔ Appointments, Patient ↔ Appointments, Patient ↔ Invoices  
- Many-to-Many → Patient ↔ Medications, Patient ↔ Nurses  

---

## Tools & Technologies  
- **Programming IDE:** NetBeans  
- **Database:** PostgreSQL (via pgAdmin)  
- **Modeling:** UML (draw.io)  
- **Reporting:** JasperSoft Studio  

---

## How It Works  
1. Launch the program → Choose login: **Admin, Doctor, Nurse, Patient, Guest**  
2. **Admin** → Manage all data (Add, Edit, Delete, Search)  
3. **Doctor/Nurse/Patient** → Login with Master Key + Password to view their respective data  
4. **Guest** → Only view contact info of doctors & nurses  

---

## Database Normalization  
The system database follows **Boyce-Codd Normal Form (BCNF)** → ensuring:  
- No redundancy  
- Strong data integrity  
- Efficient queries  

 ---

## 🖥️ GUI Description  
User interfaces for **Admin, Guest, Doctor, Patient, and Nurse** roles with **login-based access controls**.  
 
