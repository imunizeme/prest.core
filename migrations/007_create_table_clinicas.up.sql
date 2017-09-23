CREATE TABLE clinicas (
    id serial NOT NULL,
    nome_clinica character varying(255) NOT NULL,
    patrocinado boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    address_id serial REFERENCES address (id),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_clinicas
BEFORE UPDATE ON clinicas
FOR EACH ROW EXECUTE PROCEDURE update_datetime();