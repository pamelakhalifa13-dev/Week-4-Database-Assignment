USE sales;
select paymentDate, 
sum(amount) AS totalAmount From payments group by paymentDate order by paymentDate desc limit 5;

select customerName, 
country, 
avg(creditLimit) as averageCrediteLimit from customers group by customerName, 
country;

select productCode, 
quantityOrdered, 
sum(quantityOrdered * priceEach) as totalPrice from orderdetails group by productCode, 
quantityOrdered;

select checkNumber, max(amount) as highestAmount from payments group by checkNumber;
