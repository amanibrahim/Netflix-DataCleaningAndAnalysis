-- Table: public.release_year_dim

-- DROP TABLE IF EXISTS public.release_year_dim;

CREATE TABLE IF NOT EXISTS public.release_year_dim
(
    year_id integer NOT NULL DEFAULT nextval('release_year_dim_year_id_seq'::regclass),
    release_year integer,
    CONSTRAINT release_year_dim_pkey PRIMARY KEY (year_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.release_year_dim
    OWNER to postgres;