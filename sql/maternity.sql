/*
 * SQL to create maternity tables.
 * Assumes tables do not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 19-12-2017: First version
 */

/* MaternityRecords - Stores standard maternity records
 */
CREATE TABLE MaternityRecords (
 MaternityRecordID INTEGER NOT NULL,
 NHSNumber VARCHAR(10),
 ProviderID VARCHAR(50),
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 CONSTRAINT PK_MaternityRecords PRIMARY KEY (MaternityRecordID)
);

/* CodeLists - Stores code lists
 */
CREATE TABLE CodeLists (
 CodeListID INTEGER NOT NULL,
 DatabaseTable VARCHAR(100) NOT NULL,
 DatabaseColumn VARCHAR(100) NOT NULL,
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 CONSTRAINT PK_CodeLists PRIMARY KEY (CodeListID)
);

/* Codes - Stores codes
 */
CREATE TABLE Codes (
 CodeID INTEGER NOT NULL,
 CodeListID INTEGER NOT NULL,
 CodeKey VARCHAR(20) NOT NULL,
 CodeValue TEXT NOT NULL,
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 CONSTRAINT PK_Codes PRIMARY KEY (CodeID),
 CONSTRAINT FK_Codes_CodeLists FOREIGN KEY (CodeListID) REFERENCES CodeLists(CodeListID)
);

/* AdditionalDemographics - Stores additional demographics associated with maternity records
 */
CREATE TABLE AdditionalDemographics(
);

/* Admissions - Stores admission details associated with maternity records
 */
CREATE TABLE Admissions(
);

/* AllergiesAdverseReactions - Stores allergies and adverse reactions associated with maternity records
 */
CREATE TABLE AllergiesAdverseReactions (
 AllergyAdverseReactionID INTEGER NOT NULL,
 MaternityRecordID INTEGER NOT NULL,
 DateRecorded DATE NOT NULL,
 CausativeAgent TEXT NOT NULL,
 ReactionDescription TEXT,
 ReactionType VARCHAR(5) NOT NULL, /* Codes */
 Certainty VARCHAR(5), /* Codes */
 Severity VARCHAR(5) NOT NULL, /* Codes */
 Evidence TEXT,
 RecurrenceProbability TEXT,
 FirstExperienced TEXT,
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 CONSTRAINT PK_AllergiesAdverseReactions PRIMARY KEY (AllergyAdverseReactionID),
 CONSTRAINT FK_AllergiesAdverseReactions_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);

/* Insert AllergiesAdverseReactions related codelists
 */
INSERT INTO CodeLists (CodeListID, DatabaseTable, DatabaseColumn, UStamp, DTStamp)
VALUES (1, 'AllergiesAdverseReactions', 'ReactionType', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO CodeLists (CodeListID, DatabaseTable, DatabaseColumn, UStamp, DTStamp)
VALUES (2, 'AllergiesAdverseReactions', 'Certainty', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO CodeLists (CodeListID, DatabaseTable, DatabaseColumn, UStamp, DTStamp)
VALUES (3, 'AllergiesAdverseReactions', 'Severity', 'SYSTEM', '2018-01-01 01:00:00');

/* Insert AllergiesAdverseReactions related codes
 */
INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (1, 1, '1', 'Allergy', 'SYSTEM', '2018-01-01 01:00:00'); 
 
INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (2, 1, '2', 'Intolerance', 'SYSTEM', '2018-01-01 01:00:00'); 

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (3, 1, '3', 'Other non-drug allergy', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (4, 1, '4', 'Adverse reaction', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (5, 1, '0', 'Not known', 'SYSTEM', '2018-01-01 01:00:00');


INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (6, 2, '1', 'Unlikely', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (7, 2, '2', 'Likely', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (8, 2, '3', 'Certain', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (9, 2, '4', 'Confirmed by challenge testing', 'SYSTEM', '2018-01-01 01:00:00');


INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (10, 3, '1', 'Mild', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (11, 3, '2', 'Moderate', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (12, 3, '3', 'Severe', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (13, 3, '0', 'Unknown severity', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (14, 3, '4', 'Life threatening', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes (CodeID, CodeListID, CodeKey, CodeValue, UStamp, DTStamp)
VALUES (15, 3, '5', 'Fatal', 'SYSTEM', '2018-01-01 01:00:00');

/* Assessments - Stores assessment scales associated with maternity records
 */
CREATE TABLE Assessments(
);

/* Attendances - Stores attendance details associated with maternity records
 */
CREATE TABLE Attendances(
);

/* ClinicalRiskFactors - Stores clinical risk factors associated with maternity records
 */
CREATE TABLE ClinicalRiskFactors(
};

/* ConditionsDiagnoses - Stores conditions or diagnoses associated with maternity records
 */
CREATE TABLE ConditionsDiagnoses(
);

/* Discharges - Stores discharge details associated with maternity records
 */
CREATE TABLE Discharges(
);

/* Examinations - Stores examination findings associated with maternity records
 */
CREATE TABLE Examinations(
);
 
/* FamilyHistories - Stores family histories associated with maternity records
 */
CREATE TABLE FamilyHistories(
);
 
/* FetalAnomaliesSyndromes - Stores Down’s, Edwards’ and Patau’s Syndromes associated with maternity records
 */
CREATE TABLE FetalAnomaliesSyndromes(
);
 
/* FetalAnomaliesStructural - Stores structural anomalies associated with maternity records
 */
CREATE TABLE FetalAnomaliesStructural(
);
 
/* Immunisations - Stores immunisation administrations associated with maternity records
 */
CREATE TABLE Immunisations(
);
 
/* IndividualRequirements - Stores individual requirements associated with maternity records
 */
CREATE TABLE IndividualRequirements(
);
 
/* InfectiousDiseasesScreening - Stores infectious diseases screening associated with maternity records
 */
CREATE TABLE InfectiousDiseasesScreening(
); 
 
/* InformationAdvice - Stores information and advice given associated with maternity records
 */
CREATE TABLE InformationAdvice(
); 
 
/* Investigations - Stores investigation results associated with maternity records
 */
CREATE TABLE Investigations(
);
 
/* LegalInformation - Stores legal information associated with maternity records
 */
CREATE TABLE LegalInformation(
);
 
/* Measurements - Stores measurements associated with maternity records
 */
CREATE TABLE Measurements(
);

/* PregnancyHistories - Stores pregnancy histories associated with maternity records
 */
CREATE TABLE PregnancyHistories(
); 

/* Medications - Stores medications associated with maternity records
 */
CREATE TABLE Medications(
);

/* PersonalConcerns - Stores person and carer concerns, expectations and wishes associated with maternity records
 */
CREATE TABLE PersonalConcerns(
);

/* PersonalComments - Stores personal comments associated with maternity records
 */
CREATE TABLE PersonalComments(
);
 
/* PersonalContacts - Stores personal contacts associated with maternity records
 */
CREATE TABLE PersonalContacts(
);

/* ProfessionalPlans - Stores plans and requested actions associated with maternity records
 */
CREATE TABLE ProfessionalPlans(
  Date VARCHAR(20) NOT NULL,
  ODSSiteCode VARCHAR(250) NOT NULL,
  SDSJobRoleName ,
  ProfessionalName ,
  PlanDetails ,
  Recipient ,
);
 
/* PregnancyEpisodes - Stores pregnancy episodes details associated with maternity records
 */
CREATE TABLE PregnancyEpisodes(
);
 
/* Procedures - Stores procedures associated with maternity records
 */
CREATE TABLE Procedures(
);
 
/* ProfessionalComments - Stores professional comments associated with maternity records
 */
CREATE TABLE ProfessionalComments(
);

/* ProfessionalContacts - Stores professional contacts associated with maternity records
 */
CREATE TABLE ProfessionalContacts(
);

/* Referrals - Stores referral details associated with maternity records
 */
CREATE TABLE Referrals(
);

/* SafetyAlerts - Stores safety alerts associated with maternity records
 */
CREATE TABLE SafetyAlerts(
);

/* ScanReports - Stores scan reports associated with maternity records
 */
CREATE TABLE ScanReports(
);
 
/* Screenings - Stores screening test results for Sickle Cell and Thalassaemia associated with maternity records
 */
CREATE TABLE Screenings(
); 

/* SocialContextHouseholds - Stores social context households associated with maternity records
 */
CREATE TABLE SocialContextHouseholds(
);  

/* SocialContextPersons - Stores social context persons associated with maternity records
 */
CREATE TABLE SocialContextPersons(
);
 
/* Intrapartums - Stores intrapartums associated with maternity records
 */
CREATE TABLE Intrapartums(
);
 
/* Deliveries - Stores birth deliveries associated with maternity records
 */
CREATE TABLE Deliveries(
);
 
/* Repairs - Stores repair details associated with maternity records
 */
CREATE TABLE Repairs(
);
 
/* BirthPlans - Stores birth and management plans associated with maternity records
 */
CREATE TABLE BirthPlans(
);
