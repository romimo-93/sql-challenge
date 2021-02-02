-- Table: public.department_employee

-- DROP TABLE public.department_employee;

CREATE TABLE public.department_employee
(
    employee_id integer NOT NULL,
    department_id character varying(4) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT fk_department_employee_department_id FOREIGN KEY (department_id)
        REFERENCES public.department (department_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_department_employee_employee_id FOREIGN KEY (employee_id)
        REFERENCES public.employee (employee_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.department_employee
    OWNER to postgres;