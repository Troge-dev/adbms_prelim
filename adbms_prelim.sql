--Rogelio Q. Mandamian III--
--BSDS 3A--


CREATE TABLE fact_sales (
	invoice_id CHAR(11),
	branch_id INT,
	customer_id INT,
	product_id INT,
	quantity INT,
	sales_date DATE,
	sales_time TIME,
	payment INT,
	rating FLOAT
);

CREATE TABLE dim_product (
	product_id INT PRIMARY KEY,
	product_name VARCHAR(255),
	product_line TEXT,
	price DECIMAL(10, 2) 
);

CREATE TABLE dim_customer (
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(255),
	customer_type VARCHAR(255),
	gender VARCHAR(255)
);

CREATE TABLE dim_branch (
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(255),
	branch_city VARCHAR(255)
);

CREATE TABLE dim_payment (
	payment_id INT PRIMARY KEY,
	payment_type VARCHAR(255)
);




INSERT INTO dim_product (product_id, product_name, product_line, price)
VALUES
	(1, 'Leather Wallet', 'Fashion accessories', 45.99),
	(2, 'Bluetooth Earbuds', 'Electronic accessories', 89.50),
	(3, 'Vitamin C Serum', 'Health and beauty', 25.75),
	(4, 'Organic Green Tea', 'Food and beverages', 15.20),
	(5, 'Yoga Mat', 'Sports and travel', 39.99),
	(6, 'Wall Clock', 'Home and lifestyle', 29.90),
	(7, 'Silk Scarf', 'Fashion accessories', 34.50),
	(8, 'Wireless Charger', 'Electronic accessories', 22.00),
	(9, 'Herbal Shampoo', 'Health and beauty', 18.45),
	(10, 'Gourmet Coffee Beans', 'Food and beverages', 12.95),
	(11, 'Hiking Backpack', 'Sports and travel', 65.00),
	(12, 'Scented Candles Set', 'Home and lifestyle', 27.50),
	(13, 'Sunglasses', 'Fashion accessories', 49.95),
	(14, 'Smartwatch', 'Electronic accessories', 129.99),
	(15, 'Face Moisturizer', 'Health and beauty', 21.10),
	(16, 'Dark Chocolate Box', 'Food and beverages', 9.75),
	(17, 'Resistance Bands', 'Sports and travel', 19.99),
	(18, 'Ceramic Vase', 'Home and lifestyle', 33.40),
	(19, 'Wool Beanie', 'Fashion accessories', 17.60),
	(20, 'Power Bank 10000mAh', 'Electronic accessories', 38.80),
	(21, 'Charm Bracelet', 'Fashion accessories', 22.75),
	(22, 'USB-C Cable', 'Electronic accessories', 9.99),
	(23, 'Aloe Vera Gel', 'Health and beauty', 14.30),
	(24, 'Sparkling Water', 'Food and beverages', 3.50),
	(25, 'Camping Tent', 'Sports and travel', 150.00),
	(26, 'Throw Pillow', 'Home and lifestyle', 18.90),
	(27, 'Leather Belt', 'Fashion accessories', 40.00),
	(28, 'Noise Cancelling Headphones', 'Electronic accessories', 199.99),
	(29, 'Lip Balm Set', 'Health and beauty', 12.00),
	(30, 'Organic Honey', 'Food and beverages', 11.20),
	(31, 'Running Shoes', 'Sports and travel', 75.00),
	(32, 'Indoor Plant Pot', 'Home and lifestyle', 25.00),
	(33, 'Fashion Sunglasses', 'Fashion accessories', 55.00),
	(34, 'Tablet Stand', 'Electronic accessories', 29.99),
	(35, 'Facial Cleanser', 'Health and beauty', 19.50),
	(36, 'Granola Bars', 'Food and beverages', 6.40),
	(37, 'Travel Pillow', 'Sports and travel', 15.00),
	(38, 'Decorative Lamp', 'Home and lifestyle', 44.75),
	(39, 'Silk Tie', 'Fashion accessories', 30.00),
	(40, 'Portable Speaker', 'Electronic accessories', 59.99),
	(41, 'Beaded Necklace', 'Fashion accessories', 27.50),
	(42, 'Gaming Mouse', 'Electronic accessories', 49.99),
	(43, 'Essential Oils Set', 'Health and beauty', 35.00),
	(44, 'Protein Powder', 'Food and beverages', 45.25),
	(45, 'Mountain Bike Helmet', 'Sports and travel', 85.00),
	(46, 'Wooden Picture Frame', 'Home and lifestyle', 22.30),
	(47, 'Canvas Tote Bag', 'Fashion accessories', 18.75),
	(48, 'Laptop Sleeve', 'Electronic accessories', 24.50),
	(49, 'Hand Cream', 'Health and beauty', 9.99),
	(50, 'Organic Almonds', 'Food and beverages', 12.80),
	(51, 'Fitness Tracker', 'Sports and travel', 79.95),
	(52, 'Wall Art Poster', 'Home and lifestyle', 15.60),
	(53, 'Stud Earrings', 'Fashion accessories', 16.40),
	(54, 'Portable SSD', 'Electronic accessories', 89.99),
	(55, 'Bath Bomb Set', 'Health and beauty', 22.00),
	(56, 'Herbal Tea Mix', 'Food and beverages', 7.25),
	(57, 'Trekking Poles', 'Sports and travel', 55.00),
	(58, 'Cozy Blanket', 'Home and lifestyle', 38.50),
	(59, 'Wool Socks', 'Fashion accessories', 13.90),
	(60, 'Smart Home Hub', 'Electronic accessories', 99.99);


INSERT INTO dim_customer (customer_id, customer_name, customer_type, gender)
VALUES
	(1, 'Taylor Swift', 'Member', 'Female'),
	(2, 'Dwayne Johnson', 'Normal', 'Male'),
	(3, 'Beyoncé Knowles', 'Member', 'Female'),
	(4, 'Chris Hemsworth', 'Member', 'Male'),
	(5, 'Ariana Grande', 'Normal', 'Female'),
	(6, 'Ryan Reynolds', 'Member', 'Male'),
	(7, 'Emma Watson', 'Member', 'Female'),
	(8, 'Tom Holland', 'Normal', 'Male'),
	(9, 'Zendaya Coleman', 'Member', 'Female'),
	(10, 'Leonardo DiCaprio', 'Normal', 'Male'),
	(11, 'Selena Gomez', 'Member', 'Female'),
	(12, 'Keanu Reeves', 'Normal', 'Male'),
	(13, 'Margot Robbie', 'Member', 'Female'),
	(14, 'Henry Cavill', 'Member', 'Male'),
	(15, 'Billie Eilish', 'Normal', 'Female'),
	(16, 'Jason Momoa', 'Member', 'Male'),
	(17, 'Natalie Portman', 'Normal', 'Female'),
	(18, 'Brad Pitt', 'Member', 'Male'),
	(19, 'Jennifer Lawrence', 'Member', 'Female'),
	(20, 'John Cena', 'Normal', 'Male');


INSERT INTO dim_branch (branch_id, branch_name, branch_city)
VALUES
	(1, 'Main', 'Branch Yangon'),
	(2, 'Second', 'Branch Naypyitaw'),
	(3, 'Third', 'Branch Mandalay');


INSERT INTO dim_payment (payment_id, payment_type)
VALUES
	(1, 'Credit card'),
	(2, 'Ewallet'),
	(3, 'Cash');




--QUESTION 1--

SELECT
	b.branch_city,
	SUM(p.price * f.quantity) AS total_revenue
FROM fact_sales f
INNER JOIN dim_product p
	ON f.product_id = p.product_id 
INNER JOIN dim_branch b
	ON f.branch_id = b.branch_id
GROUP BY b.branch_city;


--QUESTION 2--

SELECT 
	c.customer_name,
	SUM(p.price * f.quantity) AS total_spent
FROM fact_sales f
INNER JOIN dim_customer c
	ON f.customer_id = c.customer_id
INNER JOIN dim_product p
	ON f.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;


--QUESTION 3--

SELECT
	p.product_line,
	SUM(f.quantity) AS total_quantity
FROM fact_sales f
INNER JOIN dim_product p
	ON f.product_id = p.product_id
GROUP BY p.product_line
ORDER BY total_quantity DESC;


--QUESTION 4--

SELECT 
	i.payment_type,
	COUNT(f.quantity) AS total_dist
FROM fact_sales f
INNER JOIN dim_payment i
	ON f.payment = i.payment_id
GROUP BY i.payment_type
ORDER BY total_dist DESC;


--QUESTION 5--

SELECT 
	p.product_line,
	AVG(f.rating) AS AverageRating
FROM fact_sales f
INNER JOIN dim_product p
	ON f.product_id = p.product_id
GROUP BY p.product_line
ORDER BY AverageRating DESC;
	
	





