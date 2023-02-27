-- Car Dealership -- 
-- Table + Inserts --

DROP TABLE IF EXISTS customer cascade;
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	phone varchar (13),
	address varchar(50),
	city varchar(50),
	state varchar(50),
	billing_info varchar(225) 
);

INSERT INTO customer(
	first_name,
	last_name,
	phone,
	address,
	city,
	state,
	billing_info
)values(
	'randel',
	'floyd',
	'(708)001-0001',
	'100 Michigan Ave',
	'Chicago',
	'Il',
	'1000-1000-1000-1000'
),(
	'florence',
	'machinie',
	'(611)023-0023',
	'90 Top St.',
	'Sandwich',
	'Il',
	'8900-1270-1120-6710'
);

SELECT *


DROP TABLE IF EXISTS sale_invoice;
CREATE TABLE sale_invoice(
	sale_invoice_id SERIAL PRIMARY KEY,
	invoice_number varchar(16),
	invoice_date varchar(15),
	customer_id integer ,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	car_id integer,
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	sales_rep_id integer ,
	FOREIGN KEY (sales_rep_id) REFERENCES sales_rep(sales_rep_id),
	price float 
);

INSERT INTO sale_invoice(
	invoice_number,
	invoice_date,
	customer_id,
	car_id,
	sales_rep_id, 
	price
)values(
	'101',
	'01/01/23',
	1,
	1,
	1,
	35750.24
),(
	'102',
	'01/01/23',
	2,
	2,
	2,
	57567.16
);

DROP TABLE IF EXISTS car;
CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	serial_number varchar(255)NOT NULL,
	make varchar(50),
	model varchar(50),
	year_ varchar(4),
	color varchar(50),
	sale_type varchar (50),
	new_car varchar (50),
	used_car varchar (50)
	
);

INSERT INTO car (
	serial_number,
	make,
	model,
	year_,
	color,
	sale_type,
	new_car
	
)values(
	'vx87st27bf91',
	'Shelby',
	'Cobra',
	'2024',
	'Deep Ocean blue',
	'leased',
	'new'
),(
	'zq75mc92fy37sd31',
	'Alpha Romeo',
	'Stelvio',
	'2024',
	'Shamrock Green',
	'paid',
	'new'
	
);

SELECT *
FROM car

DROP TABLE IF EXISTS sales_rep cascade;
CREATE TABLE sales_rep(
	sales_rep_id SERIAL PRIMARY KEY,
	first_name varchar (37),
	last_name varchar (37)
);

INSERT INTO sales_rep(
	first_name,
	last_name
)VALUES (
	'Ron',
	'Burgundy'
),(
	'Victoria',
	'Korningstone'
);

SELECT *
FROM sales_rep

DROP TABLE IF EXISTS service_ticket;
CREATE TABLE service_ticket(
	service_ticket_id SERIAL PRIMARY KEY,
	service_ticket_number varchar(50),
	customer_id integer,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	mechanic_id integer,
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
	car_id integer,
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	service_id integer,
	FOREIGN KEY (service_id) REFERENCES service(service_id)
);

INSERT INTO service_ticket(
	service_ticket_number,
	customer_id,
	mechanic_id,
	car_id,
	service_id
)Values(
	1,
	1,
	1,
	1,
	1
),(
	2,
	2,
	2,
	2,
	2
);

DROP TABLE IF EXISTS mechanic cascade;
CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name varchar (37),
	last_name varchar (37)
);

SELECT *
FROM mechanic

INSERT INTO mechanic(
	first_name,
	last_name
)VALUES(
	'Jess',
	'Debrunson'
),(
		
	'Caralton',
	'Pickens'
);

DROP TABLE IF EXISTS service;
CREATE TABLE service(
	service_id SERIAL PRIMARY KEY,
	service_type varchar(50),
	service_price integer NOT Null,
	serial_number varchar(50) NOT NULL,
	schedule varchar(50)
);

SELECT*
FROM service

INSERT INTO service(
	service_type,
	service_price,
	serial_number,
	schedule
)VALUES(
	'24 point inspection',
	20.00,
	'567gfd67',
	'8:00 AM 01/02/23'
),(
	'replace alternator',
	426,
	'977gas7',
	'2:00 PM 01/02/23'
);







































