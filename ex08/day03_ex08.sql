INSERT INTO menu (id, pizzeria_id, pizza_name, price)
VALUES (
    (SELECT COALESCE(MAX(id), 0) + 1 FROM menu),
    (SELECT id FROM pizzeria WHERE name LIKE '%Dominos%'),
    'sicilian pizza',
    900);

SELECT *
    FROM menu
WHERE id = (SELECT COALESCE(MAX(id), 0) FROM menu);