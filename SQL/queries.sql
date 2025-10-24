--Read-JOINS
--List each competitor with their details, coach, weight class and placement.
SELECT
  member.Name AS Member_Name,
  memebership_type.Type AS Membership_Type,
  membership_type.Price AS Membership_Price,
  coach.Name AS Coach_Name,
  weight_class.Weight_Class_Name AS Weight_Class,
  age_class.Age_Class_Name AS Age_Class,
  member.Age,
  member.Weight,
  member.Medical_Information,
  member.Injury_History
FROM MEMBERS member
JOIN MEMBERSHIP_TYPES membership_type ON member.Membership_ID = memebership_type.Membership_ID
JOIN COACHES coach ON member.Coach_ID = coach.Coach_ID
JOIN WEIGHT_CLASSES weight_class ON member.Weight_Class_ID = weight_class.Weight_Class_ID
JOIN AGE_CLASSES age_class ON member.Age_Class_ID = age_class.Age_Class_ID
ORDER BY member.Member_ID;

-- joins three tables: members, coaches, and membership_type
-- shows each member’s coach, expertise, and membership plan with price
SELECT 
    member.name AS member_name, 
    coach.name AS coach_name, 
    coach.expertise AS coach_expertise, 
    mtype.type AS membership_type, 
    mtype.price AS membership_price
FROM members member
JOIN coaches coach ON member.coach_id = coach.coach_id
JOIN membership_types mtype on member.membership_id = mtype.membership_id
ORDER BY member.member_id;

--Update Queries
-- updates the member with id=2 's coach to be the coach at coach id =2
UPDATE members SET Coach_ID =2 WHERE Member_ID=2;

--IF member_id =3 , weight is gainned and moved up a class
UPDATE members SET Weight = 103, Weight_Class ='93kg-105kg', Weight_Class_ID = 6 WHERE Member_ID =3;

-- if padraig kelly changes his expertise to hypertrophy training
UPDATE COACHES SET Expertise = 'Hypertrophy Training' WHERE Name = 'Padraig Kelly';

--records  a maintenance job done today on maintenance doc id =1
UPDATE MAINTENANCE_DOCUMENTS SET Last_Maintenance = CURDATE(), Maintenance_Notes = CONCAT(Maintenance_Notes, '  inspected on ', CURDATE()) WHERE Maintenance_Doc_ID = 1;

--records the updated date for the 'spring open'
UPDATE competitions SET Date ='2026-03-20' where name = 'Spring Open';

--Applys discount to membership for winners of competitions
UPDATE membership_type SET Price = Price *0.95 WHERE membership_id IN ( SELECT Membership_id FROM members WHERE member_id IN( select member_ID FROM competition_participants WHERE placement =1 ) );


-- SQL Delete Query
-- No assigned coaches & aren't in competition records
DELETE FROM MEMBERS
WHERE Coach_ID IS NULL
  AND Member_ID NOT IN (
      SELECT Member_ID 
      FROM COMPETITION_PARTICIPANTS
  );

-- Delete for coaches with less than 2yr experience
DELETE FROM COACHES
WHERE Years_Experience < 2;

--Delete participants who were the last three
DELETE FROM COMPETITION_PARTICIPANTS
ORDER BY Placement DESC
LIMIT 3;

