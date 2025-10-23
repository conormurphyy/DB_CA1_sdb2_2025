CREATE TABLE WEIGHT_CLASSES (
    Weight_Class_ID INT AUTO_INCREMENT PRIMARY KEY,
    Weight_Class_Name VARCHAR(50),
    Min_Weight FLOAT,
    Max_Weight FLOAT
);



CREATE TABLE AGE_CLASSES (
    Age_Class_ID INT AUTO_INCREMENT PRIMARY KEY,
    Age_Class_Name VARCHAR(50),
    Min_Age INT,
    Max_Age INT
);



CREATE TABLE COACHES (
    Coach_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Expertise VARCHAR(100),
    Years_Experience INT,
    Price FLOAT,
    Personal_Info VARCHAR(255)
);



CREATE TABLE MEMBERS (
    Member_ID INT AUTO_INCREMENT PRIMARY KEY,
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
    Age_Class_ID INT,
    FOREIGN KEY (Coach_ID) REFERENCES COACHES(Coach_ID),
    FOREIGN KEY (Weight_Class_ID) REFERENCES WEIGHT_CLASSES(Weight_Class_ID),
    FOREIGN KEY (Age_Class_ID) REFERENCES AGE_CLASSES(Age_Class_ID)
);



CREATE TABLE MEMBER_PERSONAL_BESTS (
    Member_ID INT,
    Coach_ID INT,
    Type VARCHAR(50),
    Weight_Lifted FLOAT,
    Date_Of_Lift DATE,
    PRIMARY KEY (Member_ID, Coach_ID, Type),
    FOREIGN KEY (Member_ID) REFERENCES MEMBERS(Member_ID),
    FOREIGN KEY (Coach_ID) REFERENCES COACHES(Coach_ID)
);




CREATE TABLE COACH_TO_MEMBER_ASSIGNMENT (
    Assignment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Coach_ID INT,
    Member_ID INT,
    FOREIGN KEY (Coach_ID) REFERENCES COACHES(Coach_ID),
    FOREIGN KEY (Member_ID) REFERENCES MEMBERS(Member_ID)
);
