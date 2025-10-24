-- Trigger doesn't allow people under the age of 13 to be able to become a member
DELIMITER $$

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

DELIMITER ;
