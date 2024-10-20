-- Table: public.rating_dim

-- DROP TABLE IF EXISTS public.rating_dim;

CREATE TABLE IF NOT EXISTS public.rating_dim
(
    rating_id integer NOT NULL DEFAULT nextval('rating_dim_rating_id_seq'::regclass),
    rating character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT rating_dim_pkey PRIMARY KEY (rating_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rating_dim
    OWNER to postgres;