/*
 * SQL to create Assessmentss table.
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

17	Work and Social Adjustment Scale
20	Adult Mental Health Clustering Tool
21	Cardiovascular Disease Risk Calculator
24	Children's Global Assessment Scale
25	Family Assessment Device (General Functioning Subscale)
26	Parenting Daily Hassles
28	Paddington Complexity Scale
30	Mood And Feelings Questionnaire
31	Parenting Stress Index
32	Adult Comorbidity Evaluation - 27
33	Child-Pugh Score Calculator
34	Dysphagia Scoring System
35	Follicular Lymphoma International Prognostic Index
36	Hasenclever Index
38	International Prognostic Scoring System
39	Nottingham Prognostic Index
40	Revised International Prognostic Index
41	Sokal Index
42	Oxford Orthopaedic Questionnaire
43	Oxford Orthopaedic Questionnaire (Shoulder)
44	Venous Thromboembolism Risk Assessment Tool
45	TPRG-SEND Two Year Corrected Age Outcome Assessment
46	Bayley Scales of Infant and Toddler Development (Third Edition)
47	Griffiths Mental Development Scales
48	Schedule of Growing Skills
49	Improving Access to Psychological Therapies Patient Experience Questionnaire
52	Forensic Mental Health Clustering Tool
53	Child and Adolescent Mental Health Needs Based Grouping Tool
54	European Group for the Immunological Classification of Leukaemia Scoring System
*/
--	Depression Identification Questions
--	Anxiety Identification Questions
--	OTHER (specify)
