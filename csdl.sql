DROP DATABASE IF EXISTS iphoneshop10;
CREATE DATABASE iphoneshop10;
USE iphoneshop10;

-- 1. Roles
CREATE TABLE roles(
	id 				INT AUTO_INCREMENT PRIMARY KEY,
    `name`			ENUM("USER","ADMIN","STAFF") DEFAULT "USER",
    `description` 	TEXT
);

-- 2. Users
CREATE TABLE users(
	id 				INT AUTO_INCREMENT PRIMARY KEY,
    username 		VARCHAR(100) UNIQUE,
	email			VARCHAR(100) NOT NULL UNIQUE,
    `password`		VARCHAR(50),
    full_name		NVARCHAR(100)  NOT NULL,
    address			NVARCHAR(100),
    phone			CHAR(15) UNIQUE,
    avatar			VARCHAR(1000) ,
    provider		VARCHAR(100),
    role_id			INT NOT NULL,
    created_date	DATETIME DEFAULT NOW(),
    FOREIGN KEY(role_id) REFERENCES roles(id) ON DELETE RESTRICT
);

-- 3. Categories
CREATE TABLE categories (
    id 				INT AUTO_INCREMENT PRIMARY KEY,
    trade_mark 		VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE specifications (
    id 				INT AUTO_INCREMENT PRIMARY KEY,
    color			NVARCHAR(20) NOT NULL,
    pin 			INT DEFAULT 3000,
    screen_type 	VARCHAR(100) NOT NULL,
    screen_size 	FLOAT DEFAULT 6.1,
    protection 		CHAR(4) DEFAULT "IP67",
    rom 			SMALLINT NOT NULL
);


-- 4. Products
CREATE TABLE products(
    id 				INT AUTO_INCREMENT PRIMARY KEY,
    `name` 			VARCHAR(100) NOT NULL,
    price 			DOUBLE NOT NULL,
    detail_desc 	TEXT NOT NULL,
    short_desc 		NVARCHAR(600) NOT NULL,
    quantity 		INT NOT NULL,
    sold 			INT DEFAULT 1,
    image 			VARCHAR(1000),
	is_featured 	BIT(1) DEFAULT 0,
    is_discount		BIT(1) DEFAULT 0,
    
    category_id 	INT NOT NULL,
    spec_id 		INT NOT NULL,
	
    image_detail   VARCHAR(1000), 
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE,
    FOREIGN KEY (spec_id) REFERENCES specifications(id) ON DELETE CASCADE
);

CREATE TABLE address(
	id				INT AUTO_INCREMENT PRIMARY KEY,
    user_id			INT NOT NULL,
    location		CHAR(20) NOT NULL,
    short_desc		NVARCHAR(100),
    detail_desc		NVARCHAR(500) NOT NULL,
    reciver_name	NVARCHAR(100) NOT NULL,
    reciver_phone	CHAR(15) NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 6. Orders
CREATE TABLE orders(
	id 				INT AUTO_INCREMENT PRIMARY KEY,
    user_id 		INT DEFAULT NULL,
    total_price		DOUBLE,
    address_id		INT,
    total_product   INT,
    `status`		NVARCHAR(50),
    payment_ref		NVARCHAR(50),
    payment_status	NVARCHAR(50),
    payment_method	NVARCHAR(50),
    FOREIGN KEY(address_id) REFERENCES address(id) ON DELETE SET NULL,
    FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE SET NULL
);

-- 7. Order_Product
CREATE TABLE order_product(
	order_id		INT,
    product_id		INT,
    quantity		INT NOT NULL,
    price			DOUBLE NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY(order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- 8. Carts
CREATE TABLE carts (
  id 				INT AUTO_INCREMENT PRIMARY KEY,
  user_id 			INT NOT NULL UNIQUE,
  sum				INT,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 9. Cart_Product
CREATE TABLE cart_product(
	cart_id			INT,
    product_id		INT,
    quantity		INT NOT NULL,
    price			FLOAT,
    PRIMARY KEY(cart_id, product_id),
    FOREIGN KEY(cart_id) REFERENCES carts(id) ON DELETE CASCADE,
    FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- 10. Wishlists
CREATE TABLE wishlists (
  id 				INT AUTO_INCREMENT PRIMARY KEY,
  user_id 			INT NOT NULL UNIQUE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 11. Wishlist Items
CREATE TABLE wishlist_items (
    wishlist_id 	INT NOT NULL,
    product_id 		INT NOT NULL,
    added_at 		DATETIME DEFAULT NOW(),
    PRIMARY KEY (wishlist_id, product_id),
    FOREIGN KEY (wishlist_id) REFERENCES wishlists(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE RESTRICT
);

-- 12. Reviews
CREATE TABLE reviews (
  id 				INT AUTO_INCREMENT PRIMARY KEY,
  product_id 		INT NOT NULL,
  user_id 			INT DEFAULT NULL,
  rating 			TINYINT NOT NULL CHECK (rating BETWEEN 1 AND 5),
  title 			VARCHAR(255) NOT NULL,
  body 				TEXT NOT NULL,
  is_approved 		TINYINT(1) DEFAULT 0,
  created_at 		DATETIME DEFAULT NOW(),
  FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);

-- 13. Payment Methods (đặt trước payments)
CREATE TABLE payment_methods (
  id 				INT AUTO_INCREMENT PRIMARY KEY,
  `code`			VARCHAR(100) NOT NULL UNIQUE,
  `name` 			VARCHAR(200) NOT NULL,
  `description` 	VARCHAR(500),
  is_active 		BIT(1) DEFAULT 1
);

-- 14. Payments
CREATE TABLE payments (
  id 				INT AUTO_INCREMENT PRIMARY KEY,
  order_id 			INT DEFAULT NULL,
  payment_method_id INT DEFAULT NULL,
  amount 			DECIMAL(13,2) NOT NULL,
  `status` 			ENUM('pending','completed','failed','refunded') DEFAULT 'pending',
  transaction_id 	VARCHAR(255),
  paid_at 			DATETIME DEFAULT NULL,
  created_at 		DATETIME DEFAULT NOW(),
  FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE SET NULL,
  FOREIGN KEY (payment_method_id) REFERENCES payment_methods(id) ON DELETE SET NULL
);

-- 15. Address




