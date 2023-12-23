CREATE DATABASE GYM3;
USE GYM3;

CREATE TABLE  trainer (
    trainer_id INT PRIMARY KEY ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    type_trainer VARCHAR(50),
    trains VARCHAR(50),
    train_in VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100) NOT NULL,
    CONSTRAINT PK_trainer_id UNIQUE(trainer_id)
);


CREATE TABLE  member (
    member_id INT PRIMARY KEY ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    code VARCHAR(15) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100) NOT NULL,
    practice VARCHAR(50),
    CONSTRAINT PK_member_id UNIQUE(member_id),
    CONSTRAINT UQ_member_code UNIQUE(code)
);


CREATE TABLE  payment (
    payment_id INT PRIMARY KEY ,
    member_id INT,
    amount DECIMAL(10, 2),
    date_time DATE,
    CONSTRAINT PK_payment_id UNIQUE(payment_id),
    CONSTRAINT FK_member_payment FOREIGN KEY (member_id) REFERENCES member(member_id)
);


CREATE TABLE  class (
    class_id INT PRIMARY KEY ,
    train_in VARCHAR(50) NOT NULL,
    practice VARCHAR(50) NOT NULL,
    fitness VARCHAR(50),
    body_building VARCHAR(50)
);

select * from member;
select * from trainer;
select * from payment;
select * from class;