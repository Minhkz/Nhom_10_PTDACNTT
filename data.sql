CREATE DATABASE IF NOT EXISTS iphoneshop;

USE iphoneshop;

-- HERE INSERT DATA 
-- 1 roles
INSERT INTO roles (`name`, `description`) VALUES
('ADMIN', 'Quản trị hệ thống, có toàn quyền'),
('USER', 'Người dùng thông thường');

INSERT INTO categories(trade_mark) VALUES
('Apple'),
('Samsung');