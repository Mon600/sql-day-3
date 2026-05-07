(SELECT pz.name AS pizzeria_name
FROM person_visits AS pv
   JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
    JOIN person AS p ON p.id = pv.person_id
WHERE p.gender = 'female'
EXCEPT ALL
SELECT pz.name AS pizzeria_name
FROM person_visits AS pv
    JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
    JOIN person AS p ON p.id = pv.person_id
WHERE p.gender = 'male')

UNION ALL

(SELECT pz.name AS pizzeria_name
FROM person_visits AS pv
    JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
    JOIN person AS p ON p.id = pv.person_id
WHERE p.gender = 'male'
EXCEPT ALL
SELECT pz.name AS pizzeria_name
FROM person_visits AS pv
    JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
    JOIN person AS p ON p.id = pv.person_id
WHERE p.gender = 'female')
ORDER BY pizzeria_name;
