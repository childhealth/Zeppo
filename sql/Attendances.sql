/*
 * SQL to create Attendances table.
 * Stores assessment scales associated with maternity records.
 * Assumes table does not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 04-01-2018: First version
 */

/* Create table
 */
CREATE TABLE Assessments (
 AssessmentID INTEGER NOT NULL,
 MaternityRecordID INTEGER NOT NULL,
 DateRecorded DATE NOT NULL,
 LocationRecorded TEXT NOT NULL,
 -- PerformerID ???
 PerformerName TEXT NOT NULL,
 PerformerJobRole TEXT NOT NULL,-- Should be coded
 Completed VARCHAR(5) NOT NULL, -- Coded
 Type VARCHAR(5) NOT NULL,      -- Coded
 Outcome TEXT,
 Score TEXT,
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 CONSTRAINT PK_Assessments PRIMARY KEY (AssessmentID),
 CONSTRAINT FK_Assessments_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);

/* Insert Assessments related codelists
 */
INSERT INTO CodeLists VALUES (4, 'Assessments', 'Completed', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (5, 'Assessments', 'Type', 'SYSTEM', '2018-01-01 01:00:00');

/* Insert Assessments related codes
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
