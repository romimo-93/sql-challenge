-- Table: public.salary

-- DROP TABLE public.salary;

CREATE TABLE public.salary
(
    employee_id integer NOT NULL,
    salary integer NOT NULL,
    CONSTRAINT fk_salary_employee_id FOREIGN KEY (employee_id)
        REFERENCES public.employee (employee_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.salary
    OWNER to postgres;