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
INSERT INTO Codes VALUES (268, 14, '1', 'Rubella', 'SYSTEM', '2018-01-01 01:00:00');
1	PATIENT discharged on clinical advice or with clinical consent
2	PATIENT discharged him/herself or was discharged by a relative or advocate
3	PATIENT discharged by mental health review tribunal, Home Secretary or Court
4	PATIENT died
5	Stillbirth
6	PATIENT discharged him/herself *
7	PATIENT discharged by a relative or advocate *


19	Usual place of residence unless listed below, for example, a private dwelling whether owner occupied or owned by Local Authority, housing association or other landlord. This includes wardened accommodation but not residential accommodation where health care is provided. It also includes PATIENTS with no fixed abode.
29	Temporary place of residence when usually resident elsewhere (includes hotel, residential Educational Establishment)
30	Repatriation from high security psychiatric accommodation in an NHS Hospital Provider (NHS Trust or NHS Foundation Trust)
37	Court
38	Penal establishment or police station
48	High Security Psychiatric Hospital, Scotland
49	NHS other Hospital Provider - high security psychiatric accommodation
50	NHS other Hospital Provider - medium secure unit
51	NHS other Hospital Provider - WARD for general PATIENTS or the younger physically disabled
52	NHS other Hospital Provider - WARD for maternity PATIENTS or Neonates 
53	NHS other Hospital Provider - WARD for PATIENTS who are mentally ill or have Learning Disabilities
54	NHS run Care Home 
65	Local Authority residential accommodation i.e. where care is provided
66	Local Authority foster care
79	Not applicable - PATIENT died or still birth
84	Non-NHS run hospital - medium secure unit
85	Non-NHS (other than Local Authority) run Care Home 
87	Non-NHS run hospital
88	Non-NHS (other than Local Authority) run Hospice
