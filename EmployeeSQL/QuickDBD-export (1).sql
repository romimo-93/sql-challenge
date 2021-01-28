-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "department" (
    "department_id" VARCHAR(4)   NOT NULL,
    "department_name" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "department_id"
     )
);

CREATE TABLE "department_employee" (
    "employee_id" int   NOT NULL,
    "department_id" VARCHAR(4)   NOT NULL
);

CREATE TABLE "department_manager" (
    "employee_id" int   NOT NULL,
    "department_id" VARCHAR(4)   NOT NULL
);

CREATE TABLE "employee" (
    "employee_id" int   NOT NULL,
    "title_id" VARCHAR(6)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employee" PRIMARY KEY (
        "employee_id"
     )
);

CREATE TABLE "salary" (
    "employee_id" int   NOT NULL,
    "salary" int   NOT NULL
);

CREATE TABLE "title" (
    "title_id" VARCHAR(5)   NOT NULL,
    "title" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "department_employee" ADD CONSTRAINT "fk_department_employee_employee_id" FOREIGN KEY("employee_id")
REFERENCES "employee" ("employee_id");

ALTER TABLE "department_employee" ADD CONSTRAINT "fk_department_employee_department_id" FOREIGN KEY("department_id")
REFERENCES "department" ("department_id");

ALTER TABLE "department_manager" ADD CONSTRAINT "fk_department_manager_employee_id" FOREIGN KEY("employee_id")
REFERENCES "employee" ("employee_id");

ALTER TABLE "department_manager" ADD CONSTRAINT "fk_department_manager_department_id" FOREIGN KEY("department_id")
REFERENCES "department" ("department_id");

ALTER TABLE "employee" ADD CONSTRAINT "fk_employee_title_id" FOREIGN KEY("title_id")
REFERENCES "title" ("title_id");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_employee_id" FOREIGN KEY("employee_id")
REFERENCES "employee" ("employee_id");

