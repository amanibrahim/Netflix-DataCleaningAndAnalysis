-- Table: public.show_dim

-- DROP TABLE IF EXISTS public.show_dim;

CREATE TABLE IF NOT EXISTS public.show_dim
(
    show_id integer NOT NULL DEFAULT nextval('show_dim_show_id_seq'::regclass),
    title character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT show_dim_pkey PRIMARY KEY (show_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.show_dim
    OWNER to postgres;