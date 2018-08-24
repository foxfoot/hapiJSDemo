use mysql;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Root000';

use test_js;
create table pets (
    id varchar(50) not null,
    name varchar(100) not null,
    gender bool not null,
    birth varchar(10) not null,
    createdAt bigint not null,
    updatedAt bigint not null,
    version bigint not null,
    primary key (id)
) ;

create table fruitfruits(
    id varchar(50) not null,
    name varchar(100) not null,
    price bigint,
    color varchar(32),
    primary key (id)
);

insert into fruit(id, name, price, color) values(1, 'apple', 2.9, 'red');

insert into fruit(id, name, price, color) values(2, 'orange', 0.99, 'orange');

insert into fruit(id, name, price, color) values(3, 'pear', 6.5, 'yellow');

select * from fruit;

delete from fruit where name = 'cherry';

UPDATE `fruit` SET `name`='cherry',`price`='88' WHERE `name` = 'cherry' AND `price` = '88';


select * from `order`;
drop table `order`;
drop table fruit;
drop table `fruitOrder`;
