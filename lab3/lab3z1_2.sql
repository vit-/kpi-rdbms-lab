-- How to implement user prompt?! SQL is not interactive!

INSERT INTO EMPLOYEE (LAST_NAME, ID, DEPT_ID) VALUES ('Alice', 200, 10)
/

INSERT INTO EMPLOYEE (LAST_NAME, ID, DEPT_ID) VALUES ('Bob', 201, 11)
/
-- queries above ^^ fail because USER_ID is required

INSERT INTO DEPARTMENT (ID, NAME) VALUES (10, 'Applied Math faculty')
/
-- query above ^^ fails because it violates REGION_ID unique constraint.
-- there's already 'IT faculty' present in the table with REGION_ID=NULL
