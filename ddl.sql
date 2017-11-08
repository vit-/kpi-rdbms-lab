create table product
(
	id numeric not null
		constraint product_pkey
			primary key,
	name varchar(256) not null,
	price numeric,
	amount numeric,
	order_id numeric not null
)
;

create unique index product_id_uindex
	on product (id)
;

create table client
(
	id numeric not null
		constraint client_pkey
			primary key,
	name varchar(256) not null,
	tel char,
	address varchar(512)
)
;

create unique index client_id_uindex
	on client (id)
;

create table "order"
(
	id numeric not null
		constraint order_pkey
			primary key,
	created_on timestamp default now() not null,
	shipped_on timestamp,
	client_id numeric not null
		constraint order_client_id_fk
			references client,
	employee_id numeric
)
;

create unique index order_id_uindex
	on "order" (id)
;

alter table product
	add constraint product_order_id_fk
		foreign key (order_id) references "order"
;

create table employee
(
	id numeric not null
		constraint employee_pkey
			primary key,
	surname varchar(32) not null,
	name varchar(32),
	born_on timestamp not null,
	joined_on timestamp,
	parent_id integer
		constraint employee_employee_id_fk
			references employee,
	workplace_id numeric not null
)
;

create unique index employee_id_uindex
	on employee (id)
;

create unique index employee_workplace_id_uindex
	on employee (workplace_id)
;

create index employee_name_surname_index
	on employee (name, surname)
;

alter table "order"
	add constraint order_employee_id_fk
		foreign key (employee_id) references employee
;

create table workplace
(
	id numeric not null
		constraint workplace_pkey
			primary key,
	name varchar(32)
)
;

create unique index workplace_id_uindex
	on workplace (id)
;

alter table employee
	add constraint employee_workplace_id_fk
		foreign key (workplace_id) references workplace
;

