-- Create table


create table customers (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

create table movies (
	movie_id SERIAL primary key,
	title VARCHAR(150),
	date DATE,
	time TIME,
	seat_num VARCHAR(100),
	room_num VARCHAR(100)
);

create table Tickets (
	ticket_id SERIAL primary key,
	ticket_price NUMERIC(5,2),
	customer_id INTEGER,
	movie_id INTEGER,
	foreign key(customer_id) references customers(customer_id),
	foreign key	(movie_id) references movies(movie_id)
);

create table Concessions (
	order_id SERIAL primary key,
	customer_id INTEGER,
	menu_name VARCHAR(150),
	price NUMERIC(5,2),
	foreign key (customer_id) references customers(customer_id)
);

create table food_inventory (
	upc SERIAL primary key,
	product_name INTEGER,
	order_id INTEGER,
	foreign key (order_id) references Concessions(order_id)
);

create table product (
 menu_id SERIAL primary key,
 upc INTEGER,
 prod_name VARCHAR(150),
 price NUMERIC(5,2),
 foreign key(upc) references food_inventory(upc)
);


alter table food_inventory 
add product_amount INTEGER;

select * from food_inventory;