-- Table: public.department

-- DROP TABLE public.department;

CREATE TABLE public.department
(
    department_id character varying(4) COLLATE pg_catalog."default" NOT NULL,
    department_name character varying(40) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_department PRIMARY KEY (department_id)
)

TABLESPACE pg_default;

ALTER TABLE public.department
    OWNER to postgres;