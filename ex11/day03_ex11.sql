UPDATE menu
    SET price = (price - (price * 0.1))::INTEGER
WHERE pizza_name = 'greek pizza';

SELECT *
FROM menu
WHERE pizza_name LIKE '%greek pizza%';

-- UPDATE menu
--     SET price = 800
-- WHERE pizza_name = 'greek pizza';