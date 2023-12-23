use GYM3;
go 

INSERT INTO trainer (trainer_id, first_name, last_name, type_trainer, trains, train_in, phone, email )
VALUES
    ('1', 'John', 'Doe', 'Cardio', 'Running', 'Gym A', '123456789', 'john.doe@example.com'),
    ('2', 'Jane', 'Smith', 'Bodybuilding', 'Weightlifting', 'Gym B', '987654321', 'jane.smith@example.com'),
	('3', 'Alice', 'Johnson', 'Yoga Instructor', 'Yoga', 'Yoga Studio', '555111222', 'alice.johnson@example.com'),
    ('4', 'Bob', 'Williams', 'Strength Coach', 'Powerlifting', 'Power Gym', '555333444', 'bob.williams@example.com'),
    ('5', 'Charlie', 'Brown', 'Crossfit Trainer', 'Crossfit', 'Crossfit Center', '555555555', 'charlie.brown@example.com');

INSERT INTO member (member_id, first_name, last_name, code, phone, email, practice)
VALUES
      (1, 'Alice', 'Johnson', 'A123', '555111222', 'alice.johnson@example.com', 'Yoga'),
    (2, 'Bob', 'Williams', 'B456', '555333444', 'bob.williams@example.com', 'Crossfit'),
    (3, 'Charlie', 'Smith', 'C789', '555555555', 'charlie.smith@example.com', 'Pilates'),
    (4, 'David', 'Brown', 'D012', '555777888', 'david.brown@example.com', 'Functional Training'),
    (5, 'Eva', 'Jones', 'E345', '555999000', 'eva.jones@example.com', 'Cardio'),
    (6, 'Frank', 'Davis', 'F678', '555222333', 'frank.davis@example.com', 'Kickboxing'),
    (7, 'Grace', 'Wilson', 'G901', '555444555', 'grace.wilson@example.com', 'Bodyweight'),
    (8, 'Henry', 'Taylor', 'H234', '555666777', 'henry.taylor@example.com', 'Strength Training'),
    (9, 'Isabel', 'Moore', 'I567', '555888999', 'isabel.moore@example.com', 'HIIT'),
    (10, 'Jack', 'Miller', 'J890', '555000111', 'jack.miller@example.com', 'Zumba');


INSERT INTO payment (payment_id, member_id, amount, date_time)
VALUES
    (1,1, 50.00, '2023-01-15'),
    (2,2, 75.50, '2023-02-20'),
    (3,3, 30.00, '2023-03-10'),
    (4,4, 45.25, '2023-04-05'),
    (5,5, 60.75, '2023-05-15'),
    (6,6, 25.50, '2023-06-20'),
    (7,7, 90.00, '2023-07-08'),
    (8,8, 55.75, '2023-08-12'),
    (9,9, 40.25, '2023-09-25'),
    (10,10, 70.50, '2023-10-30');


INSERT INTO class (class_id, train_in, practice, fitness, body_building)
VALUES
    ('1', 'Yoga Class', 'Yoga', 'Flexibility Training', NULL),
    ('2', 'Weightlifting Class', 'Weightlifting', 'Strength Training', 'Bodybuilding'),
	('3', 'Cardio Blast', 'Cardio', 'High-Intensity Interval Training', NULL),
    ('4', 'Pilates Class', 'Pilates', 'Core Strengthening', NULL),
    ('5', 'Kickboxing Class', 'Kickboxing', 'Endurance and Conditioning', 'Martial Arts'),
    ('6', 'Crossfit Session', 'Crossfit', 'Functional Fitness', 'Bodyweight Training'),
    ('7', 'Spin Class', 'Cycling', 'Cardiovascular Endurance', NULL),
    ('8', 'Zumba Dance', 'Dance', 'Aerobic Exercise', 'Fun and Dance'),
    ('9', 'Power Yoga', 'Yoga', 'Strength and Flexibility', NULL),
    ('10', 'Functional Training', 'Functional Training', 'Overall Fitness', NULL)
   ;

 

	

