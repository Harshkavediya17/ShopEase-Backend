INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'iPhone 17', 'Apple', 'Latest Apple smartphone with powerful performance and an advanced camera.', 79999.00, 'Electronics', '2026-01-15', true, 25
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'iPhone 17'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Galaxy S26', 'Samsung', 'Premium smartphone with a brilliant display and powerful performance.', 74999.00, 'Electronics', '2026-02-10', true, 30
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Galaxy S26'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'WH-1000XM6', 'Sony', 'Premium wireless headphones with industry-leading noise cancellation.', 34999.00, 'Electronics', '2026-03-05', true, 40
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'WH-1000XM6'
);


INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Air Max Sneakers', 'Nike', 'Comfortable everyday sneakers designed for running and casual wear.', 8999.00, 'Fashion', '2026-01-20', true, 50
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Air Max Sneakers'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Classic Denim Jacket', 'Levis', 'Timeless denim jacket suitable for casual everyday outfits.', 4999.00, 'Fashion', '2026-02-15', true, 35
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Classic Denim Jacket'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Premium Cotton Shirt', 'H&M', 'Comfortable premium cotton shirt for everyday and formal occasions.', 2499.00, 'Fashion', '2026-03-10', true, 45
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Premium Cotton Shirt'
);


INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Ergonomic Office Chair', 'IKEA', 'Ergonomic chair designed for comfortable long working sessions.', 12999.00, 'Home & Living', '2026-01-25', true, 20
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Ergonomic Office Chair'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Modern Table Lamp', 'Philips', 'Minimal modern table lamp perfect for bedrooms and workspaces.', 1999.00, 'Home & Living', '2026-02-20', true, 60
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Modern Table Lamp'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Non-Stick Cookware Set', 'Prestige', 'Durable non-stick cookware set for everyday home cooking.', 5999.00, 'Home & Living', '2026-03-15', true, 25
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Non-Stick Cookware Set'
);


INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Cricket Bat', 'SG', 'Professional quality cricket bat suitable for competitive players.', 6999.00, 'Sports', '2026-01-30', true, 18
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Cricket Bat'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Badminton Racket', 'Yonex', 'Lightweight badminton racket offering excellent control and power.', 3999.00, 'Sports', '2026-02-25', true, 30
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Badminton Racket'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Running Shoes', 'Adidas', 'Lightweight running shoes designed for daily training.', 7499.00, 'Sports', '2026-03-20', true, 40
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Running Shoes'
);


INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Atomic Habits', 'James Clear', 'A practical guide to building better habits and improving every day.', 599.00, 'Books', '2026-01-10', true, 50
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Atomic Habits'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'The Psychology of Money', 'Morgan Housel', 'A thoughtful book about money, behavior and financial decisions.', 499.00, 'Books', '2026-02-05', true, 45
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'The Psychology of Money'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Clean Code', 'Robert C. Martin', 'A classic guide to writing clean, readable and maintainable software.', 899.00, 'Books', '2026-03-01', true, 30
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Clean Code'
);


INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Vitamin C Face Serum', 'Minimalist', 'Lightweight face serum designed for a brighter and healthier-looking complexion.', 699.00, 'Beauty', '2026-01-18', true, 50
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Vitamin C Face Serum'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Hydrating Face Moisturizer', 'CeraVe', 'Daily moisturizer designed to hydrate and support the skin barrier.', 1299.00, 'Beauty', '2026-02-12', true, 40
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Hydrating Face Moisturizer'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Matte Lipstick', 'Maybelline', 'Long-lasting matte lipstick with a smooth and comfortable finish.', 799.00, 'Beauty', '2026-03-08', true, 35
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Matte Lipstick'
);


INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Remote Control Car', 'Hot Wheels', 'Fast remote control car designed for exciting indoor and outdoor play.', 2499.00, 'Toys', '2026-01-22', true, 25
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Remote Control Car'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Building Blocks Set', 'LEGO', 'Creative building block set for developing imagination and problem-solving skills.', 3499.00, 'Toys', '2026-02-18', true, 30
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Building Blocks Set'
);

INSERT INTO product
(name, brand, description, price, category, release_date, available, quantity)
SELECT 'Plush Teddy Bear', 'Hamleys', 'Soft and cuddly teddy bear perfect for children and gifting.', 1499.00, 'Toys', '2026-03-12', true, 40
    WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Plush Teddy Bear'
);