DROP TABLE IF EXISTS PUBLIC.PURCHASES;

DROP TABLE IF EXISTS PUBLIC.CUSTOMERS;

CREATE TABLE PUBLIC.CUSTOMERS (
	CUSTOMER_ID BIGINT NOT NULL AUTO_INCREMENT,
	NAME VARCHAR_IGNORECASE(120) NOT NULL,
	CONSTRAINT CUSTOMERS_PK PRIMARY KEY (CUSTOMER_ID)
);

CREATE TABLE PUBLIC.PURCHASES (
	OPERATION_ID BIGINT NOT NULL AUTO_INCREMENT,
	CUSTOMER_ID BIGINT,
	"DATE" DATE NOT NULL,
	AMOUNT NUMERIC(20,2) NOT NULL,
	CONSTRAINT PURCHASES_PK PRIMARY KEY (OPERATION_ID),
	CONSTRAINT PURCHASES_FK FOREIGN KEY (CUSTOMER_ID) REFERENCES PUBLIC.CUSTOMERS(CUSTOMER_ID)
);


