DROP TABLE IF EXISTS mydatabase.table456;
CREATE TABLE mydatabase.table456(
    -- id INT AUTO_INCREMENT,
    id INT  NOT NULL,
    name varchar(20) not NULL,
    pin_code int not null,
    country VARCHAR(30),
    primary key (id)  
);
TRUNCATE TABLE mydatabase.table456;

-- -- now dml is createdata manipulation language which is used to manipulate the data in the table like insert,update,delete and select
-- --  1. no of colums and values must be in the same order and shuld be equla count in single line without spasifing the colum names
-- INSERT INTO  mydatabase.table456
-- values
-- (7, "radha",517324,"india"),
-- (8, "sadha",517724,"india"),
-- (9, "maadav",517824,"india");
-- SELECT * FROM mydatabase.table456;


-- -- 2. with colum spasifing and in multiline (but must and shuhoud match the correct datatypeof colum values)
INSERT INTO  mydatabase.table456(id,name,pin_code,country)
values
(10, "radha",517324,"india"),
(11, "sadha",517724,"india"),
(12, "maadav",517824,"india");
SELECT * FROM mydatabase.table456;


-- -- 3. in sql dml it doesnot care about the meaning of the values to the columes only cares about the data type
-- -- which means , it only match the vales to  colum created datatype not match the value meaning to the colum names.
INSERT INTO  mydatabase.table456(id,name,pin_code,country)
values
(13, "india ",517324,"radha"),
(14, "india",517724," sadha"),
(15, "india",517824,"maadav");
SELECT * FROM mydatabase.table456;


-- 4. We can change the order of columns in the INSERT statement,
-- provided the values match the specified columns and their data types.
-- However, when data is displayed using SELECT *, the output appears
-- in the order in which the columns were defined in the table.
INSERT INTO  mydatabase.table456(id,pin_code,country,name)
values
(16,517324,"india", "radha"),
(17,517724,"india", "sadha"),
(18,517824,"india","maadav");
SELECT * FROM mydatabase.table456;


-- -- 5. By mismatching the vales to the colums datatype willgives a an error
-- INSERT INTO  mydatabase.table456(id,name,pin_code,country)
-- values
-- ("one","517324","radha","india"):
-- SELECT * FROM mydatabase.table456;



--             NOW LET US KNOW ABOUT THE ID EXICUTION IN DML IN SQL


-- 7.SQL accepts the rows in any ID order as long as the IDs are unique and satisfy the constraints.
-- MySQL తనకు convenient అయిన order లో rows చూపిస్తుంది. చాలాసార్లు PRIMARY KEY index వల్ల sorted లాగా కనిపిస్తుంది. if u not use primary key it will give as per our table values
INSERT INTO table456(id, name, pin_code, country)
VALUES
(10, 'radha', 517324, 'india'),
(5, 'sadha', 517724, 'india'),
(20, 'maadav', 517824, 'india');
SELECT * FROM mydatabase.table456;


-- 8 IN SQL table rows has no automatic order.
-- if you want you can spisify by using the ORDER BY
SELECT * FROM table456
ORDER BY id;



-- 9 ✅ automatic గా IDs రావాలంటే AUTO_INCREMENT వాడాలి and use (id INT AUTO_INCREMENT )in tabe creation ఇప్పుడు insert చేసేటప్పుడు id ఇవ్వాల్సిన అవసరం లేదు 
--   ✅ primary id use cheste repeated (duplicate) IDs వాడలేవు.
--   ✅ IDs 1, 2, 3 order లోనే insert చేయాల్సిన అవసరం లేదు.
--   ✅ 10, 5, 20 లాంటి order లో కూడా insert చేయొచ్చు.
--   ❌ కానీ duplicate IDs (PRIMARY KEY) మాత్రం allowed కావు.





--             NOW LET US KNOW ABOUT THE null EXICUTION IN DML IN SQL 

-- 10 insted of adding null colum you can also skip it 
-- column name ని NULL గా ఉపయోగించలేవు.
-- ex: indhulo country anedi not null ane constent use cheyyaledhu so edi null ani vastundi
INSERT INTO table456(id, name, pin_code, country)
VALUES
(10, 'radha', 517324), -- indhulo country anedi not null ane constent use cheyyaledhu so edi null ani vastundi
(20, 'maadav', 517824, 'india');
SELECT * FROM mydatabase.table456;



-- 11. Omitted columns become NULL only if they allow NULL values.
-- In this table, only the 'country' column can be omitted and become NULL.
-- Columns defined as NOT NULL must be provided with values.
INSERT INTO table456(id, name, pin_code)
VALUES (1, 'radha', 517324);
SELECT * FROM mydatabase.table456;


--( insert using selct 
-- INSERT INTO table456(id, name, country)
-- SELECT id, first_name, country 
-- FROM customers)
-- it wont works bcz 👇

/* INSERT lo anni column names specify cheyyalsina avasaram ledu. Kani NOT NULL and default value leni columns ki values compulsory ga ivvali.
   1.pin_code column customers table lo ledu. Kabatti direct ga anni rows copy cheyyalem
   2.pin_code NULL allow cheyyali leda
   3.pin_code ki default value undali.
   4.NULL use cheyyachu, but only if that column is allowed to store NULL values.
*/
SELECT * FROM customers;
INSERT  IGNORE  INTO mydatabase.table456(id, name,pin_code,country)
SELECT id, first_name, 23456, country 
FROM customers;
SELECT * FROM mydatabase.table456;



