USE test01
GO

CREATE TABLE customer(
id varchar(20) CONSTRAINT PK_id PRIMARY KEY,
pwd varchar(20) CONSTRAINT NN_pwd NOT NULL,
name varchar(20) CONSTRAINT NN_name NOT NULL,
phone1 varchar(3) NULL,
phone2 varchar(8) NULL,
birthYear int NULL,
address varchar(100) NULL
)

INSERT INTO customer
VALUES('ONE', '1111', 'Kim', '010', '7772777', 1988, 'Daejeon')

INSERT INTO customer
VALUES('two', '2222', 'Lee', '010', '1234567', 1979, 'Seoul')

