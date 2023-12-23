use GYM3;
go

--Update Trainer's Email
UPDATE trainer
SET email = 'new_email@example.com'
WHERE trainer_id = 1;

--Update Member's Practice
UPDATE member
SET practice = 'Pilates'
WHERE member_id = 3;

--Update Payment Amount
UPDATE payment
SET amount = 55.00
WHERE payment_id = 2;

--Update Class Fitness Information
UPDATE class
SET fitness = 'Cardio and Endurance'
WHERE class_id = 1;

--Update Trainer's Type
UPDATE trainer
SET type_trainer = 'HIIT Trainer'
WHERE trainer_id = 4;

--Update Member's Last Name
UPDATE member
SET last_name = 'Jones'
WHERE member_id = 5;


-- Delete Trainer with ID = 3
DELETE FROM trainer WHERE trainer_id = 3;

-- Delete Member with ID = 5
DELETE FROM member WHERE member_id = 5;

-- Delete Payment with ID = 2
DELETE FROM payment WHERE payment_id = 2;

-- Delete Class with ID = 4
DELETE FROM class WHERE class_id = 4;

-- Delete all Trainers who work at 'Gym B'
DELETE FROM trainer WHERE train_in = 'Gym B';

-- Delete all Members who practice 'Kickboxing'
DELETE FROM member WHERE practice = 'Kickboxing';

--Select all trainers
SELECT * FROM trainer;

--Select all members who practice Yoga
SELECT * FROM member WHERE practice = 'Yoga';

--Select payments with amounts greater than 50
SELECT * FROM payment WHERE amount > 50;

--Select classes with 'Cardio' in the practice
SELECT * FROM class WHERE practice LIKE '%Cardio%';

--Select the total amount paid by each member
SELECT m.member_id, m.first_name, m.last_name, SUM(p.amount) AS total_amount_paid
FROM member m
LEFT JOIN payment p ON m.member_id = p.member_id
GROUP BY m.member_id, m.first_name, m.last_name;

--select all member 
SELECT * FROM member;

--Add a new column to the 'trainer' table
ALTER TABLE trainer
ADD COLUMN experience_years INT;

--Modify the data type of an existing column in the member table
ALTER TABLE member
ALTER COLUMN phone VARCHAR(20);

--Add a new constraint to the 'payment' table
ALTER TABLE payment
ADD CONSTRAINT CHK_positive_amount CHECK (amount >= 0);

--Rename a column in the 'class' table
ALTER TABLE class
RENAME COLUMN practice TO training_type;

--Drop a constraint from the trainer table
ALTER TABLE trainer
DROP CONSTRAINT PK_trainer_id;

--Add a foreign key constraint to the 'payment' table
ALTER TABLE payment
ADD CONSTRAINT FK_trainer_payment FOREIGN KEY (member_id) REFERENCES trainer(trainer_id);
