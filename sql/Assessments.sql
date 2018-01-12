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

R0010	Medical Director
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0020	Clinical Director - Medical
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0210	Director of Public Health
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0030	Professor
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0040	Senior Lecturer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0050	Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0060	Special salary scale in Public Health Medicine
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0070	Associate Specialist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0080	Staff Grade
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0090	Hospital Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0100	Clinical Assistant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0110	Specialist Registrar
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0120	Senior Registrar (Closed )
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0130	Registrar (Closed)
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0140	Senior House Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0150	House Officer - Pre Registration
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0160	House Officer - Post Registration
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0170	Trust Grade Doctor - House Officer level
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0180	Trust Grade Doctor - SHO level
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0190	Trust Grade Doctor - Specialist Registrar level
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0200	Trust Grade Doctor - Career Grade level
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0260	General Medical Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0270	Salaried General Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1981	Psychiatrist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1984	Health Records Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R6200	GP Registrar
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R6300	Sessional GP
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R7140	ODP
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R7150	SODP
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9100	A & E Staff Nurse (Temporary)  London Cluster Only
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9101	A & E Manager (Temporary) London Cluster Only
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9102	A & E Doctor  (Temporary) London Cluster only
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9103	A & E  Student (Temporary) London Cluster Only
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R9104	A & E  Clerk (Temporary) London Cluster Only
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0215	Asst. Clinical Medical Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0220	Clinical Medical Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0230	Senior Clinical Medical Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0240	Other Community Health Service
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0243	Other Community Health Service - Social Care Worker
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0247	Other Community Health Service - Admin Clerk
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0055	Dental surgeon acting as Hospital Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0250	General Dental Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0280	Regional Dental Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0290	Dental Clinical Director - Dental
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0295	Dental Assistant Clinical Director
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0300	Dental Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0310	Senior Dental Officer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0320	Salaried Dental Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0006	Student Community Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0330	Student Nurse - Adult Branch
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0340	Student Nurse - Child Branch
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0350	Student Nurse - Mental Health Branch
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0360	Student Nurse - Learning Disabilities Branch
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0370	Student Midwife
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0380	Student Health Visitor
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0390	Student District Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0400	Student School Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0410	Student Practice Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0420	Student Occupational Health Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0430	Student Community Paediatric Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0440	Student Community Mental Health Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0450	Student Community Learning Disabilities Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0460	Student Chiropodist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0470	Student Dietitian
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0480	Student Occupational Therapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0490	Student Orthoptist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0500	Student Physiotherapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0510	Student Radiographer - Diagnostic
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0520	Student Radiographer - Therapeutic
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0530	Student Speech & Language Therapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0540	Art, Music & Drama Student
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0550	Student Psychotherapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R6400	Medical Student
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0560	Director of Nursing
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0580	Nurse Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0610	Sister/Charge Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1976	Community Team Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0570	Nurse Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0600	Specialist Nurse Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0620	Staff Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0630	Enrolled Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0690	Community Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0700	Community Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1974	Community Learning Disabilities Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1975	Community Mental Health Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0590	Modern Matron
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1972	Clinical Team Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0640	Midwife - Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0650	Midwife - Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0660	Midwife - Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0670	Midwife - Sister/Charge Nurse
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0680	Midwife
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0018	Audiologist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0750	Chiropodist/Podiatrist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0760	Chiropodist/Podiatrist Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0770	Chiropodist/Podiatrist Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0780	Chiropodist/Podiatrist Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0790	Dietitian
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0800	Dietitian Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0810	Dietitian Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0820	Dietitian Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0950	Occupational Therapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0960	Occupational Therapist Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0970	Occupational Therapist Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0980	Occupational Therapy Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0990	Orthoptist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1000	Orthoptist Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1010	Orthoptist Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1020	Orthoptist Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1110	Physiotherapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1120	Physiotherapist Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1130	Physiotherapist Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1140	Physiotherapist Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1070	Paramedic
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1080	Paramedic Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1090	Paramedic Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1100	Paramedic Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0003	Clinical Application Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0012	Radiographer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0013	Student Radiographer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0014	Radiologist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0015	PACS Administrator
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0016	Reporting Radiographer
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0017	Assistant Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1190	Radiographer - Diagnostic
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1200	Radiographer - Diagnostic, Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1210	Radiographer - Diagnostic, Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1220	Radiographer - Diagnostic, Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1230	Radiographer - Therapeutic
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1240	Radiographer - Therapeutic, Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1250	Radiographer - Therapeutic, Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1260	Radiographer - Therapeutic, Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1030	Orthotist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1040	Orthotist Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1050	Orthotist Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1060	Orthotist Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1150	Prosthetist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1160	Prosthetist Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1170	Prosthetist Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R1180	Prosthetist Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0710	Art Therapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0720	Art Therapist Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0730	Art Therapist Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0740	Art Therapist Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0830	Drama Therapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0840	Drama Therapist Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0850	Drama Therapist Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0860	Drama Therapist Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0870	Multi Therapist
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0880	Multi Therapist Consultant
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0890	Multi Therapist Manager
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0900	Multi Therapist Specialist Practitioner
INSERT INTO Codes VALUES (100, '0', 'No', 'SYSTEM', '2018-01-01 01:00:00');
R0910	Music Therapist
R0920	Music Therapist Consultant
R0930	Music Therapist Manager
R0940	Music Therapist Specialist Practitioner
R0955	Speech & Language Therapist
R0965	Speech & Language Therapist Consultant
R0975	Speech & Language Therapist Manager
R0985	Speech & Language Therapist Specialist Practitioner
R9500	Social services senior management
R9505	Social services policy and planning
R9510	Social Services information manager
R9515	Social work  team manager (children)
R9520	Senior social worker (children)
R9525	Social services care manager (children)
R9530	Social work assistant (children)
R9535	Child Protection worker
R9540	Family Placement worker
R9545	Community Worker (children)
R9550	Occupational therapist
R9555	OT assistant
R9560	Occupational Therapy Team Manager
R9565	Social work team manager (adults)
R9570	Senior social worker (adults)
R9575	Social services care manager (adults)
R9580	Social work assistant (adults)
R9585	Social work team manager (mental health)
R9590	Senior social worker (mental health)
R9595	Social services care manager (mental health)
R9600	Social work assistant (mental health)
R9605	Emergency Duty social worker
R9615	Social services driver
R9620	Home Care organiser
R9625	Home Care administrator
R9630	Home help
R9635	Warden
R9640	Meals on wheels organiser
R9645	Meals delivery
R9650	Day centre manager
R9655	Day centre deputy
R9660	Day Centre officer
R9665	Day centre care staff
R9670	Family centre manager
R9675	Family centre deputy
R9680	Family centre worker
R9685	Nursery manager
R9690	Nursery deputy
R9695	Nursery worker
R9700	Playgroup leader
R9705	Playgroup assistant
R9710	Residential manager
R9715	Residential deputy
R9720	Residential worker
R9725	Residential care staff
R9730	Intermediate Care Manager
R9735	Intermediate Care deputy
R9740	Intermediate Care worker
R9745	Intermediate Care staff
R9750	Social Care SAP User
R9755	Social Care SAP Manager
R1270	Clinical Director
R1280	Optometrist
R1290	Pharmacist
R1979	Medical Technical Officer - Pharmacy
R5240	OBSOLETE Community Pharmacist
R1300	Psychotherapist
R1310	Clinical Psychologist
R1320	Chaplain
R1330	Social Worker
R1340	Approved Social Worker
R1350	Youth Worker
R1360	Specialist Practitioner
R1370	Practitioner
R0011	Dispenser
R1380	Technician - PS&T
R1390	Osteopath
R1400	Healthcare Scientist
R1410	Consultant Healthcare Scientist
R1420	Biomedical Scientist
R0019	Medical Technical Officer
R1430	Technician - Healthcare Scientists
R1440	Therapist
R1540	Associate Practitioner
R1543	Associate Practitioner - Nurse
R1547	Associate Practitioner - General Practitioner
R1560	Helper/Assistant
R1600	Cytoscreener
R1570	Dental Surgery Assistant
R1450	Health Care Support Worker
R1580	Medical Laboratory Assistant
R1550	Counsellor
R0002	Porter
R1690	Call Operator
R1700	Gateway Worker
R1710	Support, Time, Recovery Worker
R1480	Healthcare Assistant
R1490	Nursery Nurse
R1590	Phlebotomist
R1460	Social Care Support Worker
R1470	Home Help
R1520	Technician - Add'l Clinical Services
R1530	Technical Instructor
R1980	Patient Welfare Officer
R1500	Play Therapist
R1510	Play Specialist
R1610	Student Technician
R1620	Trainee Scientist
R1630	Trainee Practitioner
R1640	Nursing Cadet
R1650	Healthcare Cadet
R1660	Pre-reg Pharmacist
R1670	Assistant Psychologist
R1680	Assistant Psychotherapist
R0007	ERS SDS Organisation Reporting Analyst
R0008	Demographic Supervisor
R0021	DSA NHS Number Manager (TEMPORARY)
R0022	DSA National Clinical Supervisor (TEMPORARY)
R0023	DSA National Clinical Administrator (TEMPORARY)
R1720	Clerical Worker
R1730	Receptionist
R1740	Secretary
R1750	Personal Assistant
R1751	Demographic Administrator (Sensitive Records) Temporary
R1760	Medical Secretary
R1770	Officer
R1971	Map of Medicine Administrator
R1973	Community Administrator
R1977	ECC/CPA Administrator
R1978	Information Officer
R1985	Health Records Clerk
R1995	End Point Approver
R5010	Network Technician
R5040	Desktop Support Administrator
R5090	Registration Authority Agent
R5110	Demographic Administrator
R5120	ISP Administrator
R5130	Technical Codes Administrator
R5140	OSS Administrator
R5170	End Point Administrator
R5175	End Point Viewer
R5181	RTS Dashboard User
R5183	RTS BT Dashboard User
R5186	ERS BT Customer SLA User
R5188	ERS BT Supplier SLA User
R5189	ERS LogicaCMG SLA User
R5190	Content Creator
R5195	Content Publisher
R5200	OBSOLETE Service Registration Authority Agent
R5210	User Details Administrator
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
