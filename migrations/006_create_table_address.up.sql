CREATE TABLE address (
    id serial NOT NULL,
    zipcode integer UNIQUE NOT NULL,
    street character varying(255) NOT NULL,
    street_num integer NOT NULL DEFAULT 0,
    complement character varying(255),
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    local point,
    PRIMARY KEY (id)
);

CREATE INDEX local_index ON address USING gist(local);

CREATE TRIGGER update_address
BEFORE UPDATE ON address
FOR EACH ROW EXECUTE PROCEDURE update_datetime();