PRAGMA foreign_keys = ON;

CREATE TABLE products (
    sku TEXT PRIMARY KEY NOT NULL,
    product_name TEXT NOT NULL
);

CREATE TABLE orders (
    order_id TEXT PRIMARY KEY NOT NULL,
    ordered_at TEXT NOT NULL,
    shipped_at TEXT
);

CREATE TABLE order_items (
    order_id TEXT NOT NULL,
    sku TEXT NOT NULL,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    PRIMARY KEY (order_id, sku),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (sku) REFERENCES products(sku)
);
