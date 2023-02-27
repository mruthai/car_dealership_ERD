--- Procedures----

--- New Customer---

CREATE OR REPLACE PROCEDURE insertCustomer(
	fName varchar,
	lName varchar,
	pHone varchar,
	aDdress varchar,
	citY varchar,
	statE varchar,
	billingInfo varchar
	
)
LANGUAGE plpgsql AS $$
BEGIN
		INSERT INTO customer(
			first_name,
			last_name,
			phone,
			address,
			city,
			state,
			billing_info
		)VALUES(
			fName,
			lName,
			pHone,
			aDdress,
			city,
			statE,
			billingInfo
			
		);
		COMMIT;
END;
$$

SELECT*
FROM customer;

CALL insertCustomer('Juniper', 'Berry', '(354)541-5555','1000 Pinetree', 'Thunder City', 'Wy', '5757-5858-5959-5151');
CALL insertCustomer('Dylan', 'Lang', '(708)555-4444','45 Bagder Street', 'Madison', 'Wi', '4242-4242-4242-4242');
CALL INSERTCustomer('Lucas', 'Smith', '(312)444-5555','20 Country Rd', 'Rockfalls', 'Il', '2424-2424-2424-2424');




--- Used Cars

CREATE OR REPLACE PROCEDURE insertCar(
	serialNumber varchar,
	makE varchar,
	modeL varchar,
	yea_r varchar,
	colour varchar,
	saletype varchar,
	usedCar varchar
	
)
LANGUAGE plpgsql AS $$
BEGIN
		INSERT INTO car(
			serial_number,
			make,
			model,
			year_,
			color,
			sale_type,
			used_car
		)VALUES(
			serialNumber,
			makE,
			modeL,
			yea_r,
			colour,
			saletype,
			usedCar
			
		);
		COMMIT;
END;
$$

SELECT*
FROM car;

CALL INSERTCar('tc45ws98zv90','Holden', 'WX-500','1985','Iris Blue','For Sale', 'used');
CALL INSERTCar('vx26ng84aw78','DeLorean', 'Alpha-5','1984','Flat-Silver','For Sale', 'used');
CALL INSERTCar('vx87bf76sf35','Pontiac', 'GTO','1992','Midnight Black','For Sale', 'used');





---- Service Table ----

CREATE OR REPLACE PROCEDURE insertService(
	serviceType varchar,
	servicePrice integer,
	serialNumber varchar,
	scheDule varchar
	
)
LANGUAGE plpgsql AS $$
BEGIN
		INSERT INTO service(
			service_type,
			service_price,
			serial_number,
			schedule 
		)VALUES(
			serviceType,
			servicePrice,
			serialNumber,
			scheDule
			
		);
		COMMIT;
END;
$$

CALL INSERTService('oil change', 65, ' 563gkh90', '11:30 AM 02/04/23');
CALL INSERTService('Package(Oil change, Tire Rotation, 24 Inspect)', 100, ' 65kj78fhas45', '3:30 PM 02/24/23');
CALL INSERTService('Package(Oil change, Tire Rotation, 24 Inspect)', 100, ' 34kj36akas05', '1:30 PM 02/25/23');
CALL INSERTService('Package(Oil change, Tire Rotation, 24 Inspect)', 100, ' 02kj72fjas75', '2:30 PM 02/27/23');






