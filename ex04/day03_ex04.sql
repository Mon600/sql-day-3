((SELECT pz.name AS pizzeria_name
FROM menu AS m
    JOIN person_order AS po ON po.menu_id = m.id
    JOIN person AS p ON p.id = po.person_id
    JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
WHERE p.gender = 'female')
EXCEPT
(SELECT pz.name AS pizzeria_name
FROM menu AS m
    JOIN person_order AS po ON po.menu_id = m.id
    JOIN person AS p ON p.id = po.person_id
    JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
WHERE p.gender = 'male'))

UNION 

((SELECT pz.name AS pizzeria_name
FROM menu AS m
    JOIN person_order AS po ON po.menu_id = m.id
    JOIN person AS p ON p.id = po.person_id
    JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
WHERE p.gender = 'male')
EXCEPT
(SELECT pz.name AS pizzeria_name
FROM menu AS m
    JOIN person_order AS po ON po.menu_id = m.id
    JOIN person AS p ON p.id = po.person_id
    JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
WHERE p.gender = 'female'))
ORDER BY pizzeria_name;