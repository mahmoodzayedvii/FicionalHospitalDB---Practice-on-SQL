-- ADMISSIONS
INSERT INTO Admissions (Admission_ID, Pt_ID, Room_ID, Admission_Date, Discharge_Date, Admission_Reason) VALUES
(1, 1, 1, '2025-05-01', '2025-05-06', 'Cardiac arrhythmia monitoring'),
(2, 5, 6, '2025-05-10', '2025-05-15', 'Hip replacement surgery'),
(3, 6, 5, '2025-05-20', NULL, 'Pediatric observation, ongoing'),
(4, 2, 4, '2025-06-01', '2025-06-03', 'Severe allergic reaction');
-- APPOINTMENTS
INSERT INTO Appointments (Appointment_ID, Pt_ID, DR_ID, Appointment_Date, Appointment_Time, Status, Reason) VALUES
(1, 1, 1, '2025-05-01', '09:00 AM', 'Completed', 'Chest pain evaluation'),
(2, 2, 7, '2025-06-01', '10:30 AM', 'Completed', 'Allergic reaction follow-up'),
(3, 3, 5, '2025-06-10', '01:00 PM', 'Scheduled', 'MRI review'),
(4, 4, 6, '2025-06-15', '11:15 AM', 'Scheduled', 'Post-op cardiac checkup'),
(5, 5, 4, '2025-05-09', '08:45 AM', 'Completed', 'Pre-surgery consultation'),
(6, 6, 3, '2025-05-20', '02:00 PM', 'Completed', 'Routine pediatric checkup'),
(7, 7, 2, '2025-06-20', '04:30 PM', 'Cancelled', 'General consultation');
-- INVOICES
INSERT INTO Invoices (Invoice_ID, Pt_ID, Appointment_ID, Amount, Payment_Status, Issue_Date) VALUES
(1, 1, 1, 1200, 'Paid', '2025-05-01'),
(2, 2, 2, 800, 'Paid', '2025-06-01'),
(3, 3, 3, 1500, 'Pending', '2025-06-10'),
(4, 4, 4, 950, 'Pending', '2025-06-15'),
(5, 5, 5, 5000, 'Paid', '2025-05-09'),
(6, 6, 6, 400, 'Paid', '2025-05-20'),
(7, 7, NULL, 300, 'Cancelled', '2025-06-20');
-- MR (Medical Records)
INSERT INTO MR (Record_ID, Pt_ID, DR_ID, Visit_Date, Diagnosis, Notes) VALUES
(1, 1, 1, '2025-05-01', 'Atrial fibrillation', 'Patient advised to start beta-blockers, follow up in 2 weeks'),
(2, 2, 7, '2025-06-01', 'Anaphylaxis', 'Administered epinephrine, stabilized within the hour'),
(3, 3, 5, '2025-06-10', 'Suspected disc herniation', 'MRI scheduled, prescribed pain management in the meantime'),
(4, 5, 4, '2025-05-09', 'Hip osteoarthritis', 'Scheduled for hip replacement surgery'),
(5, 6, 3, '2025-05-20', 'Routine checkup - healthy', 'No abnormalities found, growth on track');
-- LAB_TESTS
INSERT INTO Lab_Tests (Lab_Test_ID, Record_ID, Test_Name, Test_Date, Results, Status) VALUES
(1, 1, 'ECG', '2025-05-01', 'Irregular rhythm detected', 'Completed'),
(2, 1, 'Blood Panel', '2025-05-01', 'Slightly elevated cholesterol', 'Completed'),
(3, 2, 'Allergy Panel', '2025-06-01', 'Positive for shellfish allergy', 'Completed'),
(4, 3, 'MRI Scan', '2025-06-10', 'Pending review', 'In Progress'),
(5, 4, 'X-Ray - Hip', '2025-05-09', 'Confirmed joint degeneration', 'Completed');
-- MEDS
INSERT INTO Meds (Med_ID, Name, Manufacturer, Unit_Price, Stock_Quantity) VALUES
(1, 'Atenolol 50mg', 'Pharco Pharmaceuticals', 15, 500),
(2, 'Epinephrine Auto-Injector', 'EVA Pharma', 250, 100),
(3, 'Ibuprofen 400mg', 'Amoun Pharmaceuticals', 8, 1000),
(4, 'Paracetamol 500mg', 'GSK Egypt', 5, 2000),
(5, 'Omeprazole 20mg', 'Sanofi Egypt', 20, 750);
-- PRESCRIPTIONS
INSERT INTO Prescriptions (Prescriptions_ID, Record_ID, Med_ID, Dosage, Duration, Instructions) VALUES
(1, 1, 1, '50mg once daily', '30 days', 'Take in the morning with food'),
(2, 2, 2, 'As needed', '1 dose', 'Use only in case of severe allergic reaction'),
(3, 3, 3, '400mg every 8 hours', '10 days', 'Take with food to avoid stomach upset'),
(4, 4, 3, '400mg twice daily', '14 days', 'For post-surgery pain management'),
(5, 1, 5, '20mg once daily', '30 days', 'Take before breakfast');
-- INSERT: INSURANCE
INSERT INTO Insurance (Insurance_ID, Provider_Name, Policy_Number, Coverage_Details, Vaild_Until) VALUES
(1, 'Misr Health Insurance', 'MHI-2024-0011', 'Full coverage including surgery and ICU', '2027-01-01'),
(2, 'Nile Care', 'NC-2023-0456', 'Outpatient and emergency coverage only', '2026-12-31'),
(3, 'Gulf Shield Insurance', 'GSI-2024-0789', 'Full coverage with dental add-on', '2028-06-30'),
(4, 'Al Amal Insurance', 'AA-2022-0234', 'Basic outpatient coverage', '2026-09-15'),
(5, 'Delta Health Group', 'DHG-2024-0912', 'Full coverage, no maternity', '2027-03-20');
-- INSERT: PATIENTS
INSERT INTO Patients (Pt_ID, Insurance_ID, First_Name, Last_Name, Dob, Gender, Phone, Email, Address, Blood_Type, Emergency_Contact_Name, Emergency_Contact_Phone, Created_At) VALUES
(1, 1, 'Youssef', 'Abdel Rahman', '1990-05-14', 'Male', '01021112233', 'youssef.ar@gmail.com', '12 El Nasr St, Cairo', 'O+', 'Mariam Abdel Rahman', '01098887766', '2025-01-10 09:30:00'),
(2, 2, 'Nourhan', 'Sami', '1985-11-02', 'Female', '01022223344', 'nourhan.sami@gmail.com', '5 Corniche El Nil, Giza', 'A+', 'Tamer Sami', '01097776655', '2025-02-15 11:00:00'),
(3, NULL, 'Khaled', 'Mansour', '2001-07-23', 'Male', '01023334455', 'khaled.mansour@gmail.com', '9 El Haram St, Giza', 'B-', 'Huda Mansour', '01096665544', '2025-03-01 14:45:00'),
(4, 3, 'Farida', 'El Sherbini', '1995-02-18', 'Female', '01024445566', 'farida.sherbini@gmail.com', '20 Ramses St, Cairo', 'AB+', 'Hassan El Sherbini', '01095554433', '2025-03-20 08:15:00'),
(5, 4, 'Mostafa', 'Kamel', '1978-09-09', 'Male', '01025556677', 'mostafa.kamel@gmail.com', '3 El Tahrir Sq, Cairo', 'O-', 'Dalia Kamel', '01094443322', '2025-04-05 16:20:00'),
(6, 5, 'Salma', 'Wahba', '2010-12-30', 'Female', '01026667788', 'salma.wahba@gmail.com', '18 Zahraa El Maadi, Cairo', 'A-', 'Wael Wahba', '01093332211', '2025-04-22 10:05:00'),
(7, 2, 'Amr', 'Fekry', '1999-04-11', 'Male', '01027778899', 'amr.fekry@gmail.com', '7 El Gomhoria St, Alexandria', 'B+', 'Nada Fekry', '01092221100', '2025-05-01 13:40:00');
-- DEPARTMENTS (Head_DR_ID left NULL for now — set after Doctors exist)
INSERT INTO Departments (Department_ID, Head_DR_ID, Department_Name, Location, Phone_EXT) VALUES
(1, NULL, 'Cardiology', 'Building A, Floor 2', 101),
(2, NULL, 'Emergency', 'Building A, Floor 1', 102),
(3, NULL, 'Pediatrics', 'Building B, Floor 1', 103),
(4, NULL, 'Orthopedics', 'Building B, Floor 3', 104),
(5, NULL, 'Radiology', 'Building C, Floor 1', 105);
-- DOCTORS
INSERT INTO Doctors (DR_ID, Department_ID, First_Name, Last_Name, Specialization, License_Number, Phone, Email) VALUES
(1, 1, 'Ahmed', 'Fathy', 'Cardiologist', 100234, '01001112233', 'ahmed.fathy@mzhospital.com'),
(2, 2, 'Mona', 'Youssef', 'Emergency Medicine', 100235, '01002223344', 'mona.youssef@mzhospital.com'),
(3, 3, 'Karim', 'Nabil', 'Pediatrician', 100236, '01003334455', 'karim.nabil@mzhospital.com'),
(4, 4, 'Laila', 'Hassan', 'Orthopedic Surgeon', 100237, '01004445566', 'laila.hassan@mzhospital.com'),
(5, 5, 'Omar', 'Adel', 'Radiologist', 100238, '01005556677', 'omar.adel@mzhospital.com'),
(6, 1, 'Salma', 'Ibrahim', 'Cardiac Surgeon', 100239, '01006667788', 'salma.ibrahim@mzhospital.com'),
(7, 2, 'Tarek', 'Mostafa', 'Trauma Specialist', 100240, '01007778899', 'tarek.mostafa@mzhospital.com');
-- set Head_DR_ID for each department
UPDATE Departments SET Head_DR_ID = 1 WHERE Department_ID = 1;
UPDATE Departments SET Head_DR_ID = 2 WHERE Department_ID = 2;
UPDATE Departments SET Head_DR_ID = 3 WHERE Department_ID = 3;
UPDATE Departments SET Head_DR_ID = 4 WHERE Department_ID = 4;
UPDATE Departments SET Head_DR_ID = 5 WHERE Department_ID = 5;
-- ROOMS
INSERT INTO Rooms (Room_ID, Department_ID, Room_Number, Room_Type, Status) VALUES
(1, 1, 201, 'ICU', 'Occupied'),
(2, 1, 202, 'General', 'Available'),
(3, 2, 101, 'Emergency', 'Available'),
(4, 2, 102, 'Emergency', 'Occupied'),
(5, 3, 301, 'General', 'Available'),
(6, 4, 401, 'Operating Room', 'Occupied'),
(7, 4, 402, 'General', 'Available'),
(8, 5, 501, 'Scan Room', 'Available');
-- NURSES
INSERT INTO Nurses (Nurse_ID, Department_ID, First_Name, Last_Name, Shift, Phone) VALUES
(1, 1, 'Nourhan', 'Saeed', 'Morning', '01011112233'),
(2, 1, 'Yasmin', 'Adly', 'Night', '01012223344'),
(3, 2, 'Hossam', 'Kamal', 'Evening', '01013334455'),
(4, 3, 'Rania', 'Fouad', 'Morning', '01014445566'),
(5, 4, 'Sara', 'Ashraf', 'Night', '01015556677'),
(6, 5, 'Mahmoud', 'Zaki', 'Evening', '01016667788');