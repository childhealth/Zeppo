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

/*
29	Nurse or Midwife Contact
30	Out-Patient Attendance Consultant
38	Theatre Case
39	Ward Attendance
41	Improving Access to Psychological Therapies Contact
42	NHS Health Check Assessment
43	Antenatal Booking Appointment
44	Pregnancy First Contact
45	Nutritional Assessment
46	HIV Clinic Attendance
47	Multi-Disciplinary Consultation (National Tariff Payment System)
48	Multi-Professional Consultation (National Tariff Payment System)
49	Two Year Neonatal Outcomes Assessment
50	Radiotherapy Attendance
51	Holistic Needs Assessment
52	Emergency Care Attendance
*/
