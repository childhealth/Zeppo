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
 PerformerJobRole VARCHAR(10) NOT NULL, -- Coded
 Completed VARCHAR(5) NOT NULL,         -- Coded
 AssessmentType VARCHAR(5) NOT NULL,    -- Coded
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
INSERT INTO CodeLists VALUES (100, '*', 'JobRole', 'SYSTEM', '2018-01-01 01:00:00');

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

INSERT INTO Codes VALUES (100, 'R0010', 'Medical Director', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0020', 'Clinical Director - Medical', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0210', 'Director of Public Health', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0030', 'Professor', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0040', 'Senior Lecturer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0050', 'Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0060', 'Special salary scale in Public Health Medicine', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0070', 'Associate Specialist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0080', 'Staff Grade', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0090', 'Hospital Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0100', 'Clinical Assistant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0110', 'Specialist Registrar', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0120', 'Senior Registrar (Closed )', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0130', 'Registrar (Closed)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0140', 'Senior House Officer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0150', 'House Officer - Pre Registration', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0160', 'House Officer - Post Registration', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0170', 'Trust Grade Doctor - House Officer level', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0180', 'Trust Grade Doctor - SHO level', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0190', 'Trust Grade Doctor - Specialist Registrar level', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0200', 'Trust Grade Doctor - Career Grade level', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0260', 'General Medical Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0270', 'Salaried General Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1981', 'Psychiatrist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1984', 'Health Records Administrator', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R6200', 'GP Registrar', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R6300', 'Sessional GP', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R7140', 'ODP', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R7150', 'SODP', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9100', 'A & E Staff Nurse (Temporary)  London Cluster Only', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9101', 'A & E Manager (Temporary) London Cluster Only', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9102', 'A & E Doctor  (Temporary) London Cluster only', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9103', 'A & E  Student (Temporary) London Cluster Only', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9104', 'A & E  Clerk (Temporary) London Cluster Only', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0215', 'Asst. Clinical Medical Officer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0220', 'Clinical Medical Officer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0230', 'Senior Clinical Medical Officer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0240', 'Other Community Health Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0243', 'Other Community Health Service - Social Care Worker', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0247', 'Other Community Health Service - Admin Clerk', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0055', 'Dental surgeon acting as Hospital Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0250', 'General Dental Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0280', 'Regional Dental Officer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0290', 'Dental Clinical Director - Dental', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0295', 'Dental Assistant Clinical Director', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0300', 'Dental Officer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0310', 'Senior Dental Officer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0320', 'Salaried Dental Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0006', 'Student Community Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0330', 'Student Nurse - Adult Branch', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0340', 'Student Nurse - Child Branch', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0350', 'Student Nurse - Mental Health Branch', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0360', 'Student Nurse - Learning Disabilities Branch', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0370', 'Student Midwife', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0380', 'Student Health Visitor', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0390', 'Student District Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0400', 'Student School Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0410', 'Student Practice Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0420', 'Student Occupational Health Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0430', 'Student Community Paediatric Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0440', 'Student Community Mental Health Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0450', 'Student Community Learning Disabilities Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0460', 'Student Chiropodist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0470', 'Student Dietitian', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0480', 'Student Occupational Therapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0490', 'Student Orthoptist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0500', 'Student Physiotherapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0510', 'Student Radiographer - Diagnostic', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0520', 'Student Radiographer - Therapeutic', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0530', 'Student Speech & Language Therapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0540', 'Art, Music & Drama Student', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0550', 'Student Psychotherapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R6400', 'Medical Student', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0560', 'Director of Nursing', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0580', 'Nurse Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0610', 'Sister/Charge Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1976', 'Community Team Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0570', 'Nurse Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0600', 'Specialist Nurse Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0620', 'Staff Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0630', 'Enrolled Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0690', 'Community Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0700', 'Community Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1974', 'Community Learning Disabilities Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1975', 'Community Mental Health Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0590', 'Modern Matron', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1972', 'Clinical Team Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0640', 'Midwife - Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0650', 'Midwife - Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0660', 'Midwife - Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0670', 'Midwife - Sister/Charge Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0680', 'Midwife', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0018', 'Audiologist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0750', 'Chiropodist/Podiatrist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0760', 'Chiropodist/Podiatrist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0770', 'Chiropodist/Podiatrist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0780', 'Chiropodist/Podiatrist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0790', 'Dietitian', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0800', 'Dietitian Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0810', 'Dietitian Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0820', 'Dietitian Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0950', 'Occupational Therapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0960', 'Occupational Therapist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0970', 'Occupational Therapist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0980', 'Occupational Therapy Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0990', 'Orthoptist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1000', 'Orthoptist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1010', 'Orthoptist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1020', 'Orthoptist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1110', 'Physiotherapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1120', 'Physiotherapist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1130', 'Physiotherapist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1140', 'Physiotherapist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1070', 'Paramedic', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1080', 'Paramedic Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1090', 'Paramedic Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1100', 'Paramedic Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0003', 'Clinical Application Administrator', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0012', 'Radiographer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0013', 'Student Radiographer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0014', 'Radiologist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0015', 'PACS Administrator', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0016', 'Reporting Radiographer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0017', 'Assistant Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1190', 'Radiographer - Diagnostic', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1200', 'Radiographer - Diagnostic, Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1210', 'Radiographer - Diagnostic, Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1220', 'Radiographer - Diagnostic, Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1230', 'Radiographer - Therapeutic', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1240', 'Radiographer - Therapeutic, Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1250', 'Radiographer - Therapeutic, Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1260', 'Radiographer - Therapeutic, Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1030', 'Orthotist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1040', 'Orthotist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1050', 'Orthotist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1060', 'Orthotist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1150', 'Prosthetist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1160', 'Prosthetist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1170', 'Prosthetist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R1180', 'Prosthetist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0710', 'Art Therapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0720', 'Art Therapist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0730', 'Art Therapist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0740', 'Art Therapist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0830', 'Drama Therapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0840', 'Drama Therapist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0850', 'Drama Therapist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0860', 'Drama Therapist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0870', 'Multi Therapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0880', 'Multi Therapist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0890', 'Multi Therapist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0900', 'Multi Therapist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0910', 'Music Therapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0920', 'Music Therapist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0930', 'Music Therapist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0940', 'Music Therapist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0955', 'Speech & Language Therapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0965', 'Speech & Language Therapist Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0975', 'Speech & Language Therapist Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R0985', 'Speech & Language Therapist Specialist Practitioner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9500', 'Social services senior management', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9505', 'Social services policy and planning', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9510', 'Social Services information manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9515', 'Social work  team manager (children)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9520', 'Senior social worker (children)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9525', 'Social services care manager (children)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9530', 'Social work assistant (children)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9535', 'Child Protection worker', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9540', 'Family Placement worker', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9545', 'Community Worker (children)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9550', 'Occupational therapist', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9555', 'OT assistant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9560', 'Occupational Therapy Team Manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9565', 'Social work team manager (adults)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9570', 'Senior social worker (adults)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9575', 'Social services care manager (adults)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9580', 'Social work assistant (adults)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9585', 'Social work team manager (mental health)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9590', 'Senior social worker (mental health)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9595', 'Social services care manager (mental health)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9600', 'Social work assistant (mental health)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9605', 'Emergency Duty social worker', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9615', 'Social services driver', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9620', 'Home Care organiser', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9625', 'Home Care administrator', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9630', 'Home help', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9635', 'Warden', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9640', 'Meals on wheels organiser', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9645', 'Meals delivery', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9650', 'Day centre manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9655', 'Day centre deputy', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9660', 'Day Centre officer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9665', 'Day centre care staff', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9670', 'Family centre manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9675', 'Family centre deputy', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9680', 'Family centre worker', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9685', 'Nursery manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9690', 'Nursery deputy', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9695', '	Nursery worker', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9700', 'Playgroup leader', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9705', 'Playgroup assistant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9710', 'Residential manager', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9715', 'Residential deputy', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 'R9720', 'Residential worker', 'SYSTEM', '2018-01-01 01:00:00');
/*
R9725	Residential care staff
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9730	Intermediate Care Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9735	Intermediate Care deputy
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9740	Intermediate Care worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9745	Intermediate Care staff
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9750	Social Care SAP User
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9755	Social Care SAP Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1270	Clinical Director
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1280	Optometrist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1290	Pharmacist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1979	Medical Technical Officer - Pharmacy
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5240	OBSOLETE Community Pharmacist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1300	Psychotherapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1310	Clinical Psychologist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1320	Chaplain
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1330	Social Worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1340	Approved Social Worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1350	Youth Worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1360	Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1370	Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0011	Dispenser
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1380	Technician - PS&T
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1390	Osteopath
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1400	Healthcare Scientist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1410	Consultant Healthcare Scientist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1420	Biomedical Scientist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0019	Medical Technical Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1430	Technician - Healthcare Scientists
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1440	Therapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1540	Associate Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1543	Associate Practitioner - Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1547	Associate Practitioner - General Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1560	Helper/Assistant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1600	Cytoscreener
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1570	Dental Surgery Assistant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1450	Health Care Support Worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1580	Medical Laboratory Assistant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1550	Counsellor
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0002	Porter
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1690	Call Operator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1700	Gateway Worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1710	Support, Time, Recovery Worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1480	Healthcare Assistant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1490	Nursery Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1590	Phlebotomist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1460	Social Care Support Worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1470	Home Help
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1520	Technician - Add'l Clinical Services
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1530	Technical Instructor
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1980	Patient Welfare Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1500	Play Therapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1510	Play Specialist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1610	Student Technician
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1620	Trainee Scientist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1630	Trainee Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1640	Nursing Cadet
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1650	Healthcare Cadet
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1660	Pre-reg Pharmacist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1670	Assistant Psychologist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1680	Assistant Psychotherapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0007	ERS SDS Organisation Reporting Analyst
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0008	Demographic Supervisor
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0021	DSA NHS Number Manager (TEMPORARY)
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0022	DSA National Clinical Supervisor (TEMPORARY)
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0023	DSA National Clinical Administrator (TEMPORARY)
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1720	Clerical Worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1730	Receptionist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1740	Secretary
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1750	Personal Assistant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1751	Demographic Administrator (Sensitive Records) Temporary
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1760	Medical Secretary
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1770	Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1971	Map of Medicine Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1973	Community Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1977	ECC/CPA Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1978	Information Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1985	Health Records Clerk
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1995	End Point Approver
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5010	Network Technician
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5040	Desktop Support Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5090	Registration Authority Agent
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5110	Demographic Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5120	ISP Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5130	Technical Codes Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5140	OSS Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5170	End Point Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5175	End Point Viewer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5181	RTS Dashboard User
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5183	RTS BT Dashboard User
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5186	ERS BT Customer SLA User
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5188	ERS BT Supplier SLA User
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5189	ERS LogicaCMG SLA User
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5190	Content Creator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5195	Content Publisher
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5200	OBSOLETE Service Registration Authority Agent
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5210	User Details Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R5250	EBS Administrator
R6010	Appointments Clerk
R6030	Ward Clerk
R6050	Clinical Coder
R6060	Medical Records Clerk
R6080	Waiting List Clerk
R7100	Trainer
R7110	Training Manager
R7120	Directory of Services Coordinator
R9756	ETP System Administrator
R1780	Manager
R1790	Senior Manager
R1910	Chair
R1920	Chief Executive
R1930	Finance Director
R1940	Other Executive Director
R1950	Board Level Director
R1960	Non Executive Director
R1970	Childcare Co-ordinator
R1982	Senior Administrator
R1983	Ward Manager
R1986	Workgroup Administrator
R1987	National RBAC Attribute Administrator
R1988	National RBAC Baseline Policy Administrator
R1989	Complaints Coordinator
R1990	Complaints Investigator
R1996	End Point DNS Administrator
R1997	End Point Spine Administrator
R1998	End Point Super User
R1999	End Point Service Administrator
R5000	Network Administrator
R5003	Cluster System Administrator
R5007	System Administrator
R5020	Helpdesk Administrator
R5060	Security Policy Controller
R5070	Senior Security Manager
R5072	Root Registration Authority Manager
R5077	OBSOLETE SHA Registration Authority
R5080	Registration Authority Manager
R5100	Audit Manager
R5105	Caldicott Guardian
R5180	NASP Service Manager
R5182	ERS ETP System Administrator
R5184	ERS Spine SLA Manager
R5185	ERS BT Customer SLA Manager
R5187	ERS BT Supplier SLA Manager
R5191	ERS Support Administrator
R5192	ECS Administrator
R5300	Portal Administrator
R5310	LiquidLogic Administrator
R5320	i.EPR Administrator
R5330	Synergy Administrator
R5340	SystmOne Administrator
R6020	Outpatient Manager
R6040	Bed Manager
R6070	Medical Records Manager
R6090	Waiting List Manager
R6100	Mental Health Act Administrator
R6160	Ad-hoc Report Manager
R7130	PAS Manager
R1800	Technician - Admin & Clerical
R1810	Accountant
R1820	Librarian
R1830	Interpreter
R1840	Analyst
R1850	Adviser
R1860	Researcher
R1870	Control Assistant
R1880	Architect
R1890	Lawyer
R1900	Surveyor
R5030	Helpdesk Technician
R5050	Desktop Support Technician
R5150	System Worker
R5400	Availability  Monitor
R8000	Clinical Practitioner Access Role
R8001	Nurse Access Role
R8002	Nurse Manager Access Role
R8003	Health Professional Access Role
R8004	Healthcare Student Access Role
R8016	Midwife Access Role
R8017	Midwife Manager Access Role
R8024	Bank Access Role
R8005	Biomedical Scientist Access Role
R8006	Medical Secretary Access Role
R8007	Clinical Coder Access Role
R8008	Admin/Clinical Support Access Role
R8015	Systems Support Access Role
R0001	Privacy Officer
R8009	Receptionist Access Role
R8010	Clerical Access Role
R8011	Clerical Manager Access Role
R8012	Information Officer Access Role
R8013	Health Records Manager Access Role
R8014	Social Worker Access Role
R9001	OBSOLETE EBS GP (Referrer)
R9002	OBSOLETE EBS ClinicalAdmin (Referrer)
R9003	OBSOLETE EBS Admin (Referrer)
R9004	OBSOLETE EBS Admin (Trust)
R9005	OBSOLETE EBS Clinician (Trust)
R9006	OBSOLETE EBS Clinician (BMS)
R9007	OBSOLETE EBS Admin (BMS)
R9008	OBSOLETE EBS Admin (Helpdesk)
R9009	OBSOLETE EBS Commissioner
R9010	OBSOLETE EBS GuidanceDefiner
R9011	OBSOLETE EBS ServiceDefiner
R9012	OBSOLETE EBS Information Analyst
*/
