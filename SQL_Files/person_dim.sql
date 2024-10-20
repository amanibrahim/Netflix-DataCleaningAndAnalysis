-- Table: public.person_dim

-- DROP TABLE IF EXISTS public.person_dim;

CREATE TABLE IF NOT EXISTS public.person_dim
(
    person_id integer NOT NULL DEFAULT nextval('person_dim_person_id_seq'::regclass),
    person_name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT person_dim_pkey PRIMARY KEY (person_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.person_dim
    OWNER to postgres;