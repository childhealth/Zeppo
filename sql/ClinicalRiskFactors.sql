/*
 * SQL to create ClinicalRiskFactors table.
 * Stores clinical risk factors associated with maternity records.
 * Assumes table does not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 05-01-2018: First version
 */

/* Create table
 */
CREATE TABLE ClinicalRiskFactors (
 ClinicalRiskFactorID INTEGER NOT NULL,
 MaternityRecordID INTEGER NOT NULL,
 DateRecorded DATE NOT NULL,
 LocationRecorded TEXT NOT NULL,
 -- PerformerID ???
 PerformerName TEXT NOT NULL,
 PerformerJobRole TEXT NOT NULL,        -- Should be coded
 ClinicalRiskFactor TEXT NOT NULL,
 RiskAssessment TEXT NOT NULL,
 RiskMitigation TEXT NOT NULL,
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 CONSTRAINT PK_ClinicalRiskFactors PRIMARY KEY (ClinicalRiskFactorID),
 CONSTRAINT FK_ClinicalRiskFactors_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);
