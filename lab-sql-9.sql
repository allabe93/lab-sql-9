-- Create a table rentals_may to store the data from rental table with information for the month of May.
create table rentals_may (
rental_id int unique not null,
rental_date datetime default null,
inventory_id mediumint default null,
customer_id smallint default null,
return_date datetime default null,
staff_id tinyint default null,
last_update timestamp default null,
constraint primary key (rental_id)
);

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
insert into rentals_may
select *
from rental
where rental_date between '2005-05-01 00:00:00' and '2005-05-31 23:59:59' and
return_date between '2005-05-01 00:00:00' and '2005-05-31 23:59:59';

-- Create a table rentals_june to store the data from rental table with information for the month of June.
create table rentals_june (
rental_id int unique not null,
rental_date datetime default null,
inventory_id mediumint default null,
customer_id smallint default null,
return_date datetime default null,
staff_id tinyint default null,
last_update timestamp default null,
constraint primary key (rental_id)
);

-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
insert into rentals_june
select *
from rental
where rental_date between '2005-06-01 00:00:00' and '2005-06-30 23:59:59' and
return_date between '2005-06-01 00:00:00' and '2005-06-30 23:59:59';

-- Check the number of rentals for each customer for May.
select distinct customer_id, count(rental_id) as num_rentals_may from rentals_may group by customer_id;

-- Check the number of rentals for each customer for June.
select distinct customer_id, count(rental_id) as num_rentals_june from rentals_june group by customer_id;