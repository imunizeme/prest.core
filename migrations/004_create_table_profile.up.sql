CREATE TABLE profile (
    id serial NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    birth_date timestamp without time zone NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    id_users serial REFERENCES users (id),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_profile
BEFORE UPDATE ON users
FOR EACH ROW EXECUTE PROCEDURE update_datetime();