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
WHERE Years_Exerperience < 2;

--Delete participants who DNF
DELETE FROM COMPETION_PARTICIPANTS
WHERE PLACEMENT IS NULL;



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

--Applys discount to membership for selected members
UPDATE MEMBERSHIP_TYPE SET Price = Price * 0.90 WHERE Membership_ID BETWEEN 6 AND 8;

-- Read Query 
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
JOIN membership_type mtype on member.membership_id = mtype.membership_id
ORDER BY member.member_id;

