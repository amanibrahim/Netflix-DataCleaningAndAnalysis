-- Table: public.netflix_fact

-- DROP TABLE IF EXISTS public.netflix_fact;

CREATE TABLE IF NOT EXISTS public.netflix_fact
(
    fact_id integer NOT NULL DEFAULT nextval('netflix_fact_fact_id_seq'::regclass),
    show_id integer,
    country_id integer,
    category_id integer,
    year_id integer,
    rating_id integer,
    date_added date,
    duration character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT netflix_fact_pkey PRIMARY KEY (fact_id),
    CONSTRAINT netflix_fact_category_id_fkey FOREIGN KEY (category_id)
        REFERENCES public.category_dim (category_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT netflix_fact_country_id_fkey FOREIGN KEY (country_id)
        REFERENCES public.country_dim (country_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT netflix_fact_rating_id_fkey FOREIGN KEY (rating_id)
        REFERENCES public.rating_dim (rating_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT netflix_fact_show_id_fkey FOREIGN KEY (show_id)
        REFERENCES public.show_dim (show_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT netflix_fact_year_id_fkey FOREIGN KEY (year_id)
        REFERENCES public.release_year_dim (year_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.netflix_fact
    OWNER to postgres;