CREATE TABLE WEIGHT_CLASSES (
    Weight_Class_ID INT PRIMARY KEY,
    Weight_Class_Name VARCHAR(50),
    Min_Weight FLOAT,
    Max_Weight FLOAT
);

CREATE TABLE AGE_CLASSES (
    Age_Class_ID INT PRIMARY KEY,
    Age_Class_Name VARCHAR(50),
    Min_Age INT,
    Max_Age INT
);

CREATE TABLE COACHES (
    Coach_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Expertise VARCHAR(100),
    Years_Experience INT,
    Price FLOAT,
    Personal_Info VARCHAR(255)
);

CREATE TABLE MEMBERS (
    Member_ID INT PRIMARY KEY,
    Membership_ID INT,
    Name VARCHAR(100),
    Weight_Class VARCHAR(50),
    Age_Class VARCHAR(50),
    Age INT,
    Weight FLOAT,
    Medical_Information VARCHAR(255),
    Injury_History VARCHAR(255),
    Coach_ID INT,
    Weight_Class_ID INT,
    Age_Class_ID INT
);

CREATE TABLE MEMBER_PERSONAL_BESTS (
    Member_ID INT,
    Coach_ID INT,
    Type VARCHAR(50),
    Weight_Lifted FLOAT,
    Date_Of_Lift DATE
);

CREATE TABLE COACH_TO_MEMBER_ASSIGNMENT (
    Assignment_ID INT PRIMARY KEY,
    Coach_ID INT,
    Member_ID INT
);


CREATE TABLE MEMBERSHIP_TYPES ( 
    Membership_ID INT PRIMARY KEY, 
    Type VARCHAR(50) NOT NULL, 
    Price DECIMAL(10,2) NOT NULL 
); 

CREATE TABLE EQUIPMENT ( 
    Equipment_ID INT PRIMARY KEY, 
    Type VARCHAR(50) NOT NULL, 
    Brand VARCHAR(50), 
    Price DECIMAL(10,2) 
); 

CREATE TABLE MAINTENANCE_STAFF ( 
    Maintenance_Staff_ID INT PRIMARY KEY, 
    Name VARCHAR(100) NOT NULL, 
    Speciality VARCHAR(100) 
); 

CREATE TABLE MAINTENANCE_DOCUMENTS ( 
    Maintenance_Doc_ID INT PRIMARY KEY, 
    Equipment_ID INT NOT NULL, 
    Maintenance_Staff_ID INT NOT NULL, 
    Last_Maintenance DATE, 
    Next_Maintenance DATE, 
    Maintenance_Notes TEXT, 
    FOREIGN KEY (Equipment_ID) REFERENCES EQUIPMENT(Equipment_ID), 
    FOREIGN KEY (Maintenance_Staff_ID) REFERENCES MAINTENANCE_STAFF(Maintenance_Staff_ID) 
); 

CREATE TABLE EQUIPMENT_USAGE ( 
    Usage_ID INT PRIMARY KEY, 
    Member_ID INT NOT NULL, 
    Equipment_ID INT NOT NULL, 
    Date_Last_Used DATE, 
    FOREIGN KEY (Equipment_ID) REFERENCES EQUIPMENT(Equipment_ID), 
    FOREIGN KEY (Member_ID) REFERENCES MEMBERS(Member_ID) 
); 

CREATE TABLE COMPETITIONS ( 
    Competition_ID INT PRIMARY KEY, 
    Name VARCHAR(100) NOT NULL, 
    Date DATE NOT NULL, 
    Location VARCHAR(100) 
); 

CREATE TABLE COMPETITION_PARTICIPANTS ( 
    Member_ID INT NOT NULL, 
    Competition_ID INT NOT NULL, 
    Coach_ID INT NOT NULL, 
    Placement INT, 
    Dots_Score DECIMAL(5,2), 
    PRIMARY KEY (Member_ID, Competition_ID), 
    FOREIGN KEY (Member_ID) REFERENCES MEMBERS(Member_ID), 
    FOREIGN KEY (Competition_ID) REFERENCES COMPETITIONS(Competition_ID), 
    FOREIGN KEY (Coach_ID) REFERENCES COACHES(Coach_ID) 

); 

