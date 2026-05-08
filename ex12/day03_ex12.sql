
INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT 
    (SELECT COALESCE(MAX(id), 0) FROM person_order) + ROW_NUMBER() OVER(ORDER BY p.id),
    p.id,
    m.id,
    '2022-02-25'
FROM person p
CROSS JOIN (SELECT id FROM menu WHERE pizza_name = 'greek pizza' LIMIT 1) AS m;

SELECT *
FROM person_order
WHERE order_date = '2022-02-25';

-- DELETE FROM person_order
-- WHERE order_date = '2022-02-25';
