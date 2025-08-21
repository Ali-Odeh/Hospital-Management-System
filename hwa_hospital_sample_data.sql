 
 INSERT INTO hwa.Doctors (D_ID, First_Name, Last_Name, Specialist, Mobile, Email, Password, Address) VALUES
(1, 'Ahmed', 'Al-Masri', 'Cardiologist', '0501234567', 'ahmed.almasri@example.com', 'pass123', '123 Main St'),
(2, 'Layla', 'Abbas', 'Neurologist', '0501234568', 'layla.abbas@example.com', 'pass124', '124 Main St'),
(3, 'Hassan', 'Fayyad', 'Pediatrician', '0501234569', 'hassan.fayyad@example.com', 'pass125', '125 Main St'),
(4, 'Sara', 'Najjar', 'Dermatologist', '0501234570', 'sara.najjar@example.com', 'pass126', '126 Main St'),
(5, 'Khalid', 'Al-Hakim', 'Orthopedist', '0501234571', 'khalid.alhakim@example.com', 'pass127', '127 Main St');

----------------------

INSERT INTO hwa.Nurses (N_ID, Name, NurseDutyHour, Email, Mobile, Password) VALUES
(1, 'Fatima', '08:00 - 16:00', 'fatima@example.com', '0507654321', 'nurse123'),
(2, 'Yousef', '16:00 - 00:00', 'yousef@example.com', '0507654322', 'nurse124'),
(3, 'Amira', '00:00 - 08:00', 'amira@example.com', '0507654323', 'nurse125'),
(4, 'Ibrahim', '08:00 - 16:00', 'ibrahim@example.com', '0507654324', 'nurse126'),
(5, 'Noura', '16:00 - 00:00', 'noura@example.com', '0507654325', 'nurse127');

----------------------

INSERT INTO hwa.Patients (P_ID, First_Name, Last_Name, DateOfBirth, Gender, Address, Phone, Email, History_ID, Blood_Group) VALUES
(1, 'Mohammed', 'Al-Salem', '1990-01-15', 'Male', '201 East St', '0551234567', 'mohammed.alsalem@example.com', 1001, 'A+'),
(2, 'Aisha', 'Al-Khalidi', '1985-04-20', 'Female', '202 East St', '0551234568', 'aisha.alkhalidi@example.com', 1002, 'O-'),
(3, 'Omar', 'Farid', '1978-07-30', 'Male', '203 East St', '0551234569', 'omar.farid@example.com', 1003, 'B+'),
(4, 'Huda', 'Mansour', '1995-10-12', 'Female', '204 East St', '0551234570', 'huda.mansour@example.com', 1004, 'AB+'),
(5, 'Ali', 'Najem', '1982-12-22', 'Male', '205 East St', '0551234571', 'ali.najem@example.com', 1005, 'A-');

----------------------

INSERT INTO hwa.Appointments (A_ID, Date, Time, Description, D_ID, P_ID) VALUES
(1, '2023-11-25', '10:00', 'Routine Checkup', 1, 1),
(2, '2023-11-26', '11:00', 'Consultation', 2, 2),
(3, '2023-11-27', '09:30', 'Follow-up', 3, 3),
(4, '2023-11-28', '14:00', 'Skin Examination', 4, 4),
(5, '2023-11-29', '16:00', 'Orthopedic Consultation', 5, 5);

----------------------

INSERT INTO hwa.Invoices (I_ID, Amount, Payment_Status, P_ID) VALUES
(1, 200.00, 'Pending', 1),
(2, 150.00, 'Paid', 2),
(3, 300.00, 'Pending', 3),
(4, 250.00, 'Paid', 4),
(5, 350.00, 'Pending', 5);

----------------------

INSERT INTO hwa.Medications (M_ID, Name, Dosage, ExpiryDate) VALUES
(1, 'Amoxicillin', '500mg', '2024-12-31'),
(2, 'Ibuprofen', '200mg', '2025-05-30'),
(3, 'Paracetamol', '500mg', '2024-08-15'),
(4, 'Lisinopril', '10mg', '2025-02-20'),
(5, 'Metformin', '1000mg', '2024-11-10');

----------------------

INSERT INTO hwa.Prescriptions (Prescription_ID, P_ID, M_ID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

----------------------

INSERT INTO hwa.PatientNurseAssignments (Assignment_ID, P_ID, N_ID, AssignmentDetails) VALUES
(1, 1, 1, 'Regular Monitoring'),
(2, 2, 2, 'Post-surgical Care'),
(3, 3, 3, 'Overnight Observation'),
(4, 4, 4, 'Medication Administration'),
(5, 5, 5, 'Specialized Nursing Care');

