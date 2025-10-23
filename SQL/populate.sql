INSERT INTO MEMBERSHIP_TYPE (Member_ID,Type,Price)
VALUES
--normal rates
(1, 'Monthly', 44.99),
(2, 'Every 6 Months', 249.99),
(3, 'Anually', 449.99),
(4, 'Day Pass', 7.99),
-- student rates
(5, 'Monthly', 40.99),
(6, 'Every 6 Months', 220.99),
(7, 'Anually', 400.99),
(8, 'Day Pass', 6.99);

INSERT INTO EQUIPTMENT (Equiptment_ID, Type, Brand, Price) 
VALUES
(1, 'Power-Bar', 'Eleiko', 1100.00),
(2, 'Power-Bar', 'Rogue', 405.00),
(3, 'Power-Bar', 'Strength Shop', 249.99),
(4, 'Combo-Rack', 'Eleiko', 5000.00),
(5, 'Calibrated Plates - 25KG Set','Eleiko', 670.00),
(6, 'Calibrated Plates - 20KG Set','Eleiko', 540.00),
(7, 'Calibrated Plates - 15KG Set','Eleiko', 410.00),
(8, 'Calibrated Plates - 10KG Set','Eleiko', 270.00),
(9, 'Calibrated Plates - 5KG Set','Eleiko', 140.00),
(10, 'Calibrated Plates - 2.5KG Set','Eleiko', 80.00),
(11, 'Calibrated Plates - 1.25KG Set','Eleiko', 50.00),
(12, 'Calibrated Plates - 25KG Set','Rogue', 595.00),
(13, 'Calibrated Plates - 20KG Set','Rogue', 475.00),
(14, 'Calibrated Plates - 15KG Set','Rogue', 350.00),
(15, 'Calibrated Plates - 10KG Set','Rogue', 230.00),
(16, 'Calibrated Plates - 5KG Set','Rogue', 110.00),
(17, 'Calibrated Plates - 2.5KG Set','Rogue', 60.00),
(18, 'Calibrated Plates - 1.25KG Set','Rogue', 35.00),
(19, 'Calibrated Plates - 25KG Set','Strength Shop', 390.00),
(20, 'Calibrated Plates - 20KG Set','Strength Shop', 320.00),
(21, 'Calibrated Plates - 15KG Set','Strength Shop', 240.00),
(22, 'Calibrated Plates - 10KG Set','Strength Shop', 160.00),
(23, 'Calibrated Plates - 5KG Set','Strength Shop', 80.00),
(24, 'Calibrated Plates - 2.5KG Set','Strength Shop', 40.00),
(25, 'Calibrated Plates - 1.25KG Set','Strength Shop', 20.00),
(26, 'Competition-Bar', 'Eleiko', 1100.00),
(27, 'Competition-Bar', 'Rogue', 415.00),
(28, 'Competition-Bar', 'Strength Shop', 249.99),
(29, 'Squat-Bar', 'Eleiko', 1100.00),
(30, 'Deadlift-Bar', 'Rogue', 405.00),
(31, 'Cambered-Bar', 'Strength Shop', 219.99),
(32, 'Power Cage', 'Strength Shop', 499.99),
(33, 'Power Cage (with lat pull)', 'Strength Shop', 649.99),
(34, 'Dumbbell - 5kg Pair', 'Rogue', 70.00),
(35, 'Dumbbell - 10kg Pair', 'Rogue', 120.00),
(36, 'Dumbbell - 20kg Pair', 'Rogue', 220.00),
(37, 'Dumbbell - 5kg Pair', 'Strength Shop', 35.00),
(38, 'Dumbbell - 10kg Pair', 'Strength Shop', 60.00),
(39, 'Dumbbell - 20kg Pair', 'Strength Shop', 110.00),
(40, 'Adjustable Bench', 'Rogue', 595.00),
(41, 'Adjustable Bench', 'Strength Shop', 199.99),
(42, 'Flat Bench', 'Rogue', 255.00),
(43, 'Flat Bench', 'Strength Shop', 99.99);

INSERT INTO MAINTENANCE_STAFF (Maintenance_Staff_ID, Name, Speciality)
VALUES
(1, 'John Smith', 'Electrical'),
(2, 'Maria Peterson', 'Plumbing'),
(3, 'Alex McCracket', 'Equipment Repair'),
(4, 'Vincent Murphy', 'Cleaning'),
(5, 'Michael Orji', 'General Maintenance');

INSERT INTO MAINTENANCE_DOCUMENTS (Maintenance_Doc_ID, Equipment_ID, Maintenance_Staff_ID, Last_Maintenance, Next_Maintenance, Maintenance_Notes) VALUES
(1, 1, 1, '2025-09-01', '2026-03-01', 'Power-Bar calibration completed. All bolts tightened.'),
(2, 4, 2, '2025-08-15', '2026-02-15', 'Combo-Rack hydraulics checked and lubricated.'),
(3, 32, 3, '2025-07-20', '2026-01-20', 'Strength Shop Power Cage safety pins replaced.'),
(4, 40, 4, '2025-10-01', '2026-04-01', 'Rogue Adjustable Bench cleaned'),
(5, 5, 5, '2025-10-10', '2026-04-10', 'Eleiko 25KG Plate set cleaned and checked for damage.');

INSERT INTO EQUIPMENT_USAGE (Usage_ID, Member_ID, Equipment_ID, Date_Last_Used) 
VALUES
(1, 1, 1, '2025-10-20'),
(2, 2, 4, '2025-10-19'),
(3, 3, 32, '2025-10-18'),
(4, 1, 5, '2025-10-17'),
(5, 2, 40, '2025-10-16');

INSERT INTO COMPETITIONS (Competition_ID, Name, Date, Location)
VALUES
(1, 'Autumn Powerlifting Classic', '2025-11-15', 'Dublin'),
(2, 'Junior Nationals', '2025-12-12', 'Cork'),
(3, 'Spring Open', '2026-03-05', 'Galway'),
(4, 'Summer Championships', '2026-06-20', 'Limerick'),
(5, 'Open Nationals', '2026-08-10', 'Belfast'),
(6, 'Masters Nationals', '2026-04-23', 'Tip');

INSERT INTO COMPETITION_PARTICIPANTS (Member_ID, Competition_ID, Coach_ID, Placement, Dots_Score)
 VALUES
(1, 1, 1, 1, 450.20),
(2, 1, 2, 2, 432.10),
(3, 2, 1, 3, 410.00),
(4, 3, 3, 1, 455.90),
(5, 4, 2, 2, 400.50);

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
