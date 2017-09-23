CREATE TABLE ref_group (
    id serial NOT NULL,
    name varchar(255) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    PRIMARY KEY (id)
);
CREATE TRIGGER update_ref_group
BEFORE UPDATE ON ref_group
FOR EACH ROW EXECUTE PROCEDURE update_datetime();