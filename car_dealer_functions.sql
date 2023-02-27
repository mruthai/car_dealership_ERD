--- Functions----

---- Percentage taken off for servicing vehicle ------

CREATE OR REPLACE FUNCTION anniversery (
	serviceId integer,
	adjPrice float
)
RETURNS integer
LANGUAGE plpgsql AS $$
BEGIN 
	UPDATE service 
	SET service_price = service_price - (adjPrice * service_price)
	WHERE service_id = serviceID;
	RETURN serviceId;
END;
$$

SELECT anniversery(6, .70);
 

------ Change value of car sale type from for sale to paid --------


CREATE OR REPLACE FUNCTION paid_sale_type(
	carId integer,
	saleType varchar
)
RETURNS varchar
LANGUAGE plpgsql AS $$
BEGIN 
	UPDATE car 
	SET sale_type = saleType
	WHERE  car_id = carID;
	RETURN carId;
END;
$$

SELECT paid_sale_type(4, 'paid');


