-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "department_id" VARCHAR(4)   NOT NULL,
    "department_name" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "department_id"
     )
);

CREATE TABLE "Department_Employee" (
    "employee_id" int   NOT NULL,
    "department_id" VARCHAR(4)   NOT NULL,
    CONSTRAINT "pk_Department_Employee" PRIMARY KEY (
        "employee_id"
     )
);

CREATE TABLE "Department_Manager" (
    "employee_id" int   NOT NULL,
    "department_id" VARCHAR(4)   NOT NULL,
    CONSTRAINT "pk_Department_Manager" PRIMARY KEY (
        "employee_id"
     )
);

CREATE TABLE "Employees" (
    "employee_id" int   NOT NULL,
    "title_id" VARCHAR(6)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "employee_id"
     )
);

CREATE TABLE "Salaries" (
    "employee_id" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "employee_id"
     )
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR(5)   NOT NULL,
    "title" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_department_id" FOREIGN KEY("department_id")
REFERENCES "Departments" ("department_id");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_employee_id" FOREIGN KEY("employee_id")
REFERENCES "Salaries" ("employee_id");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_department_id" FOREIGN KEY("department_id")
REFERENCES "Departments" ("department_id");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_employee_id" FOREIGN KEY("employee_id")
REFERENCES "Department_Employee" ("employee_id");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_title_id" FOREIGN KEY("title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_employee_id" FOREIGN KEY("employee_id")
REFERENCES "Employees" ("employee_id");

