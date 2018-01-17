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
 
 DateAttended DATE NOT NULL,
 LocationAttended TEXT NOT NULL,
 -- PerformerID ???
 PerformerName TEXT NOT NULL,
 PerformerJobRole TEXT NOT NULL,        -- Should be coded
 Indication TEXT;
 ContactType VARCHAR(2),                -- Coded (6, 'Attendances', 'ContactType')
 ConsultationMethod VARCHAR(2),         -- Coded (7, 'Attendances', 'ConsultationMethod')
 Speciality VARCHAR(3),                 -- Coded (8, '*', 'Speciality')
 Service VARCHAR(2),                    -- Coded (9, 'Attendances', 'Service')
 -- Care professionals present 0..*
 PersonAccompanyingPatient VARCHAR(10), -- Coded (10, 'Attendances', 'PersonAccompanyingPatient') ??? 0..*
 Outcome VARCHAR(5),                    -- Coded (11, 'Attendances', 'Outcome')
 
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 
 CONSTRAINT PK_Attendances PRIMARY KEY (AttendanceID),
 CONSTRAINT FK_Attendances_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);

/* Insert Attendances related codelists
 */
INSERT INTO CodeLists VALUES (6, 'Attendances', 'ContactType', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (7, 'Attendances', 'ConsultationMethod', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (8, '*', 'Speciality', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (9, 'Attendances', 'Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (10, 'Attendances', 'PersonAccompanyingPatient', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (11, 'Attendances', 'Outcome', 'SYSTEM', '2018-01-01 01:00:00');

/* Insert Attendances related codes
 */
INSERT INTO Codes VALUES (62, 6, '1', 'Accident and Emergency Attendance', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (63, 6, '4', 'Cancer Clinical Status Assessment', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (64, 6, '5', 'Care Programme Approach Review', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (65, 6, '6', 'Clinic Attendance Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (66, 6, '8', 'Clinic Attendance Midwife', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (67, 6, '9', 'Clinic Attendance Non-Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (68, 6, '10', 'Clinic Attendance Nurse', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (69, 6, '14', 'Domiciliary Consultation', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (70, 6, '22', 'Sexual and Reproductive Health Domiciliary Visit', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (71, 6, '23', 'Genitourinary Consultant Clinic Attendance', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (72, 6, '27', 'Maternity Domiciliary Visit', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (73, 6, '29', 'Nurse or Midwife Contact', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (74, 6, '30', 'Out-Patient Attendance Consultant', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (75, 6, '38', 'Theatre Case', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (76, 6, '39', 'Ward Attendance', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (77, 6, '41', 'Improving Access to Psychological Therapies Contact', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (78, 6, '42', 'NHS Health Check Assessment', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (79, 6, '43', 'Antenatal Booking Appointment', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (80, 6, '44', 'Pregnancy First Contact', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (81, 6, '45', 'Nutritional Assessment', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (82, 6, '46', 'HIV Clinic Attendance', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (83, 6, '47', 'Multi-Disciplinary Consultation (National Tariff Payment System)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (84, 6, '48', 'Multi-Professional Consultation (National Tariff Payment System)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (85, 6, '49', 'Two Year Neonatal Outcomes Assessment', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (86, 6, '50', 'Radiotherapy Attendance', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (87, 6, '51', 'Holistic Needs Assessment', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (88, 6, '52', 'Emergency Care Attendance', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes VALUES (89, 7, '1', 'Face to face communication', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (90, 7, '2', 'Telephone', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (91, 7, '3', 'Telemedicine web camera', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (92, 7, '4', 'Talk type for a PERSON unable to speak', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (93, 7, '5', 'Email **', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (94, 7, '6', 'Short Message Service (SMS) - Text Messaging **', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (95, 7, '98', 'Other *', 'SYSTEM', '2018-01-01 01:00:00');

-- Surgical Specialties 	
INSERT INTO Codes VALUES (96, 8, '100', 'GENERAL SURGERY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (97, 8, '101', 'UROLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (98, 8, '110', 'TRAUMA & ORTHOPAEDICS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (99, 8, '120', 'ENT', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (100, 8, '130', 'OPHTHALMOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (101, 8, '140', 'ORAL SURGERY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (102, 8, '141', 'RESTORATIVE DENTISTRY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (103, 8, '142', 'PAEDIATRIC DENTISTRY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (104, 8, '143', 'ORTHODONTICS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (105, 8, '145', 'ORAL & MAXILLO FACIAL SURGERY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (106, 8, '146', 'ENDODONTICS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (107, 8, '147', 'PERIODONTICS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (108, 8, '148', 'PROSTHODONTICS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (109, 8, '149', 'SURGICAL DENTISTRY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (110, 8, '150', 'NEUROSURGERY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (111, 8, '160', 'PLASTIC SURGERY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (112, 8, '170', 'CARDIOTHORACIC SURGERY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (113, 8, '171', 'PAEDIATRIC SURGERY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (114, 8, '180', 'ACCIDENT & EMERGENCY', 'SYSTEM', '2018-01-01 01:00:00');
-- Medical Specialties 	
INSERT INTO Codes VALUES (115, 8, '190', 'ANAESTHETICS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (116, 8, '192', 'CRITICAL CARE MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (117, 8, '300', 'GENERAL MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (118, 8, '301', 'GASTROENTEROLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (119, 8, '302', 'ENDOCRINOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (120, 8, '303', 'CLINICAL HAEMATOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (121, 8, '304', 'CLINICAL PHYSIOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (122, 8, '305', 'CLINICAL PHARMACOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (123, 8, '310', 'AUDIOLOGICAL MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (124, 8, '311', 'CLINICAL GENETICS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (125, 8, '313', 'CLINICAL IMMUNOLOGY and ALLERGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (126, 8, '314', 'REHABILITATION', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (127, 8, '315', 'PALLIATIVE MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (128, 8, '320', 'CARDIOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (129, 8, '321', 'PAEDIATRIC CARDIOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (130, 8, '325', 'SPORT AND EXERCISE MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (131, 8, '326', 'ACUTE INTERNAL MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (132, 8, '330', 'DERMATOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (133, 8, '340', 'RESPIRATORY MEDICINE (also known as thoracic medicine)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (134, 8, '350', 'INFECTIOUS DISEASES', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (135, 8, '352', 'TROPICAL MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (136, 8, '360', 'GENITOURINARY MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (137, 8, '361', 'NEPHROLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (138, 8, '370', 'MEDICAL ONCOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (139, 8, '371', 'NUCLEAR MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (140, 8, '400', 'NEUROLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (141, 8, '401', 'CLINICAL NEURO-PHYSIOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (142, 8, '410', 'RHEUMATOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (143, 8, '420', 'PAEDIATRICS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (144, 8, '421', 'PAEDIATRIC NEUROLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (145, 8, '430', 'GERIATRIC MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (146, 8, '450', 'DENTAL MEDICINE SPECIALTIES', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (147, 8, '451', 'SPECIAL CARE DENTISTRY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (148, 8, '460', 'MEDICAL OPHTHALMOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (149, 8, '500', 'OBSTETRICS and GYNAECOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (150, 8, '501', 'OBSTETRICS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (151, 8, '502', 'GYNAECOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (152, 8, '504', 'COMMUNITY SEXUAL AND REPRODUCTIVE HEALTH', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (153, 8, '560', 'MIDWIFE EPISODE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (154, 8, '600', 'GENERAL MEDICAL PRACTICE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (155, 8, '601', 'GENERAL DENTAL PRACTICE', 'SYSTEM', '2018-01-01 01:00:00');
-- Psychiatry 	
INSERT INTO Codes VALUES (156, 8, '700', 'LEARNING DISABILITY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (157, 8, '710', 'ADULT MENTAL ILLNESS', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (158, 8, '711', 'CHILD and ADOLESCENT PSYCHIATRY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (159, 8, '712', 'FORENSIC PSYCHIATRY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (160, 8, '713', 'PSYCHOTHERAPY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (161, 8, '715', 'OLD AGE PSYCHIATRY', 'SYSTEM', '2018-01-01 01:00:00');
-- Radiology 	
INSERT INTO Codes VALUES (162, 8, '800', 'CLINICAL ONCOLOGY (previously RADIOTHERAPY)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (163, 8, '810', 'RADIOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
-- Pathology 	
INSERT INTO Codes VALUES (164, 8, '820', 'GENERAL PATHOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (165, 8, '821', 'BLOOD TRANSFUSION', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (166, 8, '822', 'CHEMICAL PATHOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (167, 8, '823', 'HAEMATOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (168, 8, '824', 'HISTOPATHOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (169, 8, '830', 'IMMUNOPATHOLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (170, 8, '831', 'MEDICAL MICROBIOLOGY AND VIROLOGY', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (171, 8, '833', '	MEDICAL MICROBIOLOGY (also known as MICROBIOLOGY AND BACTERIOLOGY)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (172, 8, '834', 'MEDICAL VIROLOGY', 'SYSTEM', '2018-01-01 01:00:00');
-- Other 	
INSERT INTO Codes VALUES (173, 8, '900', 'COMMUNITY MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (174, 8, '901', 'OCCUPATIONAL MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (175, 8, '902', 'COMMUNITY HEALTH SERVICES DENTAL', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (176, 8, '903', 'PUBLIC HEALTH MEDICINE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (177, 8, '904', 'PUBLIC HEALTH DENTAL', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (178, 8, '950', 'NURSING EPISODE', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (179, 8, '960', 'ALLIED HEALTH PROFESSIONAL EPISODE', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes VALUES (180, 9, '01', 'Appliances Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (181, 9, '02', 'Arts Therapy Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (182, 9, '03', 'Cancer Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (183, 9, '04', 'Cardiac Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (184, 9, '05', 'Community Dental Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (185, 9, '06', 'Community Paediatrics Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (186, 9, '07', 'Continence Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (187, 9, '09', 'Counselling Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (188, 9, '10', 'Dermatology Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (189, 9, '11', 'Diabetes Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (190, 9, '12', 'District Nursing Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (191, 9, '13', 'Ear Nose and Throat Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (192, 9, '14', 'End of Life Care Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (193, 9, '15', 'Gastrointestinal Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (194, 9, '16', 'Health Visiting Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (195, 9, '17', 'Hearing Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (196, 9, '18', 'Intermediate Care Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (197, 9, '19', 'Long Term Conditions Case Management Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (198, 9, '20', 'Musculoskeletal Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (199, 9, '21', 'Neurology Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (200, 9, '22', 'Nutrition and Dietetics Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (201, 9, '23', 'Occupational Therapy Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (202, 9, '24', 'Orthoptist Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (203, 9, '25', 'Pain Management Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (204, 9, '26', 'Physiotherapy Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (205, 9, '27', 'Podiatry Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (206, 9, '28', 'Public Health and Lifestyle Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (207, 9, '29', 'Rehabilitation Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (208, 9, '30', 'Respiratory Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (209, 9, '31', 'Rheumatology Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (210, 9, '32', 'School Nursing Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (211, 9, '33', 'Speech and Language Therapy Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (212, 9, '34', 'Vulnerable Children''s Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (213, 9, '35', 'Vulnerable Adult''s Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (214, 9, '36', 'Respite Care Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (215, 9, '37', 'Clinical Psychology Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (216, 9, '38', 'Children''s Community Nursing Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (217, 9, '39', 'Diagnostic Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (218, 9, '40', 'Treatment Room Nursing Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (219, 9, '41', 'Haematology Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (220, 9, '42', 'Phlebotomy Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (221, 9, '43', 'Tissue Viability Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (222, 9, '44', 'Family Support Service', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (223, 9, '45', 'Integrated Multi-Disciplinary Team (jointly commissioned)', 'SYSTEM', '2018-01-01 01:00:00');
-- Safeguarding Team (for example FGM, Domestic Abuse)
-- Social Services (e.g. CAF Form commenced)

INSERT INTO Codes VALUES (224, 10, 'EXT', 'Extended family member', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (225, 10, 'AUNT', 'Aunt', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (226, 10, 'COUSN', 'Cousin', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (227, 10, 'GGRPRN', 'Great grandparent', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (228, 10, 'GGRFTH', 'Great grandfather', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (229, 10, 'GGRMTH', 'Great grandmother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (230, 10, 'GRPRN', 'Grandparent', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (231, 10, 'GRFTH', 'Grandfather', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (232, 10, 'GRMTH', 'Grandmother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (233, 10, 'NEPHEW', 'Nephew', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (234, 10, 'NIECE', 'Niece', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (235, 10, 'UNCLE', 'Uncle', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (236, 10, 'PRN', 'Parent', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (237, 10, 'ADOPTF', 'Adoptive father', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (238, 10, 'ADOPTM', 'Adoptive mother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (239, 10, 'FTH', 'Father', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (240, 10, 'FTHFOST', 'Foster father', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (241, 10, 'NFTH', 'Natural father', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (242, 10, 'STPFTH', 'Stepfather', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (243, 10, 'MTH', 'Mother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (244, 10, 'MTHFOST', 'Foster mother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (245, 10, 'NMTH', 'Natural mother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (246, 10, 'STPMTH', 'Stepmother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (247, 10, 'SIB', 'Sibling', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (248, 10, 'BRO', 'Brother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (249, 10, 'HBRO', 'Half-brother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (250, 10, 'STPBRO', 'Stepbrother', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (251, 10, 'HSIS', 'Half-sister', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (252, 10, 'NSIS', 'Natural sister', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (253, 10, 'SIS', 'Sister', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (254, 10, 'STPSIS', 'Stepsister', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (255, 10, 'SIGOTHR', 'Significant other', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (256, 10, 'FRND', 'Unrelated friend', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (257, 10, 'NBOR', 'Neighbour', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (258, 10, 'ONESELF', 'Self', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (259, 10, 'ROOM', 'Roommate', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (260, 10, 'GUARDIAN', 'Guardian', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (261, 10, 'FRIEND', 'Friend', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (262, 10, 'PARTNER', 'Partner', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (263, 10, 'CAREGIVER', 'Caregiver', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes VALUES (264, 11, '1', 'Discharged from CONSULTANT''s care (last attendance)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (265, 11, '2', 'Another APPOINTMENT given', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (266, 11, '3', 'APPOINTMENT to be made at a later date', 'SYSTEM', '2018-01-01 01:00:00');
