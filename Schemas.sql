-- Zomato Data Analysis using SQL
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS restaurantS;
DROP TABLE IF EXISTS riders;
DROP TABLE IF EXISTS deliveries;

CREATE TABLE customers
(
		customer_id	INT PRIMARY KEY,
		customer_name VARCHAR(25),
		reg_date DATE
);

CREATE TABLE restaurantS
(
		restaurant_id INT PRIMARY KEY,
		restaurant_name	VARCHAR(55),
		location VARCHAR(25),	
		rating FLOAT
);

CREATE TABLE orders
(
		order_id INT PRIMARY KEY,
		customer_id INT, -- FOREIGN KEY from customer table
		restaurant_id INT, -- FOREIGN KEY from restaurant table
		order_item VARCHAR(55),
		order_date DATE,
		order_time TIME,
		order_status VARCHAR(25),
		total_amount FLOAT
);


-- Adding Foreign key constraints 
ALTER TABLE orders
ADD CONSTRAINT fk_customers
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)


-- Adding Foreign key constraints
ALTER TABLE orders
ADD CONSTRAINT fk_restaurants
FOREIGN KEY (restaurant_id)
REFERENCES restaurantS(restaurant_id)



CREATE TABLE riders
(
		rider_id INT PRIMARY KEY,
		rider_name VARCHAR(50),
		sign_up DATE
);


CREATE TABLE deliveries
(
		delivery_id INT PRIMARY KEY,
		order_id INT, --FOREIGN KEY FROM ORDER TABLE
		CONSTRAINT fk_orders FOREIGN KEY (order_id) REFERENCES orders(order_id),
		raider_id INT, -- FOREIGN KEY FROM RAIDER TABLE
		CONSTRAINT fk_riders FOREIGN KEY (rider_id) REFERENCES riders(rider_id),
		delivery_status VARCHAR(35),
		delivery_time TIME
);



--End of Schemas

