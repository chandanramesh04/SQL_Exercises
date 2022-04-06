CREATE TABLE OrderDetailsOne
(
orderID int PRIMARY KEY,
shipName varchar(50),
shippingCompany varchar(50),
orders int,
orderPrice int,
shippingDate DATE
)

INSERT INTO OrderDetailsOne VALUES
(1,'La corned abondance','Liquids 2',32,140,'2022-02-12'),
(2,'ShipTwo','Liquids 2',32,140,'2022-02-09'),
(3,'La corned abondance','Exoctic Liquids',12,300,'2022-03-08'),
(4,'ShipOne','Liquids 1',12,500,'2022-03-06'),
(5,'ShipThree','Liquids 3',12,600,'2022-02-18'),
(6,'La corned abondance','Exoctic Liquids',12,800,'2022-03-22')



SELECT * FROM OrderDetailsOne;



CREATE TABLE OrderDetailsTwo
(
orderID int FOREIGN KEY REFERENCES OrderDetailsOne(orderID),
productID int PRIMARY KEY,
products varchar(50),
quantity int,
employee varchar(50),
manager varchar(50)
)

INSERT INTO OrderDetailsTwo VALUES
(1,10,'SMALL',2,'Emp1','Manager1'),
(2,30,'MEDIUM',4,'Emp2','Manager2'),
(3,60,'SMALL',9,'Emp1','Manager1'),
(4,40,'LARGE',12,'Emp1','Manager2'),
(5,20,'SMALL',26,'Emp1','Manager2'),
(6,70,'LARGE',24,'Emp1','Manager1')



SELECT * FROM OrderDetailsTwo;


CREATE TABLE OrderDetailsThree
(
productID int FOREIGN KEY REFERENCES OrderDetailsTwo(productID),
productName varchar(50),
categoryName varchar(50),
price int,
discountPrice int,
)


INSERT INTO OrderDetailsThree VALUES
(70,'ProductName1','Category1',100,10),
(60,'ProductName3','Category2',20,5),
(30,'ProductName2','Category11',30,2),
(20,'ProductName1','Category9',98,7),
(40,'ProductName6','Category4',65,48),
(10,'ProductName9','Category6',12,3)

SELECT * FROM OrderDetailsThree;

SELECT * FROM OrderDetailsOne ORDER BY shippingDate;

SELECT orders,shipName FROM OrderDetailsOne WHERE shipName='La corned abondance' AND shippingDate BETWEEN '2022-02-10' AND '2022-03-20';

SELECT one.shippingCompany,two.products FROM OrderDetailsOne one, OrderDetailsTwo two WHERE one.orderID=two.orderID AND one.shippingCompany='Exoctic Liquids';

SELECT AVG(quantity) AS AVERAGE_QUANTITY FROM OrderDetailsTwo;

SELECT shippingCompany,shipName FROM OrderDetailsOne;

SELECT employee,manager FROM OrderDetailsTwo;

SELECT two.orderID,three.productName,three.categoryName,three.price-three.discountPrice AS DiscountPrice 
FROM OrderDetailsTwo two, OrderDetailsThree three WHERE two.productID=three.productID;


SELECT SUM(orderPrice) AS TotalPrice FROM OrderDetailsOne WHERE shippingCompany='Exoctic Liquids' AND orderPrice>50;