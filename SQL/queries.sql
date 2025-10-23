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
