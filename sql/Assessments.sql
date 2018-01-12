/*
 * SQL to create Assessments table.
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
 
 AssessmentDate DATE NOT NULL,
 AssessmentLocation VARCHAR(50) NOT NULL,
 PerformerID VARCHAR(10),
 PerformerName VARCHAR(50) NOT NULL,
 PerformerRole VARCHAR(10) NOT NULL, -- Should be coded
 Completed VARCHAR(5) NOT NULL,      -- Coded
 AssessmentType VARCHAR(5) NOT NULL, -- Coded
 Score VARCHAR(10),
 Outcome VARCHAR(50),
 
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 
 CONSTRAINT PK_Assessments PRIMARY KEY (AssessmentID),
 CONSTRAINT FK_Assessments_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);

/* Insert Assessments related codelists
 */
INSERT INTO CodeLists VALUES (4, 'Assessments', 'Completed', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (5, 'Assessments', 'AssessmentType', 'SYSTEM', '2018-01-01 01:00:00');

/* Insert Assessments related codes
 */
INSERT INTO Codes VALUES (4, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (4, '1', 'Yes', 'SYSTEM', '2018-01-01 01:00:00'); 

INSERT INTO Codes VALUES (5, '1', 'Health of the Nation Outcome Scale (Working Age Adults)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '3', 'Patient Health Questionnaire-9', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '4', 'Agoraphobia Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '5', 'Agoraphobia Mobility Inventory Questionnaire ''When Accompanied''', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '6', 'Agoraphobia Mobility Inventory Questionnaire ''When Alone''', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '7', 'Employment Status Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '8', 'Generalised Anxiety Disorder Penn State Worry Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '9', 'Generalised Anxiety Disorder Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '10', 'Health Anxiety Inventory Short Week Scale', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '11', 'Obsessive Compulsive Disorder Inventory Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '12', 'Panic Disorder Severity Scale', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '13', 'Post Traumatic Stress Disorder Impacts of Events Revised Scale', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '14', 'Social Phobia Inventory Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '15', 'Social Phobia Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '16', 'Specific Phobia Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '17', 'Work and Social Adjustment Scale', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '20', 'Adult Mental Health Clustering Tool', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '21', 'Cardiovascular Disease Risk Calculator', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '24', 'Children''s Global Assessment Scale', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '25', 'Family Assessment Device (General Functioning Subscale)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '26', 'Parenting Daily Hassles', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '28', 'Paddington Complexity Scale', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '30', 'Mood and Feelings Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '31', 'Parenting Stress Index', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '32', 'Adult Comorbidity Evaluation - 27', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '33', 'Child-Pugh Score Calculator', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '34', 'Dysphagia Scoring System', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '35', 'Follicular Lymphoma International Prognostic Index', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '36', 'Hasenclever Index', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '38', 'International Prognostic Scoring System', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '39', 'Nottingham Prognostic Index', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '40', 'Revised International Prognostic Index', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '41', 'Sokal Index', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '42', 'Oxford Orthopaedic Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '43', 'Oxford Orthopaedic Questionnaire (Shoulder)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '44', 'Venous Thromboembolism Risk Assessment Tool', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '45', 'TPRG-SEND Two Year Corrected Age Outcome Assessment', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '46', 'Bayley Scales of Infant and Toddler Development (Third Edition)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '47', 'Griffiths Mental Development Scales', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '48', 'Schedule of Growing Skills', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '49', 'Improving Access to Psychological Therapies Patient Experience Questionnaire', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '52', 'Forensic Mental Health Clustering Tool', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '53', 'Child and Adolescent Mental Health Needs Based Grouping Tool', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (5, '54', 'European Group for the Immunological Classification of Leukaemia Scoring System', 'SYSTEM', '2018-01-01 01:00:00');
--	Depression Identification Questions
--	Anxiety Identification Questions
--	OTHER (specify)
