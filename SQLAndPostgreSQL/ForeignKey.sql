create table photots(
id int primary key identity(1,1),
url varchar(200),
user_id int references users1(id)
);

insert into photots(url,user_id)
values('http://two.jpag',1),
('http://25.jpag',1),
('http://36.jpag',1),
('http://52.jpag',2),
('http://78.jpag',3),
('http://9.jpag',4)


select * from photots
