-- Table: public.title

-- DROP TABLE public.title;

CREATE TABLE public.title
(
    title_id character varying(5) COLLATE pg_catalog."default" NOT NULL,
    title character varying(40) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_title PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE public.title
    OWNER to postgres;