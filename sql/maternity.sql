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

-- AllergiesAdverseReactions.sql
-- Assessments.sql
-- Attendances.sql
-- ClinicalRiskFactors.sql
-- ConditionsDiagnoses.sql

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
