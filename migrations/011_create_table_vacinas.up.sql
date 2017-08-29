CREATE TABLE vacinas (
    id serial NOT NULL,
    name character varying(255) NOT NULL,
    mandatory boolean NOT NULL,
    link_pdf text,
    validity_months integer,
    ref_group_id serial REFERENCES ref_group (id),
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_vacinas
BEFORE UPDATE ON vacinas
FOR EACH ROW EXECUTE PROCEDURE update_datetime();