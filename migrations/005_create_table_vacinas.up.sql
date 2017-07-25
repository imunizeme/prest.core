CREATE TABLE vacinas (
    id serial NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    validity_months integer NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    id_users serial REFERENCES users (id),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_vacinas
BEFORE UPDATE ON users
FOR EACH ROW EXECUTE PROCEDURE update_datetime();