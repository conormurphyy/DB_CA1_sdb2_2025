# DB_CA1_sdb2_2025
Database Project

```erDiagram
    MEMBERS { 
        int Member_ID PK
        int Membership_ID FK
        int Weight_Class FK
        int Age_Class FK
        string Name 
        int Age
        float Weight
        string Gender  
        string Medical_Information 
        string Injury_History 
    }

    WEIGHT_CLASSES {
        int Weight_Class PK
        String Weight_Class_Name
        float Min_Weight
        float Max_Weight
    }

    AGE_CLASSES {
        int Age_Class PK
        String Age_Class_Name
        float Min_Age
        float Max_Age
    }

    MEMBER_PERSONAL_BESTS {
        int Member_PB PK
        int Member_ID FK
        String Compound_Type
        float Weight_Lifted
        date Date_Of_Lift
    }

    COACHES { 
        int Coach_ID PK 
        string Name 
        string Expertise  
        int Years_Experience 
        float Price 
        string Personal_Info 
    }

    COACH_TO_MEMBER_ASSIGNMENT {
        int Assignment_ID PK
        int Coach_ID FK
        int Member_ID FK
    }

    MEMBERSHIP_TYPE { 
        int Membership_ID PK 
        string Type 
        float Price 
    } 

    EQUIPMENT { 
        int Equipment_ID PK 
        string Type 
        string Brand 
        float Price 
    } 

    MAINTENANCE_STAFF { 
        int Maintainance_Staff_ID PK 
        string Name 
        string Speciality 
    }

    MAINTAINANCE_DOCUMENTS {
        int Maintainance_Doc_ID PK
        int Equipment_ID FK
        int Maintainance_Staff_ID FK
        date Last_Maintainance
        date Next_Maintainance
        String Maintainance_Notes
    }

    EQUIPMENT_USAGE { 
        int Usage_ID PK 
        int Member_ID FK 
        int Equipment_ID FK 
        date Date_Last_Used 
    } 

    COMPETITIONS { 
        int Competition_ID PK 
        string Name 
        date Date 
        string Location 
    } 

    COMPETITION_PARTICIPANTS { 
        int Member_ID FK 
        int Competition_ID FK 
        int Coach_ID FK 
        int Placement 
        float Dots_Score 
    }

    MEMBERS ||--o{ COACH_TO_MEMBER_ASSIGNMENT : "is assigned"
    COACHES ||--o{ COACH_TO_MEMBER_ASSIGNMENT : "is assigned to"
    MEMBERS ||--|| MEMBERSHIP_TYPE : "has" 
    MEMBERS ||--o{ MEMBER_PERSONAL_BESTS: "has"
    MEMBERS ||--o| COMPETITION_PARTICIPANTS : "are" 
    COMPETITIONS ||--o{ COMPETITION_PARTICIPANTS : "includes" 
    COACHES ||--o{ COMPETITION_PARTICIPANTS : "handles" 
    MAINTENANCE_STAFF }o--o{ MAINTAINANCE_DOCUMENTS : "documents and/or inspects"
    EQUIPMENT ||--o{ MAINTAINANCE_DOCUMENTS : "has it's record stored in"
    MEMBERS }o--o{ EQUIPMENT_USAGE : "uses" 
    EQUIPMENT ||--o{ EQUIPMENT_USAGE : "is used in"
    WEIGHT_CLASSES ||--o{ MEMBERS : "is categorised to"
    AGE_CLASSES ||--o{ MEMBERS : "is categorised to"
```
