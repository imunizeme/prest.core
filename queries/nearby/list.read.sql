SELECT c.nome_clinica, a.*, ST_Distance(POINT({{.lat}}, {{.lng}}), a.local) AS distancia 
ORDER BY POINT({{.lat}}, {{.lng}}) <-> a.local LIMIT 10