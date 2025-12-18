-- TO CREATE THE DATABASE
CREATE DATABASE City_hospital;

-- TO USE THIS DATABASE FOR THE FURTHER FUNCTION
USE City_hospital;

-- HERE CREATE THE TABLE AND COLUMN 
CREATE TABLE Patients (
    Patient_Id INT,
    PatientName varchar(25),
    Age INT,
    Gender enum("M","F"),
    AdmissionDate Date
);
-- ALTER TABLE AND ADD COLUMN
ALTER TABLE patients 
	ADD COLUMN DoctorAssigned VARCHAR(50);
    
ALTER TABLE patients
	MODIFY  PatientName varchar(100);
    
-- RENAME THE TABLE PATIENTS TO PATIENTS INFO
RENAME TABLE patients to patient_Info;

TRUNCATE TABLE patient_info;

DROP TABLE patient_info;





    