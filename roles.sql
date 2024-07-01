-- Select and revoke privileges
-- Creating users
CREATE USER jaiya;
CREATE USER nico;
CREATE USER alex;
CREATE USER sean;
-- Create roles
CREATE ROLE student;
CREATE ROLE prof;

-- GRANT Clauses
GRANT student TO jaiya, nico, alex;
GRANT prof TO sean;
GRANT select ON csc370.* TO jaiya, nico, alex WITH GRANT OPTION;
GRANT select, insert, delete, update ON csc370.* TO sean WITH GRANT OPTION;
GRANT select, insert, delete ON csc370.* TO jaiya WITH GRANT OPTION;
SHOW GRANTS FOR jaiya;
-- REVOKE clauses
REVOKE delete ON csc370.* FROM jaiya;
SHOW GRANTS FOR jaiya;

