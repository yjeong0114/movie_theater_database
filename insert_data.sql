--Insertion of data into Database Tables

insert into customers (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info 
) values (
	1,
	'Jane',
	'Chung',
	'232 W Madison St Chicago, IL 60607',
	'1234-2343-2222-6678 850 07/24'
);

insert into movies (
	movie_id,
	title,
	date,
	time,
	seat_num,
	room_num 
) values (
	1,
	'The Devil wears prada',
	'2022-09-09',
	'10:15',
	'F1',
	'A2'
);

insert into tickets (
	ticket_id,
	ticket_price,
	customer_id,
	movie_id 
) values (
	1,
	19.99,
	1,
	1
);


alter table food_inventory drop product_name;

insert into concessions (
	order_id,
	customer_id,
	menu_name,
	price 
) values (
	1,
	1,
	'pop corn',
	10
);


insert into food_inventory (
	upc,
	order_id,
	product_amount,
	prod_name  
) values (
	1,
	1,
	100,
	'pop corn'
);



insert into product (
	menu_id,
	upc,
	prod_name,
	price
) values (
	1,
	1,
	'pop corn',
	10
)



select * from product;


