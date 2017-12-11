ACCEPT user_id PROMPT 'Enter student ID:'
ACCEPT last_name PROMPT 'Enter last name:'
ACCEPT dept_id PROMPT 'Enter department ID:'
INSERT INTO EMPLOYEE (ID, USER_ID, LAST_NAME, DEPT_ID)
VALUES (&user_id, &user_id, '&last_name', &dept_id)
/