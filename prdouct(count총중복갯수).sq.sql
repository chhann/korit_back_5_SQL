create database test_product;
use test_product;

drop table if exists `product_tb`;

create table product_tb (
	product_id int not null,
	 product_name varchar(100) not null,
     product_size varchar(10) not null,
     product_color varchar(20) not null,
     product_price int not null
);

insert into 
	product_tb 
	(product_id, product_name, product_size, product_color, product_price)
values
	(1,'모헤어 브이넥 앙고라 니트', 'S', 'Black', 37400), 
	(2,'모헤어 브이넥 앙고라 니트', 'M', 'Black', 37400), 
	(3,'모헤어 브이넥 앙고라 니트', 'L', 'Black', 37400), 
	(4,'모헤어 브이넥 앙고라 니트', 'XL', 'Black', 37400), 
	(5,'콘테 코듀로이 와이드 밴딩 팬츠', 'S', 'White', 38400),
	(6,'콘테 코듀로이 와이드 밴딩 팬츠', 'M', 'White', 38400),
	(7,'콘테 코듀로이 와이드 밴딩 팬츠', 'L', 'White', 38400),
	(8,'콘테 코듀로이 와이드 밴딩 팬츠', 'XL', 'White', 38400),
	(9,'콘테 코듀로이 와이드 밴딩 팬츠', 'XXL', 'White', 38400),
	(10,'버티칼 투웨이 골지 양털 집업', 'M', 'Navy', 49000),
	(11,'버티칼 투웨이 골지 양털 집업', 'L', 'Navy', 49000),
	(12,'버티칼 투웨이 골지 양털 집업', 'XL', 'Navy', 49000),
	(13,'버티칼 투웨이 골지 양털 집업', 'XXL', 'Navy', 49000),
	(14,'반집업 꽈배기 카라니트', 'SS', 'White', 48000),
	(15,'반집업 꽈배기 카라니트', 'S', 'White', 48000),
	(17,'반집업 꽈배기 카라니트', 'M', 'White', 48000),
	(18,'반집업 꽈배기 카라니트', 'L', 'White', 48000),
	(19,'반집업 꽈배기 카라니트', 'XL', 'White', 48000),
	(20,'후드 MA-1 패딩 점퍼', 'S', 'Black', 62000),
	(21,'후드 MA-1 패딩 점퍼', 'M', 'Black', 62000),
	(22,'후드 MA-1 패딩 점퍼', 'L', 'Black', 62000),
	(23,'후드 MA-1 패딩 점퍼', 'XL', 'Black', 62000);
    
    
select
    *
from 
	product_tb;
    
    
truncate table product_color_tb;
truncate table product_register_tb;
truncate table product_size_tb;
truncate table product_tb;


select
	product_color,
	count(*) as product_color_count
from 
	product_tb
group by
	product_color
order by
	product_color_count desc;
    

select
	product_size,
	count(*) as product_size_count
from 
	product_tb
group by
	product_size
order by
	product_size_count desc;
	
