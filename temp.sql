-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: iphoneshop
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `trade_mark`) VALUES (1,'Apple'),(2,'Samsung');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `price`, `detail_desc`, `short_desc`, `quantity`, `sold`, `image`, `is_featured`, `category_id`, `spec_id`) VALUES (1,'Apple iPhone 14 Pro Max 128GB Deep Purple',900,'iPhone 14 Pro Max 128GB là chiếc flagship mạnh mẽ của Apple với thiết kế sang trọng, khung thép không gỉ và mặt lưng kính cường lực. Máy sở hữu màn hình Super Retina XDR 6.7 inch với công nghệ Dynamic Island và Always-On Display độc đáo.\r\n\r\nHiệu năng vượt trội nhờ chip A16 Bionic tiết kiệm pin, hỗ trợ mọi tác vụ từ lướt web, chơi game đến xử lý đồ họa nặng. Cụm camera 48MP cho phép chụp ảnh siêu chi tiết, quay video 4K Cinematic Mode và hỗ trợ chụp đêm cực tốt.\r\n\r\nDung lượng 128GB đáp ứng nhu cầu lưu trữ cơ bản, pin lớn cho thời lượng sử dụng cả ngày, cùng các công nghệ mới như Face ID, 5G, iOS 16 và nhiều tiện ích thông minh trong hệ sinh thái Apple.','iPhone 14 Pro Max 128GB mang thiết kế sang trọng, màn hình 6.7\" Super Retina XDR với Dynamic Island và Always-On Display hiện đại. Chip A16 Bionic mạnh mẽ, camera 48MP chuyên nghiệp cho ảnh sắc nét và video 4K sống động. Dung lượng 128GB đủ dùng, pin bền bỉ cả ngày, hỗ trợ 5G, Face ID và hệ sinh thái iOS mượt mà, đáp ứng hoàn hảo nhu cầu công việc lẫn giải trí.',20,1,'1756060404610-Iphone_14pro_1.png',1,1,1),(2,'Blackmagic Pocket Cinema Camera 6k',2535,'Blackmagic Pocket Cinema Camera 6K là máy quay chuyên nghiệp nhỏ gọn, tích hợp cảm biến Super 35mm 6K HDR (6144 x 3456) cho chất lượng điện ảnh với dải tương phản động lên đến 13 stops và ISO kép tối đa 25.600, giúp quay tốt cả trong điều kiện thiếu sáng.\r\n\r\nMáy sử dụng ngàm ống kính Canon EF, hỗ trợ đa dạng ống kính DSLR/Cinema, mang đến khả năng sáng tạo linh hoạt. Hệ thống quay định dạng Blackmagic RAW và ProRes 422/444 đảm bảo giữ chi tiết tối đa cho hậu kỳ.\r\n\r\nMàn hình cảm ứng 5 inch Full HD sáng rõ, cho phép lấy nét, kiểm soát màu sắc, và điều chỉnh tham số nhanh chóng. Hỗ trợ cổng mini XLR, HDMI, USB-C, cùng khe thẻ CFast 2.0 và SD UHS-II, ngoài ra có thể ghi trực tiếp ra SSD qua USB-C.\r\n\r\nThiết kế gọn nhẹ nhưng chắc chắn với vỏ carbon composite, tích hợp công cụ chuyên nghiệp như False Color, Focus Peaking, LUT 3D, và chạy hệ điều hành Blackmagic OS trực quan. Máy cũng hỗ trợ quay 120fps ở Full HD, phù hợp cho cả điện ảnh, quảng cáo lẫn vlog chuyên nghiệp.','Blackmagic Pocket Cinema Camera 6K trang bị cảm biến Super 35mm 6K HDR, dải sáng 13 stops, ISO kép 25.600 cho hình ảnh điện ảnh sắc nét cả trong điều kiện thiếu sáng. Hỗ trợ ngàm Canon EF, quay Blackmagic RAW/ProRes, màn hình cảm ứng 5\" trực quan, nhiều cổng kết nối (mini XLR, HDMI, USB-C) và lưu trên thẻ CFast, SD hoặc SSD. Thiết kế gọn nhẹ nhưng chuyên nghiệp, tối ưu cho nhà làm phim, quảng cáo và sáng tạo nội dung.',10,1,'1756060074755-Blackmagic_camera.png',1,1,2),(3,'Apple Watch Series 9 GPS 41mm Starlight Aluminium',399,'Apple Watch Series 9 GPS 41mm (Starlight Aluminium Case) là chiếc smartwatch thế hệ mới của Apple, sở hữu thiết kế sang trọng, nhỏ gọn với vỏ nhôm màu Starlight tinh tế và dây đeo thoải mái.\r\n\r\nMáy trang bị màn hình Retina Always-On sáng rực rỡ, dễ nhìn ngay cả ngoài trời, hỗ trợ nhiều mặt đồng hồ tùy chỉnh theo phong cách cá nhân. Hiệu năng vượt trội nhờ chip S9 SiP mới, cho trải nghiệm mượt mà, đồng thời hỗ trợ cử chỉ điều khiển bằng tay Double Tap tiện lợi.\r\n\r\nTích hợp nhiều tính năng theo dõi sức khỏe: đo nhịp tim, SpO₂, ECG, giấc ngủ, chu kỳ kinh nguyệt, cùng các chế độ luyện tập thể thao đa dạng. Hệ thống GPS chính xác, chống nước WR50 giúp thoải mái bơi lội, luyện tập ngoài trời.\r\n\r\nHỗ trợ Apple Pay, Siri on-device, thông báo thông minh, gọi điện & nhắn tin khi kết nối iPhone, thời lượng pin lên đến 18 giờ sử dụng. Là trợ thủ hoàn hảo cho công việc, rèn luyện sức khỏe và phong cách sống hiện đại.','Apple Watch Series 9 GPS 41mm Starlight Aluminium sở hữu thiết kế sang trọng, màn hình Retina Always-On sắc nét, chip S9 SiP mạnh mẽ với cử chỉ Double Tap. Trang bị các tính năng sức khỏe như đo nhịp tim, SpO₂, ECG, theo dõi giấc ngủ, luyện tập đa dạng. Hỗ trợ GPS chính xác, chống nước WR50, pin 18 giờ, là lựa chọn lý tưởng cho phong cách sống năng động và hiện đại.',26,1,'1756060377822-AW_series9.png',1,1,3),(4,'AirPods Max SilverStarlight Aluminium',549,'AirPods Max Silver là tai nghe chụp tai cao cấp của Apple, mang đến trải nghiệm âm thanh sống động và đẳng cấp. Với thiết kế vỏ nhôm anodized (Aluminium) bền nhẹ, màu Silver/Starlight sang trọng, phần chụp tai bằng đệm mút nhớ êm ái cùng khung thép không gỉ phủ vải lưới thoáng khí, giúp đeo thoải mái suốt nhiều giờ.\r\n\r\nTai nghe tích hợp driver dynamic Apple thiết kế riêng, cho âm thanh Hi-Fi chi tiết, dải bass mạnh mẽ, mid trong trẻo và treble sắc nét. Công nghệ Adaptive EQ tự động điều chỉnh âm thanh theo từng người dùng, kết hợp cùng Active Noise Cancellation (ANC) loại bỏ tiếng ồn và chế độ Transparency cho phép nghe môi trường xung quanh tự nhiên.\r\n\r\nAirPods Max sử dụng chip Apple H1 trên mỗi bên tai, hỗ trợ Spatial Audio với head tracking tạo hiệu ứng âm thanh vòm 3D chân thực. Tính năng Digital Crown giúp điều chỉnh âm lượng, chuyển bài hát, nhận cuộc gọi dễ dàng.\r\n\r\nPin cho thời gian nghe nhạc lên đến 20 giờ với ANC hoặc Transparency, sạc nhanh chỉ 5 phút có ngay 1,5 giờ sử dụng. Đi kèm Smart Case tiết kiệm pin khi không dùng.','AirPods Max Silver mang thiết kế nhôm cao cấp, đệm tai êm ái và khung thép phủ vải thoáng khí, cho cảm giác sang trọng và thoải mái. Trang bị driver dynamic cho âm thanh Hi-Fi sống động, cùng Adaptive EQ, ANC, Transparency và Spatial Audio chân thực. Tích hợp chip Apple H1, điều khiển bằng Digital Crown, pin nghe đến 20 giờ, sạc nhanh 5 phút cho 1,5 giờ dùng, kèm Smart Case tiết kiệm pin.',6,1,'1756060589117-AirPost_sliver.png',1,1,4),(5,'Samsung Galaxy Watch6 Classic 47mm Black',369,'Samsung Galaxy Watch6 Classic 47mm Black là chiếc smartwatch cao cấp với thiết kế viền xoay rotating bezel truyền thống sang trọng, khung thép không gỉ chắc chắn và mặt kính Sapphire Crystal chống trầy xước.\r\n\r\nMàn hình Super AMOLED 1.5 inch sắc nét, độ sáng cao, hỗ trợ Always-On Display cùng khả năng tùy chỉnh mặt đồng hồ đa dạng. Hiệu năng mạnh mẽ nhờ chip Exynos W930, RAM 2GB và bộ nhớ 16GB, chạy trên hệ điều hành Wear OS by Samsung tối ưu với Google và Galaxy Ecosystem.\r\n\r\nTích hợp nhiều cảm biến sức khỏe: đo nhịp tim, SpO₂, huyết áp, ECG, theo dõi giấc ngủ nâng cao, phân tích thành phần cơ thể (BIA). Hỗ trợ hơn 90 chế độ luyện tập thể thao, GPS chính xác và chống nước chuẩn 5ATM + IP68, phù hợp cả bơi lội lẫn vận động ngoài trời.\r\n\r\nPin dung lượng lớn, dùng thoải mái cả ngày, sạc nhanh tiện lợi. Kết nối dễ dàng với smartphone Android, hỗ trợ nhận thông báo, gọi điện, nghe nhạc, thanh toán không chạm qua Samsung Pay. Là lựa chọn lý tưởng cho người yêu công nghệ, thể thao và phong cách hiện đại.','Samsung Galaxy Watch6 Classic 47mm Black sở hữu thiết kế viền xoay sang trọng, khung thép bền chắc và kính Sapphire chống trầy. Màn hình Super AMOLED 1.5\" sắc nét với Always-On Display, chip Exynos W930 mạnh mẽ, RAM 2GB, bộ nhớ 16GB. Hỗ trợ đo nhịp tim, SpO₂, huyết áp, ECG, theo dõi giấc ngủ, hơn 90 chế độ luyện tập, GPS chính xác, chống nước 5ATM + IP68. Pin bền, sạc nhanh, kết nối mượt mà với hệ sinh thái Galaxy.',12,1,'1756060746120-SamSung.png',1,2,5),(6,'Galaxy Z Fold5 Unlocked | 256GB | Phantom Black',1799,'Samsung Galaxy Z Fold5 256GB Phantom Black là chiếc flagship màn hình gập cao cấp, mang thiết kế mỏng nhẹ hơn thế hệ trước nhưng vẫn bền bỉ với bản lề Flex Hinge chắc chắn và kính Gorilla Glass Victus 2.\r\n\r\nMáy sở hữu màn hình gập chính 7.6 inch Dynamic AMOLED 2X, tần số quét 120Hz siêu mượt, độ sáng đến 1750 nits, cùng màn hình phụ 6.2 inch AMOLED 120Hz, tối ưu cho đa nhiệm và giải trí.\r\n\r\nHiệu năng mạnh mẽ với chip Snapdragon 8 Gen 2 for Galaxy, RAM 12GB và bộ nhớ 256GB, xử lý mượt mọi tác vụ từ công việc đến chơi game. Hỗ trợ bút S Pen Fold Edition giúp ghi chú, vẽ và làm việc linh hoạt.\r\n\r\nCụm 3 camera sau: 50MP (OIS) + 12MP góc siêu rộng + 10MP tele 3x, hỗ trợ quay video 8K, cùng camera trong 4MP ẩn dưới màn hình và camera ngoài 10MP, đáp ứng tốt nhu cầu chụp ảnh, selfie và video call.\r\n\r\nPin 4400mAh dùng cả ngày, hỗ trợ sạc nhanh 25W, sạc không dây, sạc ngược cho thiết bị khác. Máy chạy One UI trên Android, tích hợp nhiều tính năng tối ưu cho màn hình gập, bảo mật vân tay cạnh bên và kết nối 5G tốc độ cao.','Samsung Galaxy Z Fold5 256GB Phantom Black sở hữu thiết kế gập mỏng nhẹ với bản lề Flex Hinge chắc chắn, màn hình chính 7.6\" Dynamic AMOLED 2X 120Hz siêu sáng và màn hình phụ 6.2\" tiện dụng. Trang bị chip Snapdragon 8 Gen 2 for Galaxy, RAM 12GB, bộ nhớ 256GB, hỗ trợ S Pen, camera sau 50MP + 12MP + 10MP, pin 4400mAh sạc nhanh 25W. Kết nối 5G, bảo mật vân tay, tối ưu đa nhiệm cho công việc và giải trí.',16,1,'1756060923108-GalaxyZ5.png',1,2,6),(7,'Galaxy Buds FE Graphite',99,'Samsung Galaxy Buds FE Graphite là tai nghe true wireless nhỏ gọn, thiết kế hiện đại và vừa vặn, mang lại cảm giác đeo thoải mái suốt ngày dài.\r\n\r\nTrang bị Active Noise Cancelling (ANC) giúp loại bỏ tiếng ồn hiệu quả, đồng thời có Ambient Sound để nghe âm thanh môi trường khi cần. Âm thanh được tối ưu với driver chất lượng cao, mang đến bass mạnh mẽ, treble rõ nét và âm trường cân bằng.\r\n\r\nMicro kép cùng công nghệ chống ồn khi gọi, cho chất lượng đàm thoại rõ ràng ngay cả trong môi trường ồn ào.\r\n\r\nTai nghe hỗ trợ Bluetooth 5.2, kết nối mượt mà với thiết bị Galaxy và đồng bộ nhanh qua Samsung SmartThings. Thời lượng pin lên đến 6 giờ nghe nhạc liên tục (ANC bật) và tổng cộng đến 30 giờ khi dùng kèm hộp sạc.\r\n\r\nHỗ trợ thao tác cảm ứng thông minh, dễ dàng điều khiển nhạc, cuộc gọi. Thiết kế màu Graphite sang trọng, gọn nhẹ, dễ mang theo, phù hợp cho cả làm việc lẫn giải trí.','Samsung Galaxy Buds FE Graphite có thiết kế nhỏ gọn, ôm tai thoải mái, mang lại trải nghiệm âm thanh chất lượng với bass mạnh mẽ, treble rõ nét. Hỗ trợ Active Noise Cancelling loại bỏ tiếng ồn, Ambient Sound nghe môi trường tự nhiên. Micro kép chống ồn cho đàm thoại rõ ràng, pin đến 6 giờ (30 giờ kèm hộp sạc), kết nối Bluetooth 5.2 ổn định, thao tác cảm ứng tiện lợi.',30,1,'1756061077059-GalaxyFE.png',1,2,7),(8,'Apple iPad 9 10.2\" 64GB Wi-Fi Silver (MK2L3) 2021',398,'Apple iPad 9 (2021) 10.2 inch Wi-Fi 64GB Silver là chiếc máy tính bảng phổ biến của Apple, thiết kế mỏng nhẹ, viền nhôm sang trọng và màn hình Retina 10.2 inch sắc nét, hỗ trợ True Tone điều chỉnh màu sắc phù hợp môi trường.\r\n\r\nHiệu năng mạnh mẽ với chip A13 Bionic cho tốc độ xử lý nhanh, đáp ứng mượt mà từ học tập, làm việc văn phòng đến chơi game, giải trí. Dung lượng 64GB phù hợp nhu cầu lưu trữ cơ bản.\r\n\r\nCamera sau 8MP và camera trước 12MP Ultra Wide hỗ trợ Center Stage, giúp khung hình tự động điều chỉnh khi gọi video call. Hỗ trợ Apple Pencil (gen 1) và bàn phím Smart Keyboard, biến iPad thành công cụ học tập, sáng tạo và làm việc hiệu quả.\r\n\r\nChạy hệ điều hành iPadOS, tích hợp nhiều tính năng thông minh, đồng bộ mượt mà với hệ sinh thái Apple. Pin cho thời gian sử dụng lên đến 10 giờ, kết nối Wi-Fi ổn định, phù hợp cho nhu cầu học online, giải trí và làm việc di động.','Apple iPad 9 10.2\" 64GB Wi-Fi Silver (2021) sở hữu thiết kế mỏng nhẹ, màn hình Retina sắc nét hỗ trợ True Tone. Trang bị chip A13 Bionic mạnh mẽ, xử lý mượt mà học tập, làm việc và giải trí. Camera sau 8MP, camera trước 12MP Ultra Wide với Center Stage, hỗ trợ Apple Pencil (gen 1) và Smart Keyboard. Pin dùng đến 10 giờ, kết nối Wi-Fi ổn định, chạy iPadOS với nhiều tính năng thông minh.',5,1,'1756061250061-IPad9.png',1,1,8);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`) VALUES (1,'ADMIN','Quản trị hệ thống, có toàn quyền'),(2,'USER','Người dùng thông thường'),(3,'ADMIN','Quản trị hệ thống, có toàn quyền'),(4,'USER','Người dùng thông thường');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `specifications`
--

LOCK TABLES `specifications` WRITE;
/*!40000 ALTER TABLE `specifications` DISABLE KEYS */;
INSERT INTO `specifications` (`id`, `color`, `pin`, `screen_type`, `screen_size`, `protection`, `rom`) VALUES (1,'Deep Purple',3000,'AMOLED',6.1,'IP68',1288),(2,'Blackmagic',3000,'LED-backlit IPS LCD',6.7,'IP68',1000),(3,'Starlight',3000,'IPS Quantum',5.8,'IP68',64),(4,'Silver',3000,'ClearBlack',5.8,'IP67',64),(5,'Black',3000,'AMOLED',5.8,'IP68',64),(6,'Phantom Black',5000,'AMOLED',6.1,'IP68',256),(7,'Black',4000,'AMOLED',5.8,'IP68',64),(8,'Silver',5000,'Super LCD',6.7,'IP67',64);
/*!40000 ALTER TABLE `specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `address`, `phone`, `avatar`, `role_id`, `created_date`) VALUES (1,'Mikz','minhluky0@gmail.com','$2a$10$pNes3PzauDSpD9BcPETTOOg8Vm5NDaRJ4/b6YFygqebfRKqrgKA6.','Đặng Nhật Minh','Nam Định','0385096604','1756059257195-mikz.png',1,'2025-08-25 01:14:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-25  1:52:54
