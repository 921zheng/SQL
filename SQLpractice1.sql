Create table sale (
    client_ID Int primary key,
    client_name varchar (20),
    order_date date,
  
    
);



insert into sale values (101, 'James','2023-10-10'),(102, 'Chris','2023-09-10'), (103, 'Jake','2023-08-10'), (104, 'Rich','2023-10-29');
select * from sale;
select count(client_ID) as clinet_number from sale;
select client_ID from sale where client_name='James' or client_name='Jake';
select client_ID from sale where client_name like 'J%';
alter table sale add nationality varchar(20);
update sale
set nationality='UK'
where client_ID=101;

update sale
set nationality='UK'
where client_ID=102;

update sale
set nationality='UK'
where client_ID=103;

update sale
set nationality='USA'
where client_ID=104;

select distinct nationality,client_ID from sale ;

select client_ID from sale where nationality in ('UK', 'USA');

create table product (
    product_ID int primary key,
    product_price int
);

insert into product values (1,20),(2,30),(3,24),(4,20);
select * from product;
select* from product order by product_price;
select product_ID from product where product_price between 30 and 32;


update product
set product_price=35
where product_price=20;

create table purchase (
    client_ID int primary key,
    product_ID Int,
    quantity int
);
insert into purchase values (101,2,1),(102,3,2),(103,2,1),(104,1,1);
select * from purchase;
select max(quantity) as popular_item from purchase;

select product.product_ID,product.product_price,purchase.client_ID,purchase.product_ID,purchase.quantity
from product
join purchase
on product.product_ID=purchase.product_ID;

