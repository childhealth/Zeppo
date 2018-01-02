/*
 * SQL to create maternity tables.
 * Assumes tables do not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 19-12-2017: First version
 */

/* MaternityRecords - Stores standard maternity records
 */
CREATE TABLE MaternityRecords(
);

/* Codes - Stores code lists
 */
CREATE TABLE Codes(
);

/* AllergiesAdverseReactions - Stores allergies and adverse reactions associated with maternity records
 */
CREATE TABLE AllergiesAdverseReactions(
);

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
 
Sickle Cell and Thalassaemia
Social Context Household
Social Context Person
Intrapartum
Birth Delivery
Repair Details
Birth and Management Plan



CREATE INDEX idx_type
ON Boundary (BoundaryID);
