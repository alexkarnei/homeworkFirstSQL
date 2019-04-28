-- Table: public."Teachers"

-- DROP TABLE public."Teachers";

CREATE TABLE public."Teachers"
(
    id integer NOT NULL DEFAULT nextval('"Teachers_id_seq"'::regclass) ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    employment_date date NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    premium money NOT NULL DEFAULT 0,
    salary money NOT NULL,
    surname character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Teachers_pkey" PRIMARY KEY (id),
    CONSTRAINT check_teachers_employment_date CHECK (employment_date >= '1990-01-01'::date) NOT VALID,
    CONSTRAINT check_teachers_name CHECK (name::text <> ' '::text),
    CONSTRAINT check_teachars_premium CHECK (premium >= 0::money),
    CONSTRAINT check_teachers_solary CHECK (salary > 0::money),
    CONSTRAINT check_teachers_surname CHECK (surname::text <> ' '::text)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Teachers"
    OWNER to postgres;