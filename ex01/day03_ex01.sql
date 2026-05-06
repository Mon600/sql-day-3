SELECT m.id
    FROM menu AS m
LEFT JOIN person_order AS po
    ON po.menu_id = m.id
WHERE po.menu_id IS NULL
ORDER BY 1;
