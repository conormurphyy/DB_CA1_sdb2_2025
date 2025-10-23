INSERT INTO WEIGHT_CLASSES (Weight_Class_Name, Min_Weight, Max_Weight)
VALUES
('Under 59kg', 0.0, 58.9),
('59kg–66kg', 59.0, 65.9),
('66kg–74kg', 66.0, 73.9),
('74kg–83kg', 74.0, 82.9),
('83kg–93kg', 83.0, 92.9),
('93kg–105kg', 93.0, 104.9),
('105kg–120kg', 105.0, 119.9),
('120kg+', 120.0, 999.9);

INSERT INTO AGE_CLASSES (Age_Class_Name, Min_Age, Max_Age)
VALUES
('Teen 1', 13, 15),
('Teen 2', 16, 17),
('Teen 3', 18, 19),
('Junior', 20, 23),
('Open', 24, 39),
('Masters I', 40, 49),
('Masters II', 50, 59),
('Masters III', 60, 69),
('Masters IV', 70, 79);

INSERT INTO COACHES (Name, Expertise, Years_Experience, Price, Personal_Info)
VALUES
('Sean Reilly', 'Powerlifting', 11, 60.00, 'Former IrishPF national medalist, he is known for squat coaching'),
('Aoife Murphy', 'Strength & Conditioning', 7, 55.00, 'Certified coach with a background in sports science from DCU'),
('Cian Gallagher', 'Olympic Lifting', 9, 65.00, 'Competed in Irish Weightlifting Nationals'),
('Niamh Byrne', 'Rehabilitation', 6, 50.00, 'Qualified physiotherapist specialising in post injury strength work'),
('Padraig Kelly', 'General Fitness', 4, 40.00, 'An up and coming coach focused on functional strength and beginner lifters');


INSERT INTO MEMBERS (Membership_ID, Name, Weight_Class, Age_Class, Age, Weight, Medical_Information, Injury_History, Coach_ID, Weight_Class_ID, Age_Class_ID)
VALUES
(1, 'Liam Connor', '74kg–83kg', 'Teen 3', 19, 81.5, 'None', 'Minor shoulder strain (2024)', 1, 4, 3),
(2, 'Ava Byrne', '74kg–83kg', 'Junior', 22, 78.4, 'Mild asthma', 'None', 2, 4, 4),
(3, 'Noah Kelly', '93kg–105kg', 'Open', 29, 98.2, 'None', 'Left knee surgery (2022)', 3, 6, 5),
(4, 'Emma Walsh', '105kg–120kg', 'Masters I', 45, 109.7, 'None', 'Chronic lower back tightness', 4, 7, 6),
(5, 'Ethan Murphy', '120kg+', 'Open', 34, 126.8, 'Hypertension (managed)', 'None', 5, 8, 5);


INSERT INTO COACH_TO_MEMBER_ASSIGNMENT (Coach_ID, Member_ID)
VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO MEMBER_PERSONAL_BESTS (Member_ID, Coach_ID, Type, Weight_Lifted, Date_Of_Lift)
VALUES
-- Liam Connor
(1, 1, 'Squat', 195.0, '2025-03-14'),
(1, 1, 'Bench Press', 125.0, '2025-04-02'),
(1, 1, 'Deadlift', 220.0, '2025-05-10'),

-- Ava Byrne 
(2, 2, 'Squat', 135.0, '2025-02-20'),
(2, 2, 'Bench Press', 70.0, '2025-03-15'),
(2, 2, 'Deadlift', 160.0, '2025-04-22'),

-- Noah Kelly 
(3, 1, 'Squat', 240.0, '2025-01-05'),
(3, 1, 'Bench Press', 155.0, '2025-02-16'),
(3, 1, 'Deadlift', 275.0, '2025-03-30'),

-- Emma Walsh 
(4, 4, 'Squat', 150.0, '2025-02-25'),
(4, 4, 'Bench Press', 85.0, '2025-03-18'),
(4, 4, 'Deadlift', 170.0, '2025-04-10'),

-- Ethan Murphy 
(5, 5, 'Squat', 260.0, '2025-02-11'),
(5, 5, 'Bench Press', 175.0, '2025-03-04'),
(5, 5, 'Deadlift', 300.0, '2025-04-19');
