-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Departments] (
    [department_id] VARCHAR(4)  NOT NULL ,
    [department_name] VARCHAR(40)  NOT NULL ,
    CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED (
        [department_id] ASC
    )
)

CREATE TABLE [Department_Employee] (
    [employee_id] int  NOT NULL ,
    [department_id] VARCHAR(4)  NOT NULL ,
    CONSTRAINT [PK_Department_Employee] PRIMARY KEY CLUSTERED (
        [employee_id] ASC
    )
)

CREATE TABLE [Department_Manager] (
    [employee_id] int  NOT NULL ,
    [department_id] VARCHAR(4)  NOT NULL ,
    CONSTRAINT [PK_Department_Manager] PRIMARY KEY CLUSTERED (
        [employee_id] ASC
    )
)

CREATE TABLE [Employees] (
    [employee_id] int  NOT NULL ,
    [title_id] VARCHAR(6)  NOT NULL ,
    [birth_date] date  NOT NULL ,
    [first_name] VARCHAR(20)  NOT NULL ,
    [last_name] VARCHAR(20)  NOT NULL ,
    [sex] VARCHAR(1)  NOT NULL ,
    [hire_date] date  NOT NULL ,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED (
        [employee_id] ASC
    )
)

CREATE TABLE [Salaries] (
    [employee_id] int  NOT NULL ,
    [salary] int  NOT NULL ,
    CONSTRAINT [PK_Salaries] PRIMARY KEY CLUSTERED (
        [employee_id] ASC
    )
)

CREATE TABLE [Titles] (
    [title_id] VARCHAR(5)  NOT NULL ,
    [title] VARCHAR(40)  NOT NULL ,
    CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED (
        [title_id] ASC
    )
)

ALTER TABLE [Department_Employee] WITH CHECK ADD CONSTRAINT [FK_Department_Employee_department_id] FOREIGN KEY([department_id])
REFERENCES [Departments] ([department_id])

ALTER TABLE [Department_Employee] CHECK CONSTRAINT [FK_Department_Employee_department_id]

ALTER TABLE [Department_Manager] WITH CHECK ADD CONSTRAINT [FK_Department_Manager_employee_id] FOREIGN KEY([employee_id])
REFERENCES [Salaries] ([employee_id])

ALTER TABLE [Department_Manager] CHECK CONSTRAINT [FK_Department_Manager_employee_id]

ALTER TABLE [Department_Manager] WITH CHECK ADD CONSTRAINT [FK_Department_Manager_department_id] FOREIGN KEY([department_id])
REFERENCES [Departments] ([department_id])

ALTER TABLE [Department_Manager] CHECK CONSTRAINT [FK_Department_Manager_department_id]

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_employee_id] FOREIGN KEY([employee_id])
REFERENCES [Department_Employee] ([employee_id])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_employee_id]

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_title_id] FOREIGN KEY([title_id])
REFERENCES [Titles] ([title_id])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_title_id]

ALTER TABLE [Salaries] WITH CHECK ADD CONSTRAINT [FK_Salaries_employee_id] FOREIGN KEY([employee_id])
REFERENCES [Employees] ([employee_id])

ALTER TABLE [Salaries] CHECK CONSTRAINT [FK_Salaries_employee_id]

COMMIT TRANSACTION QUICKDBD