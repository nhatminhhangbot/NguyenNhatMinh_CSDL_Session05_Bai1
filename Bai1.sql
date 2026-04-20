CREATE DATABASE db_session05_bai01;
USE db_session05_bai01;

CREATE TABLE Restaurants (
    id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_name VARCHAR(100) NOT NULL,
    district VARCHAR(50) NOT NULL,
    address VARCHAR(200) NOT NULL,
    rating DECIMAL(2, 1) NOT NULL
);

INSERT INTO Restaurants (id, restaurant_name, district, address, rating) VALUES
(1, 'Phở Hùng', 'Quận 1', '123 Lê Lợi', 4.5),      
(2, 'Cơm Tấm Tệ', 'Quận 1', '45 Nguyễn Huệ', 2.5),
(3, 'Bún Bò Huế', 'Quận 3', '78 Võ Văn Tần', 4.2),
(4, 'Mì Quảng', 'Quận 3', '12 Tú Xương', 3.8),     
(5, 'Lẩu Cá', 'Quận 5', '99 Trần Hưng Đạo', 4.8);  

SELECT restaurant_name, address, rating
FROM Restaurants
WHERE (district = 'Quận 1' OR district = 'Quận 3') 
AND rating > 4.0;