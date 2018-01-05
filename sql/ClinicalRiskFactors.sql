/*
 * SQL to create ClinicalRiskFactors table.
 * Stores attendance details associated with maternity records.
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
 Indication TEXT;
 ContactType VARCHAR(2),                -- Coded
 ConsultationMethod VARCHAR(2),         -- Coded
 Speciality VARCHAR(3),                 -- Coded
 Service VARCHAR(2),                    -- Coded
 -- Care professionals present 0..*
 PersonAccompanyingPatient VARCHAR(10), -- Coded
 Outcome VARCHAR(5),                    -- Coded
  
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 CONSTRAINT PK_ClinicalRiskFactors PRIMARY KEY (ClinicalRiskFactorID),
 CONSTRAINT FK_ClinicalRiskFactors_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);
