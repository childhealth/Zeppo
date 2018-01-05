/*
 * SQL to create Discharges table.
 * Stores discharge details associated with maternity records.
 * Assumes table does not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 05-01-2018: First version
 */

/* Create table
 */
CREATE TABLE Discharges (
 DischargeID INTEGER NOT NULL,
 MaternityRecordID INTEGER NOT NULL,
 
 DateTime TIMESTAMP NOT NULL;
 Location TEXT NOT NULL,
 Consultant TEXT,
 Speciality VARCHAR(3),  -- Coded ('*', 'Speciality')
 Method VARCHAR(2),      -- Coded
 Destination VARCHAR(2), -- Coded
 Address TEXT,
 
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 
 CONSTRAINT PK_Discharges PRIMARY KEY (DischargeID),
 CONSTRAINT FK_Discharges_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);

/* Insert Discharges related codelists
 */
INSERT INTO CodeLists VALUES (14, 'Discharges', 'Method', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (15, 'Discharges', 'Destination', 'SYSTEM', '2018-01-01 01:00:00');

/* Insert Discharges related codes
 */
INSERT INTO Codes VALUES (310, 14, '1', 'PATIENT discharged on clinical advice or with clinical consent', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (311, 14, '2', 'PATIENT discharged him/herself or was discharged by a relative or advocate', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (312, 14, '3', 'PATIENT discharged by mental health review tribunal, Home Secretary or Court', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (313, 14, '4', 'PATIENT died', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (314, 14, '5', 'Stillbirth', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (315, 14, '6', 'PATIENT discharged him/herself *', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (316, 14, '7', 'PATIENT discharged by a relative or advocate *', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes VALUES (317, 15, '19', 'Usual place of residence unless listed below, for example, a private dwelling whether owner occupied or owned by Local Authority, housing association or other landlord. This includes wardened accommodation but not residential accommodation where health care is provided. It also includes PATIENTS with no fixed abode.', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (318, 15, '29', 'Temporary place of residence when usually resident elsewhere (includes hotel, residential Educational Establishment)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (319, 15, '30', 'Repatriation from high security psychiatric accommodation in an NHS Hospital Provider (NHS Trust or NHS Foundation Trust)', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (320, 15, '37', 'Court', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (321, 15, '38', 'Penal establishment or police station', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (322, 15, '40', 'High Security Psychiatric Hospital, Scotland', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (323, 15, '49', 'NHS other Hospital Provider - high security psychiatric accommodation', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (324, 15, '50', 'NHS other Hospital Provider - medium secure unit', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (325, 15, '51', 'NHS other Hospital Provider - WARD for general PATIENTS or the younger physically disabled', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (326, 15, '52', 'NHS other Hospital Provider - WARD for maternity PATIENTS or Neonates', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (327, 15, '53', 'NHS other Hospital Provider - WARD for PATIENTS who are mentally ill or have Learning Disabilities', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (328, 15, '54', 'NHS run Care Home', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (329, 15, '65', 'Local Authority residential accommodation i.e. where care is provided', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (330, 15, '66', 'Local Authority foster care', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (331, 15, '79', 'Not applicable - PATIENT died or still birth', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (332, 15, '84', 'Non-NHS run hospital - medium secure unit', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (333, 15, '85', 'Non-NHS (other than Local Authority) run Care Home ', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (334, 15, '87', 'Non-NHS run hospital', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (335, 15, '88', 'Non-NHS (other than Local Authority) run Hospice', 'SYSTEM', '2018-01-01 01:00:00');
