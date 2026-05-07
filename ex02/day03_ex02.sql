SELECT m.pizza_name, m.price, pz.name AS pizzeria_name
    FROM menu AS m
LEFT JOIN person_order AS po
    ON po.menu_id = m.id
JOIN pizzeria AS pz
    ON pz.id = m.pizzeria_id
WHERE po.menu_id IS NULL
ORDER BY 1, 2;
