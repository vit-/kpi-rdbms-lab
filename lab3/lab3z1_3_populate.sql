-- Following queries must be generated by lab3z1_2.sql
INSERT INTO EMPLOYEE (ID, USER_ID, LAST_NAME, DEPT_ID)
VALUES (201, 201, 'Charlie', 54)
/

INSERT INTO EMPLOYEE (ID, USER_ID, LAST_NAME, DEPT_ID)
VALUES (202, 202, 'David', 75)
/

INSERT INTO EMPLOYEE (ID, USER_ID, LAST_NAME, DEPT_ID)
VALUES (203, 203, 'Eve', 37)
/
-- end of generated block


UPDATE DEPARTMENT SET NAME = 'Other name' WHERE ID = 75
/

UPDATE EMPLOYEE SET LAST_NAME = 'Vokhmin' WHERE ID = 202
/


DELETE FROM EMPLOYEE WHERE DEPT_ID = 54
/


DELETE FROM DEPARTMENT WHERE ID = 54
/

