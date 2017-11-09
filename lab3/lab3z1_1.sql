INSERT INTO REGION (ID, NAME) VALUES (44, 'Kyiv')
/

INSERT INTO DEPARTMENT VALUES (10, 'IT faculty')
/

-- query above ^^ fails due to lack of values. possible fix solutions:
-- explicitly define columns; provide values for _all_ columns (region_id is missing)

INSERT INTO DEPARTMENT (ID, NAME) VALUES (10, 'IT faculty')
/
