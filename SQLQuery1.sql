CREATE TABLE Customer
(
custID int,
custFullName varchar(50),
faxNumber int,
unitPrice int,
country varchar(50)
);

INSERT INTO Customer VALUES
(1,'James Anderson',1234,10, 'United Kingdom'),
(2,'Richard Parker',1434,13, 'Germany'),
(3,'Huger Malan',NULL,40, 'Russia'),
(4,'John Williams',1925,52, 'Germany'),
(5,'Victor Daniels',0982,7, 'Australia'),
(6,'Nathan Lyon',NULL,4, 'Germany'),
(7,'Wendy',0721,18, 'Brazil'),
(8,'Lucy Ferguson',1484,22, 'China')

SELECT * FROM Customer;

SELECT * FROM Customer WHERE country='Germany';

SELECT custFullName FROM Customer;

SELECT * FROM Customer WHERE faxNumber IS NOT NULL;

SELECT * FROM Customer WHERE custFullName LIKE '_u%';

SELECT * FROM Customer WHERE unitPrice > 10 AND unitPrice < 20 ORDER BY unitPrice;
