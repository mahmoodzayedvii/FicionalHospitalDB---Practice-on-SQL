-- 1. List all patients' first and last names along with their blood type.
Select first_name, last_name, blood_type from patients;

-- 2. Retrieve all doctors who specialize in 'Cardiologist'.
select * from doctors
where specialization = 'Cardiologist';

-- 3. Find all rooms that are currently 'Available'.
select * from rooms
where status = 'Available';

-- 4. List all patients whose blood type is 'O+'.
select * from patients
where blood_type = 'o+';

-- 5. Retrieve all appointments with a status of 'Scheduled'.
select * from appointments
where status = 'Scheduled';

-- 6. Find all invoices where the payment status is 'Pending'.
select * from Invoices
where Payment_status = 'Pending';

-- 7. List all nurses who work the 'Night' shift.
select * from nurses
where shift = 'night';

-- 8. Retrieve all patients born after January 1, 1995.
select * from patients
where dob > 1995-01-02;

-- 9. Find all medicines with a unit price greater than 10.
select * from meds
where unit_price > 10;

-- 10. List all departments located in 'Building A, Floor 2'.
select * from Departments
where location = 'Building A, Floor 2';

-- 11. Retrieve all doctors whose phone number ends with '344'.
select * from doctors
where phone like '%344';

-- 12. Find all patients who do NOT have insurance on file.
select * from patients
Where insurance_id is null;

-- 13. List all admissions that have not yet been discharged.
select * from admissions
where Discharge_Date is null;

-- 14. Retrieve all invoices with an amount between 500 and 1500.
select * from invoices
where amount between 500 and 1500;

-- 15. Find all patients whose first name starts with the letter 'M'.
select * from patients
where first_name like 'm%';

-- 16. List all patients ordered by date of birth, oldest first.
select * from patients
order by dob asc;

-- 17. Retrieve the top 3 most expensive medicines.
select * from meds
order by unit_price desc
limit 3;

-- 18. List all distinct specializations among doctors.
select distinct Specialization from doctors;

-- 19. Retrieve all invoices sorted by amount descending, then issue date ascending.
select * from invoices
order by amount desc, issue_date asc;

-- 20. List the 5 most recent appointments.
select * from appointments
order by Appointment_Date desc
limit 5;

-- 21. Count the total number of patients in the system.
select count(pt_id) as total_patients from patients;

-- 23. Find the total revenue collected from all paid invoices.
Select sum(Amount) as revenue_collected from invoices
where payment_status = 'paid';

-- 24. Find the highest invoice amount ever recorded.
select max(amount) as highest_invoice from invoices
where payment_status = 'paid';

-- 25. Find the lowest stock quantity among all medicines.
select min(stock_quantity) as lowest_stock_quantity from meds;

-- 26. Count how many rooms are currently occupied.
select count(room_id) as currently_occupied from rooms
where status = 'occupied';

-- 27. Find the total number of prescriptions ever issued.
select count(*) as Total_Prescriptions from prescriptions;

-- 28. Calculate the average invoice amount across the hospital.
select avg(amount) as average_invoice_amount from invoices;

-- 29. Find the earliest appointment date on record.
select min(appointment_date) as earliest_appointment
from appointments;

-- 30. Find the total stock quantity across all medicines combined.
select sum(stock_quantity) as total_stock_quantity from meds;

-- 31. Count the number of doctors in each department.
select count(Department_id), department_id from doctors
group by (department_id);

-- 32. Find the total invoice amount collected per patient.
select sum(amount) as total_amount,pt_id from invoices
group by pt_id;

-- 33. Count the number of appointments handled by each doctor.
select count(Appointment_ID) as appointment_count, dr_id from appointments
group by dr_id;

-- 34. Find the average unit price of medicines grouped by manufacturer.
select avg(unit_price) as average_unit_price , manufacturer from meds
group by manufacturer;

-- 35. Count the number of nurses assigned to each shift.
select shift, count(Nurse_id) as assigned_nurses from nurses
group by shift;
