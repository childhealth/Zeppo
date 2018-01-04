/*
 * SQL to create Attendances table.
 * Stores attendance details associated with maternity records.
 * Assumes table does not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 04-01-2018: First version
 */

/* Create table
 */
CREATE TABLE Attendances (
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
INSERT INTO CodeLists VALUES (6, 'Attendances', 'ContactType', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (7, 'Attendances', 'ConsultationMethod', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (8, 'Attendances', 'Speciality', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (9, 'Attendances', 'Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (10, 'Attendances', 'PersonAccompanyingPatient', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (11, 'Attendances', 'Outcome', 'SYSTEM', '2018-01-01 01:00:00');

/* Insert Attendances related codes
 */
INSERT INTO Codes VALUES (16, 4, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (17, 4, '1', 'Yes', 'SYSTEM', '2018-01-01 01:00:00'); 

INSERT INTO Codes VALUES (18, 5, '1', 'Health of the Nation Outcome Scale (Working Age Adults)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (19, 5, '3', 'Patient Health Questionnaire-9', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (20, 5, '4', 'Agoraphobia Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (21, 5, '5', 'Agoraphobia Mobility Inventory Questionnaire ''When Accompanied''', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (22, 5, '6', 'Agoraphobia Mobility Inventory Questionnaire ''When Alone''', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (23, 5, '7', 'Employment Status Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (24, 5, '8', 'Generalised Anxiety Disorder Penn State Worry Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (25, 5, '9', 'Generalised Anxiety Disorder Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (26, 5, '10', 'Health Anxiety Inventory Short Week Scale', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (27, 5, '11', 'Obsessive Compulsive Disorder Inventory Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (28, 5, '12', 'Panic Disorder Severity Scale', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (29, 5, '13', 'Post Traumatic Stress Disorder Impacts of Events Revised Scale', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (30, 5, '14', 'Social Phobia Inventory Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (31, 5, '15', 'Social Phobia Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (32, 5, '16', 'Specific Phobia Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
