-- Trigger doesn't allow people under the age of 13 to be able to become a member


CREATE TRIGGER check_age
BEFORE INSERT ON MEMBERS

FOR EACH ROW
BEGIN
    -- Check the members  age before inserting
    IF NEW.Age < 13 THEN
        SIGNAL SQLSTATE '45000' -- https://www.ibm.com/docs/en/db2/11.5.x?topic=statements-signal reference to signal sql state.
        SET MESSAGE_TEXT = 'Member must be at least 13 years old.';
    END IF;
END$$



-- Triggers auto logs if a new equipment is added

-- creates a equipment addition log
DROP TABLE IF EXISTS equipment_log;
CREATE TABLE equipment_log (
  equipment_id INT,
  `Type` VARCHAR(50),
  `Brand` VARCHAR(50),
  `Action` VARCHAR(50),
  inserted_at DATETIME
);

--inserts the new data into the log for equipment
DROP TRIGGER IF EXISTS after_equipment_insert;
CREATE TRIGGER after_equipment_insert
AFTER INSERT ON EQUIPMENT
FOR EACH ROW
  INSERT INTO equipment_log (equipment_id, `Type`, `Brand`, `Action`, inserted_at)
  VALUES (NEW.Equipment_ID, NEW.`Type`, NEW.`Brand`, 'added', NOW());
