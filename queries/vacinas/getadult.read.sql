SELECT va.*, cv.id as cv_id, cv.user_id, cv.data_tomada, cv.vacinas_id FROM vacinas va LEFT JOIN carteirinha_vacina cv ON va.id = cv.vacinas_id AND cv.user_id = {{.user_id}} WHERE va.grupo_id > 4