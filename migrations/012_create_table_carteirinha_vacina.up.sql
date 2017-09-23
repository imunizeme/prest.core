CREATE TABLE carteirinha_vacina(
    id serial NOT NULL,
    vacinas_id serial REFERENCES vacinas (id),
    user_id serial REFERENCES users (id),
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_carteirinha_vacina
BEFORE UPDATE ON carteirinha_vacina
FOR EACH ROW EXECUTE PROCEDURE update_datetime();