CREATE TABLE clinicas (
    id serial NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_clinicas
BEFORE UPDATE ON clinicas
FOR EACH ROW EXECUTE PROCEDURE update_datetime();