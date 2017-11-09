create table WORKPLACE
(
	ID NUMBER not null
		primary key,
	NAME VARCHAR2(32)
)
/

create table CLIENT
(
	ID NUMBER not null
		primary key,
	NAME VARCHAR2(256) not null,
	TEL CHAR(10),
	ADDRESS VARCHAR2(512)
)
/

create table EMPLOYEE
(
	ID NUMBER not null
		primary key,
	LASTNAME VARCHAR2(64) not null,
	NAME VARCHAR2(64),
	BORN_ON DATE not null,
	JOINED_ON DATE,
	PARENT_ID NUMBER
		constraint EMPLOYEE_EMPLOYEE_ID_FK
			references EMPLOYEE,
	WORKPLACE_ID NUMBER not null
		constraint EMPLOYEE_WORKPLACE_ID_FK
			references WORKPLACE
)
/

create table "ORDER"
(
	ID NUMBER not null
		primary key,
	CREATED_ON DATE not null,
	SHIPPED_ON DATE,
	CLIENT_ID NUMBER not null
		constraint ORDER_CLIENT_ID_FK
			references CLIENT,
	EMPLOYEE_ID NUMBER
		constraint ORDER_EMPLOYEE_ID_FK
			references EMPLOYEE
)
/

create table PRODUCT
(
	ID NUMBER not null
		primary key,
	NAME VARCHAR2(256) not null,
	PRICE NUMBER,
	AMOUNT NUMBER,
	ORDER_ID NUMBER not null
		constraint PRODUCT_ORDER_ID_FK
			references "ORDER"
)
/

