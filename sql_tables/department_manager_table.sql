-- Table: public.department_manager

-- DROP TABLE public.department_manager;

CREATE TABLE public.department_manager
(
    employee_id integer NOT NULL,
    department_id character varying(4) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT fk_department_manager_department_id FOREIGN KEY (department_id)
        REFERENCES public.department (department_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_department_manager_employee_id FOREIGN KEY (employee_id)
        REFERENCES public.employee (employee_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.department_manager
    OWNER to postgres;