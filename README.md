# 🏥 Fictional Hospital — SQL Practice Project

A fictional hospital database designed and built **from scratch by Mahmoud** as a personal project to practice SQL — schema design, relationships, constraints, and query writing.

This repository contains the full database schema, sample (fictional) data, an ER diagram, and a growing set of SQL practice problems with solutions.

> ⚠️ All data in this project is 100% fictional and was generated for practice purposes only. No real patient, doctor, or hospital data is used.

---

## 📌 About This Project

`Fictionalhospital` is a relational database that models a hospital's day-to-day operations: departments, doctors, nurses, rooms, patients, insurance, admissions, appointments, invoices, medical records, lab tests, medicines, and prescriptions.

The goal of this project is to practice:
- Relational schema design (primary keys, foreign keys, constraints)
- Handling circular dependencies between tables (e.g. Departments ↔ Doctors)
- Writing realistic, fictional data for a multi-table schema
- Solving progressively harder SQL problems, from basic `SELECT` statements to advanced joins, subqueries, and window functions

---

## 🗂️ Repository Contents

| File | Description |
|---|---|
| `Fictional HospitalDB Creation.sql` | Full `CREATE TABLE` statements for all 13 tables, including primary keys, foreign keys, and constraints |
| `FictionalHospitalDB Data.sql` | Fictional `INSERT` statements populating every table with sample data |
| `fictional_hospital.png` | Entity-Relationship (ER) diagram of the full schema |
| `SQL Practice Problems.sql` | A set of SQL problems with solutions, based on this schema |

---

## 🗺️ Entity-Relationship Diagram

The schema includes 13 tables:

`Departments`, `Doctors`, `Nurses`, `Rooms`, `Insurance`, `Patients`, `Admissions`, `Appointments`, `Invoices`, `MR` (Medical Records), `Lab_Tests`, `Meds`, `Prescriptions`

See `fictional_hospital.png` for the full diagram with primary keys, foreign keys, and relationships.

---

## 🧠 SQL Practice Problems

The current problem set (`SQL Practice Problems.sql`) includes **35 problems**, covering:

- Basic `SELECT` & filtering (`WHERE`, `LIKE`, `BETWEEN`, `IS NULL`)
- Sorting, limiting & `DISTINCT`
- Aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
- `GROUP BY`


### 🚧 Coming Soon

This project is actively being expanded. Upcoming updates will add a much larger, more advanced problem set covering roughly **90% of common SQL query types**, including:

- `HAVING`
- `INNER` / `LEFT` / `RIGHT` / `SELF` joins
- Multi-table joins
- Subqueries (`IN`, `EXISTS`, correlated subqueries)
- Set operations (`UNION`, `INTERSECT`, `EXCEPT`)
- String & date functions
- `CASE WHEN` conditional logic
- Window functions, CTEs, views & transactions

Stay tuned for updates over the next few days.

---

## 🚀 How to Use

1. Run `schema.sql` to create the database structure.
2. Run `data.sql` to populate it with fictional data.
3. Open `sql_practice_problems.pdf` and try solving the problems yourself before checking the solutions.
4. Use `fictional_hospital.png` as a reference while writing queries.

---

## ✍️ Author

Created by **Mahmoud**, as a self-directed project to practice and strengthen SQL skills.
