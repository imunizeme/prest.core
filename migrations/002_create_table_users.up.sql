CREATE TABLE users (
    id serial NOT NULL,
    name character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    cpf character varying(15) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_users
BEFORE UPDATE ON users
FOR EACH ROW EXECUTE PROCEDURE update_datetime();