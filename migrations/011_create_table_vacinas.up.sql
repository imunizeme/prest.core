CREATE TABLE vacinas (
    id serial NOT NULL,
    nome_vacina character varying(255) NOT NULL,
    dose integer NOT NULL,
    dose-anterior_id integer NOT NULL,
    periodo_dose_anterior integer,
    reforco boolean DEFAULT false NOT NULL,
    grupo_id serial REFERENCES ref_group (id),
    idade_inicio integer NOT NULL,
    doencas_evitadas text,
    observacoes text,
    created_at timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone DEFAULT now(),
    PRIMARY KEY (id)
);

CREATE TRIGGER update_vacinas
BEFORE UPDATE ON vacinas
FOR EACH ROW EXECUTE PROCEDURE update_datetime();