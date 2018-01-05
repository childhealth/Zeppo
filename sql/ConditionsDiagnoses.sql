
/*
 * SQL to create ConditionsDiagnoses table.
 * Stores attendance details associated with maternity records.
 * Assumes table does not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 05-01-2018: First version
 */

/* Create table
 */
CREATE TABLE ConditionsDiagnoses (
 AttendanceID INTEGER NOT NULL,
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
 CONSTRAINT PK_Attendances PRIMARY KEY (AttendanceID),
 CONSTRAINT FK_Attendances_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);

/* Insert Attendances related codelists
 */
INSERT INTO CodeLists VALUES (12, 'Attendances', 'ContactType', 'SYSTEM', '2018-01-01 01:00:00');

/* Insert Attendances related codes
 */
INSERT INTO Codes VALUES (62, 12, '1', 'Accident and Emergency Attendance', 'SYSTEM', '2018-01-01 01:00:00');
