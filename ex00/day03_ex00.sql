SELECT
    m.pizza_name AS pizza_name,
    m.price AS price,
    pz.name AS pizzeria_name,
    pv.visit_date AS visit_date
FROM person AS p
JOIN person_visits AS pv
    ON pv.person_id = p.id
JOIN pizzeria AS pz
    ON pz.id = pv.pizzeria_id
JOIN menu AS m
    ON pz.id = m.pizzeria_id
WHERE p.name = 'Kate' AND m.price BETWEEN 800 AND 1000
ORDER BY 1, 2, 3;