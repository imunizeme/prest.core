CREATE TABLE carteirinha(
    id serial NOT NULL,
    vacinas_id serial REFERENCES vacinas (id),
    ative boolean NOT NULL,
    user_id serial REFERENCES users (id),
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_carteirinha
BEFORE UPDATE ON carteirinha
FOR EACH ROW EXECUTE PROCEDURE update_datetime();