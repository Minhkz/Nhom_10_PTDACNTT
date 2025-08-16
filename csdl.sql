DROP DATABASE IF EXISTS iphoneshop;
CREATE DATABASE iphoneshop;
USE iphoneshop;

-- 1. Roles
CREATE TABLE roles(
	id 				INT AUTO_INCREMENT PRIMARY KEY,
    `name`			ENUM("USER","ADMIN") DEFAULT "USER",
    `description` 	TEXT
);

-- 2. Users
CREATE TABLE users(
	id 				INT AUTO_INCREMENT PRIMARY KEY,
    username 		VARCHAR(100) NOT NULL UNIQUE,
	email			VARCHAR(100) NOT NULL UNIQUE,
    `password`		VARCHAR(50) NOT NULL,
    full_name		NVARCHAR(100)  NOT NULL,
    address			NVARCHAR(100) NOT NULL,
    phone			CHAR(15) NOT NULL UNIQUE,
    avatar			VARCHAR(1000) ,
    role_id			INT NOT NULL,
    created_date	DATETIME DEFAULT NOW(),
    FOREIGN KEY(role_id) REFERENCES roles(id) ON DELETE RESTRICT
);

-- 3. Categories
CREATE TABLE categories (
  id 				INT AUTO_INCREMENT PRIMARY KEY,
  parent_id 		INT DEFAULT NULL,
  `name` 			VARCHAR(150) NOT NULL,
  slug 				VARCHAR(200) NOT NULL UNIQUE,
  `description` 	TEXT,
  sort_order 		INT DEFAULT 0,
  FOREIGN KEY (parent_id) REFERENCES categories(id) ON DELETE SET NULL
);

-- 4. Products
CREATE TABLE products(
	id				INT AUTO_INCREMENT PRIMARY KEY,
    `name`			VARCHAR(100)  NOT NULL UNIQUE,
    price			DOUBLE NOT NULL,
    detail_desc		TEXT NOT NULL,
    short_desc		NVARCHAR(600)  NOT NULL,
    quantity		INT NOT NULL,
    sold			INT NOT NULL,
    factory			VARCHAR(100)  NOT NULL UNIQUE,
    category_id 	INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);

-- 5. Product Images
CREATE TABLE product_images (
  id 				INT AUTO_INCREMENT PRIMARY KEY,
  product_id 		INT NOT NULL,
  url 				VARCHAR(1000) NOT NULL,
  alt_text 			VARCHAR(255),
  sort_order 		INT DEFAULT 0,
  is_primary 		BIT(1) DEFAULT 0,
  FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- 6. Orders
CREATE TABLE orders(
	id 				INT AUTO_INCREMENT PRIMARY KEY,
    user_id 		INT DEFAULT NULL,
    total_price		DOUBLE,
    FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE SET NULL
);

-- 7. Order_Product
CREATE TABLE order_product(
	order_id			INT,
    product_id		INT,
    quantity		INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY(order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- 8. Carts
CREATE TABLE carts (
  id 				INT AUTO_INCREMENT PRIMARY KEY,
  user_id 			INT NOT NULL UNIQUE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 9. Cart_Product
CREATE TABLE cart_product(
	cart_id			INT,
    product_id		INT,
    quantity		INT NOT NULL,
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
  is_approved 		BIT(1) DEFAULT 0,
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

-- 1 roles
INSERT INTO roles (`name`, `description`) VALUES
('ADMIN', 'Quản trị hệ thống, có toàn quyền'),
('USER', 'Người dùng thông thường');
-- ========================
-- 2. Users
-- ========================
INSERT INTO users (username, email, password, full_name, address, phone, avatar, role_id)
VALUES 
('admin01', 'admin01@example.com', '123456', 'Đặng Nhật Minh', 'Hà Nội', '0900000001', 'avatar1.jpg', 1),
('user01', 'user01@example.com', '123456', 'Đặng Việt Anh', 'TP. HCM', '0900000002', 'avatar2.jpg', 2);

-- ========================
-- 3. Categories
-- ========================
INSERT INTO categories (parent_id, name, slug, description, sort_order)
VALUES
(NULL, 'Điện thoại', 'dien-thoai', 'Danh mục điện thoại', 1),
(1, 'IPhone', 'iphone', 'Danh mục IPhone', 2);

-- ========================
-- 4. Products
-- ========================
INSERT INTO products (name, price, detail_desc, short_desc, quantity, sold, factory, category_id)
VALUES
('iPhone 15 Pro Max', 29990000, 'Mô tả chi tiết iPhone 15 Pro Max', 'iPhone 15 Pro Max cao cấp', 10, 2, 'Apple VN', 2),
('iPhone 14 Pro', 24990000, 'Mô tả chi tiết iPhone 14 Pro', 'iPhone 14 Pro sang trọng', 15, 3, 'Apple HN', 2);

-- ========================
-- 5. Product Images
-- ========================
INSERT INTO product_images (product_id, url, alt_text, sort_order, is_primary)
VALUES
(1, 'iphone15promax.jpg', 'iPhone 15 Pro Max', 1, 1),
(2, 'iphone14pro.jpg', 'iPhone 14 Pro', 1, 1);

-- ========================
-- 6. Orders
-- ========================
INSERT INTO orders (user_id, total_price)
VALUES
(2, 29990000),
(2, 24990000);

-- ========================
-- 7. Order_Product
-- ========================
INSERT INTO order_product (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(2, 2, 1);

-- ========================
-- 8. Carts
-- ========================
INSERT INTO carts (user_id)
VALUES
(2),
(1);

-- ========================
-- 9. Cart_Product
-- ========================
INSERT INTO cart_product (cart_id, product_id, quantity)
VALUES
(1, 2, 1),
(2, 1, 1);

-- ========================
-- 10. Wishlists
-- ========================
INSERT INTO wishlists (user_id)
VALUES
(2),
(1);

-- ========================
-- 11. Wishlist Items
-- ========================
INSERT INTO wishlist_items (wishlist_id, product_id)
VALUES
(1, 1),
(2, 2);

-- ========================
-- 12. Reviews
-- ========================
INSERT INTO reviews (product_id, user_id, rating, title, body, is_approved)
VALUES
(1, 2, 5, 'Rất hài lòng', 'Điện thoại đẹp và mạnh mẽ', 1),
(2, 2, 4, 'Tốt', 'Hiệu năng ổn định', 1);

-- ========================
-- 13. Payment Methods
-- ========================
INSERT INTO payment_methods (`code`, `name`, `description`)
VALUES
('COD', 'Thanh toán khi nhận hàng', 'Khách hàng thanh toán khi nhận hàng'),
('BANK', 'Chuyển khoản ngân hàng', 'Khách hàng chuyển khoản trước');

-- ========================
-- 14. Payments
-- ========================
INSERT INTO payments (order_id, payment_method_id, amount, status, transaction_id, paid_at)
VALUES
(1, 1, 29990000, 'completed', 'TXN001', NOW()),
(2, 2, 24990000, 'pending', 'TXN002', NULL);
