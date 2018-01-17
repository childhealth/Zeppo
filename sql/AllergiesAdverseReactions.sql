/*
 * SQL to create AllergiesAdverseReactions table.
 * Stores allergies and adverse reactions associated with maternity records.
 * Assumes table does not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 04-01-2018: First version
 */

/* Create table
 */
CREATE TABLE AllergiesAdverseReactions (
 AllergyAdverseReactionID INTEGER NOT NULL,
 MaternityRecordID INTEGER NOT NULL,
 
 RecordedDate DATE NOT NULL,
 CausativeAgent TEXT NOT NULL,
 ReactionDescription TEXT,
 ReactionType VARCHAR(5), -- Coded (1, 'AllergiesAdverseReactions', 'ReactionType')
 Certainty VARCHAR(5),    -- Coded (2, 'AllergiesAdverseReactions', 'Certainty')
 Severity VARCHAR(5),     -- Coded (3, 'AllergiesAdverseReactions', 'Severity')
 Evidence TEXT,
 RecurrenceProbability TEXT,
 FirstExperienced TEXT,
 
 UStamp VARCHAR(20) NOT NULL,
 DTStamp TIMESTAMP NOT NULL,
 
 CONSTRAINT PK_AllergiesAdverseReactions PRIMARY KEY (AllergyAdverseReactionID),
 CONSTRAINT FK_AllergiesAdverseReactions_MaternityRecords FOREIGN KEY (MaternityRecordID) REFERENCES MaternityRecords(MaternityRecordID)
);

/* Insert AllergiesAdverseReactions related codelists
 */
INSERT INTO CodeLists VALUES (1, 'AllergiesAdverseReactions', 'ReactionType', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (2, 'AllergiesAdverseReactions', 'Certainty', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO CodeLists VALUES (3, 'AllergiesAdverseReactions', 'Severity', 'SYSTEM', '2018-01-01 01:00:00');

/* Insert AllergiesAdverseReactions related codes
 */
INSERT INTO Codes VALUES (1, '0', 'Not known', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (1, '1', 'Allergy', 'SYSTEM', '2018-01-01 01:00:00'); 
INSERT INTO Codes VALUES (1, '2', 'Intolerance', 'SYSTEM', '2018-01-01 01:00:00'); 
INSERT INTO Codes VALUES (1, '3', 'Other non-drug allergy', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (1, '4', 'Adverse reaction', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes VALUES (2, '1', 'Unlikely', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (2, '2', 'Likely', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (2, '3', 'Certain', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (2, '4', 'Confirmed by challenge testing', 'SYSTEM', '2018-01-01 01:00:00');

INSERT INTO Codes VALUES (3, '0', 'Unknown severity', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (3, '1', 'Mild', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (3, '2', 'Moderate', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (3, '3', 'Severe', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (3, '4', 'Life threatening', 'SYSTEM', '2018-01-01 01:00:00');
INSERT INTO Codes VALUES (3, '5', 'Fatal', 'SYSTEM', '2018-01-01 01:00:00');
