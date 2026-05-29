-- ddl : data definition language which is used to create,alert,drope the database  clm
-- CREATE: which can basically add a or create a new table database which can add a  clm namesand gives an empty table database
DROP TABLE IF EXISTS table123;
CREATE TABLE table123  (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    PRIMARY KEY(id)   
);
-- SELECT * FROM  table123;

-- ALTER: which is used to change the definition of the tabledtata(like can add, delt ,changethe type and modifty the data)
-- ALTER- add: BY DEFAULT IT ONLY  adds at the end of the column so if we want to add at middle it not possible but one atlternate method  making re  possisioning it in creating th etable 
ALTER table table123 
ADD COLUMN emailid VARCHAR(60),
ADD COLUMN last_name VARCHAR(50);
-- SELECT * FROM  table123;

--  for example i need emailid after the person _name you should 
DROP TABLE IF EXISTS table123;
CREATE TABLE table123  (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    emailid VARCHAR(60) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    PRIMARY KEY(id)   
);
-- SELECT * FROM  table123;

-- deleting: the colum that we dont want 
ALTER TABLE table123
drop COLUMN person_name;
SELECT * FROM table123;

-- changing the column name 
ALTER TABLE table123
-- RENAME COLUMN emailid TO email_address;   or
change COLUMN emailid email_address VARCHAR(60);
SELECT * FROM  table123;

-- -- changing the coloumn datatype ??
-- ALTER TABLE table123
-- --change COLUMN email_address email_address into NOT NULL; orelse you can also modify colum  columname text or anything
-- SELECT * FROM  table123;

-- -- deletingthe hole table 
-- DROP TABLE table123;
--  SELECT * FROM table123;








