SELECT va.nome_vacina, p.sexo, p.birth_date, cv.data_tomada, COUNT(cv.id) AS vacinas_tomadas FROM vacinas va 
INNER JOIN carteirinha_vacina cv ON va.id = cv.vacinas_id 
INNER JOIN profile p ON p.user_id = cv.user_id 
WHERE 1 = 1 
{{if isSet "sexo"}}
AND p.sexo = '{{.sexo}}' 
{{end}}
{{if isSet "birth"}}
AND p.birth_date > '{{.birth}}' 
{{end}}
GROUP BY va.nome_vacina, p.sexo, p.birth_date, cv.data_tomada