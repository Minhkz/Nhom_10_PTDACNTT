CREATE DATABASE IF NOT EXISTS iphoneshop;

USE iphoneshop;

-- HERE INSERT DATA 
-- 1 roles
INSERT INTO roles (`name`, `description`) VALUES
('ADMIN', 'Quản trị hệ thống, có toàn quyền'),
('USER', 'Người dùng thông thường');

-- 2. Users
INSERT INTO users (username, email, password, full_name, address, phone, avatar, role_id)
VALUES 
('user1', 'user1@gmail.com', '123456', N'Nguyễn Văn A', N'Hà Nội', '0900000001', 'avatar1.png', 1),
('user2', 'user2@gmail.com', '123456', N'Trần Thị B', N'Hồ Chí Minh', '0900000002', 'avatar2.png', 1);

-- 3. Categories
INSERT INTO categories (trade_mark)
VALUES 
('Apple'),
('Samsung');

-- 4. Specifications
INSERT INTO specifications (color, pin, screen_type, screen_size, protection, ram)
VALUES 
(N'Đen', 3200, 'OLED', 6.1, 'IP67', 4),
(N'Trắng', 4000, 'Super AMOLED', 6.5, 'IP68', 6);

-- 5. Products
INSERT INTO products (`name`, price, detail_desc, short_desc, quantity, sold, image, category_id, spec_id)
VALUES
('iPhone 14', 22000000, 'Điện thoại iPhone 14 chi tiết...', N'iPhone 14 mới nhất', 10, 2, 'iphone14.png', 1, 1),
('Samsung S23', 21000000, 'Điện thoại Samsung S23 chi tiết...', N'Samsung S23 mới nhất', 8, 1, 'samsungS23.png', 2, 2);

