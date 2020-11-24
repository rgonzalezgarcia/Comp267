-- Ramiro completed this
-- Shows a relevant area
select * from CHILDREN WHERE CHILD_AGE = 1;

-- Change a phone number of a customer by using the customer's ID
UPDATE CUSTOMER SET CUS_PHONE = '9193337777' WHERE CUS_ID ='3001';
select * from CUSTOMER;

-- change the phone number of customer 3006 by only knowing their child's ID (4018)
UPDATE CUSTOMER SET CUS_PHONE ='9195552233' WHERE CUS_ID = (SELECT CUS_ID FROM CHILDREN WHERE CHILD_ID = '4018');
SELECT * FROM CUSTOMER;

-- Find the average age of the children
SELECT AVG(CHILD_AGE) FROM CHILDREN;

-- GROUP CHILDREN BY AGE AND COUNT
SELECT CHILD_AGE,COUNT(CHILD_ID) FROM CHILDREN GROUP BY CHILD_AGE ;

-- HAVING 
SELECT CHILD_AGE, COUNT(CHILD_ID) FROM CHILDREN GROUP BY CHILD_AGE HAVING COUNT(CHILD_ID)>5;

-- removing Kylie's children
Delete from CHILDREN WHERE CUS_ID = (SELECT CUS_ID FROM CUSTOMER WHERE CUS_FNAME= 'Kylie');
select * from CHILDREN;