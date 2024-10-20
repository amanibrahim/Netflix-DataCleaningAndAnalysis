-- Table: public.show_person_bridge

-- DROP TABLE IF EXISTS public.show_person_bridge;

CREATE TABLE IF NOT EXISTS public.show_person_bridge
(
    show_id integer,
    person_id integer,
    role character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT show_person_bridge_person_id_fkey FOREIGN KEY (person_id)
        REFERENCES public.person_dim (person_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT show_person_bridge_show_id_fkey FOREIGN KEY (show_id)
        REFERENCES public.show_dim (show_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.show_person_bridge
    OWNER to postgres;