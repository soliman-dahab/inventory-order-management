SELECT
    order_id,
    ROUND((julianday(shipped_at) - julianday(ordered_at)) * 24, 2)
        AS hours_to_ship
FROM orders
WHERE shipped_at IS NOT NULL
ORDER BY order_id;
