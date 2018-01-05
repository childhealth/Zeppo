
/*
 * SQL to create ConditionsDiagnoses table.
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
INSERT INTO Codes VALUES (268, 12, '2', 'Varicella', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (269, 12, '3', 'Group B streptococcus', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (270, 12, '4', 'Asymptomatic bacteriuria', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (271, 12, '5', 'Toxoplasmosis', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (272, 12, '8', 'Tuberculosis', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (273, 12, '9', 'Cytomegalovirus', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (274, 12, '10', 'Parvovirus', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (275, 12, '11', 'Malaria', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (276, 12, '13', 'Cardiac Disease', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (277, 12, '14', 'Renal Disease', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (278, 12, '15', 'Mental Health Disorder', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (279, 12, '16', 'Thromboembolic disorder', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (280, 12, '17', 'Haematological disorder', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (281, 12, '18', 'Central Nervous System (CNS) disorder', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (282, 12, '19', 'Diabetes', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (283, 12, '20', 'Autoimmune disease', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (284, 12, '21', 'Cancer', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (285, 12, '22', 'Infectious hepatitis A', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (286, 12, '23', 'Hepatitis B', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (287, 12, '24', 'Hepatitis C', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (288, 12, '25', 'Endocrine Disorder', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (289, 12, '26', 'Respiratory disease', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (290, 12, '27', 'Gastrointestinal disorder', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (291, 12, '28', 'Musculoskeletal disorder', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (292, 12, '29', 'Gynaecological problems', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (293, 12, '100', 'Systemic Lupus Erythematosus (SLE)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (294, 12, '101', 'Mother taking opioids', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (295, 12, '102', 'Thyrotoxicosis', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (296, 12, '103', 'Hypothyroidism', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (297, 12, '104', 'Anti - D positive', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (298, 12, '105', 'Immune thrombocytopenia', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (299, 12, '106', 'Vitamin D deficiency/osteoporosis', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (300, 12, '107', 'Myotonic dystrophy', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (301, 12, '108', 'Achondroplasia', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (302, 12, '109', 'Cytomegalovirus (CMV)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (303, 12, '110', 'Chicken Pox', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (304, 12, '111', 'HIV', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (305, 12, '112', 'Anticonvulsant therapy', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (306, 12, '113', 'Alcohol abuse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (307, 12, '114', 'Myasthenia Gravis', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes VALUES (308, 13, '1', 'Problems and Issue', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (309, 13, '2', 'Diagnosis', 'SYSTEM', '2018-01-01 01:00:00');
