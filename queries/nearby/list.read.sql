SELECT c.nome_clinica, a.*  
FROM clinicas c INNER JOIN address a ON c.address_id = a.id 
ORDER BY POINT({{.lat}}, {{.lng}}) <-> a.local LIMIT 10