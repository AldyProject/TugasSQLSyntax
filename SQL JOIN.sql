CREATE DATABASE world;

use world;

SHOW DATABASES;

CREATE TABLE users (
    id int PRIMARY KEY,
    email varchar(255),
    name varchar(255),
    password varchar(255),
    address varchar(255),
    role varchar(255),
    status varchar(255),
    created_at timestamp,
    updated_at timestamp
);

CREATE TABLE categories (
    id int PRIMARY KEY,
    user_id varchar(255),
    code varchar(255),
    name varchar(255), 
    slug varchar(255),
    description text,
    status varchar(255),
    photo varchar(255)
);


CREATE TABLE products (
    id int PRIMARY KEY,
    category_id int,
    user_id int,
    code varchar(255),
    name varchar(255), 
    slug varchar(255),
    description longtext,
    photo varchar(255),
    qty double,
    unit varchar(255),
    price double,
    status varchar(255)
);

show tables from world;

INSERT INTO users VALUES (1, "agus01@gmail.com", "agus", "agus123123", "Jl.Gang Buntung", "IT Support", "Lajang", NOW(), NOW());
INSERT INTO users VALUES (2, "arga0111@gmail.com", "arga", "arga223123", "Jl.Ganntung", "Manager", "Menikah", NOW(), NOW()),
(3, "anissa01@gmail.com", "annisa", "annisa232123", "Jl.Garuda", "Enggineer", "Lajang", NOW(), NOW());

INSERT INTO categories VALUES (1, '1', 'CAT001', 'Elektronik', 'elektronik', 'Kategori produk elektronik.', 'Active', 'elektronik.jpg'),
(2, '2', 'CAT002', 'Fashion', 'fashion', 'Kategori produk fashion.', 'Active', 'fashion.jpg'),
(3, '1', 'CAT003', 'Furniture', 'furniture', 'Kategori produk furniture.', 'Inactive', 'furniture.jpg');

INSERT INTO products VALUES (1, 1, 1, 'P001', 'Smartphone X', 'smartphone-x', 'Smartphone dengan layar besar dan baterai tahan lama.', 'smartphone_x.jpg', 50, 'pcs', 2000000, 'Active'),
(2, 2, 2, 'P002', 'T-shirt Fashion', 't-shirt-fashion', 'T-shirt kasual untuk pria dan wanita.', 'tshirt_fashion.jpg', 100, 'pcs', 150000, 'Active'),
(3, 3, 1, 'P003', 'Office Chair', 'office-chair', 'Kursi kantor ergonomis untuk kenyamanan kerja.', 'office_chair.jpg', 30, 'pcs', 750000, 'Inactive');

SELECT * FROM users;
SELECT * FROM products;
SELECT * FROM categories;


SELECT 
    p.id AS product_id,
    p.name AS product_name,
    p.code AS product_code,
    p.slug AS product_slug,
    p.description AS product_description,
    p.price AS product_price,
    p.status AS product_status,
    p.qty AS product_qty,
    p.unit AS product_unit,
    c.id AS category_id,
    c.name AS category_name,
    c.code AS category_code,
    c.slug AS category_slug,
    c.status AS category_status,
    c.photo AS category_photo,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    u.role AS user_role,
    u.status AS user_status
FROM 
    products p
LEFT JOIN 
    categories c ON p.category_id = c.id
LEFT JOIN 
    users u ON p.user_id = u.id;