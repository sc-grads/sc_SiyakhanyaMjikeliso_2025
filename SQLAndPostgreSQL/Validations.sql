alter table products
Add unique (name)

update products
set price = 699
where price is null;

insert into products (name, department,price,weight) 
values ('Shirt','tools',24,1)

alter table products
drop constraint products_name_key

alter table products
add unique (name,department)

insert into products (name, department,price,weight) 
values ('Jacket','tools',-2,1)
--Check validation
alter table products
add check (price>0)

create table orders (
	id serial primary key,
	name varchar(40),
	created_at timestamp not null,
	est_delivery timestamp not null,
	check (created_at < est_delivery)

);

insert into orders (name,created_at,est_delivery)
values ('shirt','2000-NOV-20 01:00AM',' 2000-NOV-15 01:00AM')