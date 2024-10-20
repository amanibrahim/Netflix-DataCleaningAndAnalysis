-- Table: public.country_dim

-- DROP TABLE IF EXISTS public.country_dim;

CREATE TABLE IF NOT EXISTS public.country_dim
(
    country_id integer NOT NULL DEFAULT nextval('country_dim_country_id_seq'::regclass),
    country_name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT country_dim_pkey PRIMARY KEY (country_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.country_dim
    OWNER to postgres;