-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p.productName,c.categoryName FROM products as p join categories as c on p.categoryID = c.categoryID
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.orderId,s.shippername
FROM orders as o join shippers as s on o.shipperId = s.shipperId where orderDate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.productName, o.quantity FROM products as p join orderdetails as o on p.productId = o.productId where orderId = 10251 order by p.productName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.OrderId, c.customerName as 'Customer Name', e.lastName as 'Employee Last Name' FROM orders as o join customers as c on o.customerId = c.customerId join employees as e on o.employeeId = e.employeeId