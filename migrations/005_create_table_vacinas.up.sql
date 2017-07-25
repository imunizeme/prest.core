CREATE TABLE vacinas (
    id serial NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    validity_months integer NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    user_id serial REFERENCES users (id),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_vacinas
BEFORE UPDATE ON vacinas
FOR EACH ROW EXECUTE PROCEDURE update_datetime();