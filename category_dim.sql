-- Table: public.category_dim

-- DROP TABLE IF EXISTS public.category_dim;

CREATE TABLE IF NOT EXISTS public.category_dim
(
    category_id integer NOT NULL DEFAULT nextval('category_dim_category_id_seq'::regclass),
    category_name character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT category_dim_pkey PRIMARY KEY (category_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.category_dim
    OWNER to postgres;