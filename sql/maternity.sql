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

/* AllergiesAdverseReactions - Stores allergies and adverse reactions associated with a maternity record
 */
CREATE TABLE AllergiesAdverseReactions(
);

/* Assessments - Stores assessment scales associated with a maternity record
 */
CREATE TABLE Assessments(
);

/* Attendances - Stores attendance details associated with a maternity record
 */
CREATE TABLE Attendances(
);

/* ClinicalRiskFactors - Stores clinical risk factors associated with a maternity record
 */
CREATE TABLE ClinicalRiskFactors(
};

/* ConditionsDiagnoses - Stores conditions or diagnoses associated with a maternity record
 */
CREATE TABLE ConditionsDiagnoses(
);

/* Discharges - Stores discharge details associated with a maternity record
 */
CREATE TABLE Discharges(
);
 
Examination Findings
Family History - Maternity
Fetal Anomaly - Down’s, Edwards’ and Patau’s Syndromes
Fetal Anomaly - Structural Anomalies
Immunisation Administration
Individual Requirements
Infectious Diseases Screening
Information and Advice given
Investigation Results
Legal Information
Measurements
Pregnancy History
Medication
Person and carer concerns, expectations and wishes
Personal Comment
Personal Contacts
Plan & Requested Actions
Pregnancy Episode Details
Procedures
Professional Comment
Professional Contacts
Referral Details
Safety Alerts
Scan Report
Sickle Cell and Thalassaemia
Social Context Household
Social Context Person
Intrapartum
Birth Delivery
Repair Details
Birth and Management Plan

CREATE TABLE ProfessionalPlans(
  Date VARCHAR(20) NOT NULL,
  ODSSiteCode VARCHAR(250) NOT NULL,
  SDSJobRoleName ,
  ProfessionalName ,
  PlanDetails ,
  Recipient ,
  CONSTRAINT PK_Boundary PRIMARY KEY (BoundaryID)
);

CREATE INDEX idx_type
ON Boundary (BoundaryID);
