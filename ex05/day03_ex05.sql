(SELECT pz.name
FROM person_visits AS pv
    JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
    JOIN person AS p ON p.id = pv.person_id
WHERE p.name = 'Andrey')
EXCEPT
(SELECT pz.name
FROM person_order AS po
    JOIN person AS p ON p.id = po.person_id
    JOIN menu AS m ON m.id = po.menu_id
    JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
WHERE p.name = 'Andrey');