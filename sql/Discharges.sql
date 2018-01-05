/*
 * SQL to create Discharges table.
 * Stores conditions or diagnoses associated with maternity records.
 * Assumes table does not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 05-01-2018: First version
 */

/* Create table
 */
CREATE TABLE ConditionsDiagnoses (
 ConditionDiagnosisID INTEGER NOT NULL,
 MaternityRecordID INTEGER NOT NULL,
 Condition VARCHAR(18) NOT NULL; -- Coded
 Category VARCHAR(1) NOT NULL,   -- Coded
 Stage TEXT,
 Onset DATE,
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 CONSTRAINT PK_ConditionsDiagnoses PRIMARY KEY (ConditionDiagnosisID),
 CONSTRAINT FK_ConditionsDiagnoses_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);

/* Insert ConditionsDiagnoses related codelists
 */
INSERT INTO CodeLists VALUES (12, 'ConditionsDiagnoses', 'Condition', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (13, 'ConditionsDiagnoses', 'Category', 'SYSTEM', '2018-01-01 01:00:00');

/* Insert ConditionsDiagnoses related codes
 */
INSERT INTO Codes VALUES (267, 12, '1', 'Rubella', 'SYSTEM', '2018-01-01 01:00:00');
