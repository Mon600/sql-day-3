INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES (
    (SELECT COALESCE(MAX(id), 0) + 1 FROM person_order),
    (SELECT id FROM person WHERE name = 'Denis' LIMIT 1),
    (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza' LIMIT 1),
    '2022-02-24'
)

INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES (
    (SELECT COALESCE(MAX(id), 0) + 1 FROM person_order),
    (SELECT id FROM person WHERE name = 'Irina'),
    (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
    '2022-02-24'
)

SELECT *
FROM person_order
WHERE order_date = '2022-02-24';

-- DELETE FROM person_order
-- WHERE visit_date = '2022-02-24';