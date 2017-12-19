/*
 * SQL to create maternity tables.
 * Assumes tables do not already exist.
 * Based on Maternity Data Model Version 0.6
 *
 * MAK 19-12-2017: First version
 */
 
CREATE TABLE ProfessionalPlans(
  Date VARCHAR(20) NOT NULL,
  ODSSiteCode VARCHAR(250) NOT NULL,
  SDSJobRoleName ,
  ProfessionalName ,
  PlanDetails ,
  Recipient ,
  CONSTRAINT PK_Boundary PRIMARY KEY (BoundaryID)
);

CREATE INDEX idx_type
ON Boundary (BoundaryID);
