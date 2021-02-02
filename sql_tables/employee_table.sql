-- Table: public.employee

-- DROP TABLE public.employee;

CREATE TABLE public.employee
(
    employee_id integer NOT NULL,
    title_id character varying(6) COLLATE pg_catalog."default" NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    sex character varying(1) COLLATE pg_catalog."default" NOT NULL,
    hire_date date NOT NULL,
    CONSTRAINT pk_employee PRIMARY KEY (employee_id),
    CONSTRAINT fk_employee_title_id FOREIGN KEY (title_id)
        REFERENCES public.title (title_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.employee
    OWNER to postgres;