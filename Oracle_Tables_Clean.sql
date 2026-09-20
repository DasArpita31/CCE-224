-- ============================================================
-- Oracle Database 10g Practice Tables
-- Cleaned table creation + data insertion script
-- Source: Tables.txt
-- ============================================================

SET DEFINE OFF;

-- ============================================================
-- Required Object Types for CUSTOMER
-- ============================================================

CREATE OR REPLACE TYPE ADDRESS_TY AS OBJECT
(
    Street VARCHAR2(50),
    City   VARCHAR2(25),
    State  CHAR(2),
    Zip    NUMBER
);
/

CREATE OR REPLACE TYPE PERSON_TY AS OBJECT
(
    Name    VARCHAR2(25),
    Address ADDRESS_TY
);
/

-- ============================================================
-- 1. ADDRESS
-- ============================================================

DROP TABLE ADDRESS CASCADE CONSTRAINTS;

create table ADDRESS (
LastName   VARCHAR2(25),
FirstName  VARCHAR2(25),
Street     VARCHAR2(50),
City       VARCHAR2(25),
State      CHAR(2),
Zip        NUMBER,
Phone      VARCHAR2(12),
Ext        VARCHAR2(5)
);

INSERT into ADDRESS values ('BAILEY', 'WILLIAM',
     null,null,null,null,'213-555-0223',null);
INSERT into ADDRESS values ('ADAMS', 'JACK',
     null,null,null,null,'415-555-7530',null);
INSERT into ADDRESS values ('SEP', 'FELICIA',
     null,null,null,null,'214-555-8383',null);
INSERT into ADDRESS values ('DE MEDICI', 'LEFTY',
     null,null,null,null,'312-555-1166',null);
INSERT into ADDRESS values ('DEMIURGE', 'FRANK',
     null,null,null,null,'707-555-8900',null);
INSERT into ADDRESS values ('CASEY', 'WILLIS',
     null,null,null,null,'312-555-1414',null);
INSERT into ADDRESS values ('ZACK', 'JACK',
     null,null,null,null,'415-555-6842',null);
INSERT into ADDRESS values ('YARROW', 'MARY',
     null,null,null,949414302,'415-555-2178',null);
INSERT into ADDRESS values ('WERSCHKY', 'ARNY',
     null,null,null,null,'415-555-7387',null);
INSERT into ADDRESS values ('BRANT', 'GLEN',
     null,null,null,null,'415-555-7512',null);
INSERT into ADDRESS values ('EDGAR', 'THEODORE',
     null,null,null,null,'415-555-6252',null);
INSERT into ADDRESS values ('HARDIN', 'HUGGY',
     null,null,null,null,'617-555-0125',null);
INSERT into ADDRESS values ('HILD', 'PHIL',
     null,null,null,null,'603-555-2242',null);
INSERT into ADDRESS values ('LOEBEL', 'FRANK',
     null,null,null,null,'202-555-1414',null);
INSERT into ADDRESS values ('MOORE', 'MARY',
     null,null,null,601262460,'718-555-1638',null);
INSERT into ADDRESS values ('SZEP', 'FELICIA',
     null,null,null,null,'214-555-8383',null);
INSERT into ADDRESS values ('ZIMMERMAN', 'FRED',
     null,null,null,null,'503-555-7491',null);

COMMIT;

-- ============================================================
-- 2. AREAS
-- ============================================================

DROP TABLE AREAS CASCADE CONSTRAINTS;

create table AREAS
(Radius      NUMBER(5),
 Area        NUMBER(14,2)
);
-- No data rows for this table.

COMMIT;

-- ============================================================
-- 3. AUTHOR
-- ============================================================

DROP TABLE AUTHOR CASCADE CONSTRAINTS;

create table AUTHOR
(AuthorName  VARCHAR2(50) primary key,
Comments  VARCHAR2(100));

INSERT into AUTHOR values
('DIETRICH BONHOEFFER', 'GERMAN THEOLOGIAN, KILLED IN A WAR CAMP');
INSERT into AUTHOR values
('ROBERT BRETALL','KIERKEGAARD ANTHOLOGIST');
INSERT into AUTHOR values
('ALEXANDRA DAY','AUTHOR OF PICTURE BOOKS FOR CHILDREN');
INSERT into AUTHOR values
('STEPHEN JAY GOULD','SCIENCE COLUMNIST, HARVARD PROFESSOR');
INSERT into AUTHOR values
('SOREN KIERKEGAARD','DANISH PHILOSOPHER AND THEOLOGIAN');
INSERT into AUTHOR values
('HARPER LEE','AMERICAN NOVELIST, PUBLISHED ONLY ONE NOVEL');
INSERT into AUTHOR values
('LUCY MAUD MONTGOMERY','CANADIAN NOVELIST');
INSERT into AUTHOR values
('JOHN ALLEN PAULOS','MATHEMATICS PROFESSOR');
INSERT into AUTHOR values
('J. RODALE', 'ORGANIC GARDENING EXPERT');
INSERT into AUTHOR values
('DANIEL BOORSTIN', 'LIBRARIAN OF CONGRESS');
INSERT into AUTHOR values
('CHRIS VAN ALLSBURG', 'ILLUSTRATOR');
INSERT into AUTHOR values
('MARGARET WISE BROWN', 'EDITOR AND AUTHOR');
INSERT into AUTHOR values
('CLEMENT HURD', 'ILLUSTRATOR');
INSERT into AUTHOR values
('G. B. TALBOT', 'FAMOUS LEDGERIST');
INSERT into AUTHOR values
('JOHN KEATS', 'ROMANTIC POET');
INSERT into AUTHOR values
('JOHN BARNARD', 'KEATS EDITOR');
INSERT into AUTHOR values
('CHRISTOPHER NOLAN', 'POET AND AUTHOR');
INSERT into AUTHOR values
('DAVID MCCULLOUGH', 'HISTORIAN');
INSERT into AUTHOR values
('MERIWETHER LEWIS', 'EXPLORER AND JOURNALIST');
INSERT into AUTHOR values
('WILLIAM CLARK', 'EXPLORER AND JOURNALIST');
INSERT into AUTHOR values
('STEPHEN AMBROSE',NULL);
INSERT into AUTHOR values
('BERNARD DE VOTO', 'EDITOR');
INSERT into AUTHOR values
('WILTON BARNHARDT', 'AMERICAN AUTHOR');
INSERT into AUTHOR values
('AVI', 'PROLIFIC AUTHOR OF BOOKS FOR CHILDREN');
INSERT into AUTHOR values
('J. K. ROWLING', 'AUTHOR OF HARRY POTTER SERIES');
INSERT into AUTHOR values
('W. P. KINSELLA', 'AUTHOR AND WRITING PROFESSOR');
INSERT into AUTHOR values
('E. B. WHITE', 'AUTHOR AND ESSAYIST');
INSERT into AUTHOR values
('BERYL MARKHAM', 'AVIATOR AND ADVENTURESS');
INSERT into AUTHOR values
('PETER GOMES', 'HARVARD THEOLOGIAN');
INSERT into AUTHOR values
('THOMAS SWEARS', 'PASTOR AND AUTHOR');
INSERT into AUTHOR values
('E. ANNIE PROULX,NULL);

commit;

COMMIT;

-- ============================================================
-- 4. BIRTHDAY
-- ============================================================

DROP TABLE BIRTHDAY CASCADE CONSTRAINTS;

create table BIRTHDAY (
FirstName     VARCHAR2(15),
LastName      VARCHAR2(15),
BirthDate     DATE,
Age           NUMBER,
constraint PK_BIRTHDAY primary key (FirstName, LastName)
);

INSERT into BIRTHDAY values ('GEORGE','SAND',
        TO_DATE('12-MAY-1946','DD-MON-YYYY'),42);
INSERT into BIRTHDAY values ('ROBERT','JAMES',
        TO_DATE('23-AUG-1937','DD-MON-YYYY'),52);
INSERT into BIRTHDAY values ('NANCY','LEE',
        TO_DATE('02-FEB-1947','DD-MON-YYYY'),42);
INSERT into BIRTHDAY values ('VICTORIA','LYNN',
        TO_DATE('20-MAY-1949 3:27','DD-MON-YYYY HH24:MI'),42);
INSERT into BIRTHDAY values ('FRANK','PILOT',
        TO_DATE('11-NOV-1942','DD-MON-YYYY'),42);

COMMIT;

-- ============================================================
-- 5. BOOK_ORDER
-- ============================================================

DROP TABLE BOOK_ORDER CASCADE CONSTRAINTS;

create table BOOK_ORDER
(Title       VARCHAR2(100) primary key,
Publisher    VARCHAR2(20),
CategoryName VARCHAR2(20));


INSERT into BOOK_ORDER values
('SHOELESS JOE','MARINER','ADULTFIC');
INSERT into BOOK_ORDER values
('GOSPEL','PICADOR','ADULTFIC');
INSERT into BOOK_ORDER values
('SOMETHING SO STRONG','PANDORAS','ADULTNF');
INSERT into BOOK_ORDER values
('GALILEO''S DAUGHTER','PENGUIN','ADULTNF');
INSERT into BOOK_ORDER values
('LONGITUDE','PENGUIN','ADULTNF');
INSERT into BOOK_ORDER values
('ONCE REMOVED','SANCTUARY PUB','ADULTNF');

commit;

COMMIT;

-- ============================================================
-- 6. BOOK_REVIEW_CONTEXT
-- ============================================================

DROP TABLE BOOK_REVIEW_CONTEXT CASCADE CONSTRAINTS;

create table BOOK_REVIEW_CONTEXT
(Title       VARCHAR2(100) primary key,
Reviewer     VARCHAR2(25),
Review_Date  DATE,
Review_Text  VARCHAR2(4000));

INSERT into BOOK_REVIEW_CONTEXT values
('MY LEDGER', 'EMILY TALBOT', '01-MAY-02',
'A fascinating look into the transactions and finances of G. B. Talbot and Dora Talbot as they managed a property in New Hampshire around 1900.  The stories come through the purchases  for medicine, doctor visits and gravesites  for workers during harvests  for gifts at the general store at Christmas.  A great read. ');

COMMIT;

-- ============================================================
-- 7. BOOK_REVIEW_CTXCAT
-- ============================================================

DROP TABLE BOOK_REVIEW_CTXCAT CASCADE CONSTRAINTS;

create table BOOK_REVIEW_CTXCAT
(Title       VARCHAR2(100) primary key,
Reviewer     VARCHAR2(25),
Review_Date  DATE,
Review_Text  VARCHAR2(4000));

INSERT into BOOK_REVIEW_CTXCAT values
('MY LEDGER', 'EMILY TALBOT', '01-MAY-02',
'A fascinating look into the transactions and finances of G. B. Talbot and Dora Talbot as they managed a property in New Hampshire around 1900.  The stories come through the purchases  for medicine, doctor visits and gravesites  for workers during harvests  for gifts at the general store at Christmas.  A great read. ');

COMMIT;

-- ============================================================
-- 8. CATEGORY
-- ============================================================

DROP TABLE CATEGORY CASCADE CONSTRAINTS;

create table CATEGORY
(CategoryName  VARCHAR2(12) primary key,
ParentCategory  VARCHAR2(8),
SubCategory VARCHAR2(20));

INSERT into CATEGORY values
('ADULTREF','ADULT','REFERENCE');
INSERT into CATEGORY values
('ADULTFIC','ADULT','FICTION');
INSERT into CATEGORY values
('ADULTNF','ADULT','NONFICTION');
INSERT into CATEGORY values
('CHILDRENPIC','CHILDREN','PICTURE BOOK');
INSERT into CATEGORY values
('CHILDRENFIC','CHILDREN','FICTION');
INSERT into CATEGORY values
('CHILDRENNF','CHILDREN','NONFICTION');

commit;

COMMIT;

-- ============================================================
-- 9. BOOKSHELF
-- ============================================================

DROP TABLE BOOKSHELF CASCADE CONSTRAINTS;

create table BOOKSHELF
(Title       VARCHAR2(100) primary key,
Publisher    VARCHAR2(20),
CategoryName VARCHAR2(20),
Rating       VARCHAR2(2),
constraint CATFK foreign key (CategoryName)
references CATEGORY(CategoryName));

INSERT into BOOKSHELF values
('TO KILL A MOCKINGBIRD','HARPERCOLLINS','ADULTFIC','5');
INSERT into BOOKSHELF values
 ('WONDERFUL LIFE','W.W.NORTON','ADULTNF','5');
INSERT into BOOKSHELF values
 ('INNUMERACY','VINTAGE BOOKS','ADULTNF','4');
INSERT into BOOKSHELF values
 ('KIERKEGAARD ANTHOLOGY','PRINCETON UNIV PR','ADULTREF','3');
INSERT into BOOKSHELF values
 ('ANNE OF GREEN GABLES','GRAMMERCY','CHILDRENFIC','3');
INSERT into BOOKSHELF values
 ('GOOD DOG, CARL','LITTLE SIMON','CHILDRENPIC','1');
INSERT into BOOKSHELF values
 ('LETTERS AND PAPERS FROM PRISON','SCRIBNER','ADULTNF','4');
INSERT into BOOKSHELF values
 ('THE DISCOVERERS','RANDOM HOUSE','ADULTNF','4');
INSERT into BOOKSHELF values
 ('THE MISMEASURE OF MAN','W.W. NORTON','ADULTNF','5');
INSERT into BOOKSHELF values
 ('EITHER/OR','PENGUIN','ADULTREF','3');
INSERT into BOOKSHELF values
 ('POLAR EXPRESS','HOUGHTON MIFFLIN','CHILDRENPIC','1');
INSERT into BOOKSHELF values
('RUNAWAY BUNNY','HARPERFESTIVAL','CHILDRENPIC','1');
INSERT into BOOKSHELF values
('MY LEDGER','KOCH PRESS','ADULTNF','5');
INSERT into BOOKSHELF values
('COMPLETE POEMS OF JOHN KEATS','VIKING','ADULTREF','2');
INSERT into BOOKSHELF values
('UNDER THE EYE OF THE CLOCK','ARCADE PUB','CHILDRENNF','3');
INSERT into BOOKSHELF values
('JOHN ADAMS','SIMON SCHUSTER','ADULTNF','4');
INSERT into BOOKSHELF values
('TRUMAN','SIMON SCHUSTER','ADULTNF','4');
INSERT into BOOKSHELF values
('JOURNALS OF LEWIS AND CLARK','MARINER','ADULTNF','4');
INSERT into BOOKSHELF values
('GOSPEL','PICADOR','ADULTFIC','4');
INSERT into BOOKSHELF values
('EMMA WHO SAVED MY LIFE','ST MARTIN''S PRESS','ADULTFIC','3');
INSERT into BOOKSHELF values
('MIDNIGHT MAGIC','SCHOLASTIC','CHILDRENFIC','1');
INSERT into BOOKSHELF values
('HARRY POTTER AND THE GOBLET OF FIRE','SCHOLASTIC','CHILDRENFIC','4');
INSERT into BOOKSHELF values
('SHOELESS JOE','MARINER','ADULTFIC','3');
INSERT into BOOKSHELF values
('BOX SOCIALS','BALLANTINE','ADULTFIC','3');
INSERT into BOOKSHELF values
('TRUMPET OF THE SWAN','HARPERCOLLINS','CHILDRENFIC','3');
INSERT into BOOKSHELF values
('CHARLOTTE''S WEB','HARPERTROPHY','CHILDRENFIC','3');
INSERT into BOOKSHELF values
('WEST WITH THE NIGHT','NORTH POINT PRESS','ADULTNF','3');
INSERT into BOOKSHELF values
('THE GOOD BOOK','BARD','ADULTREF','4');
INSERT into BOOKSHELF values
('PREACHING TO HEAD AND HEART','ABINGDON PRESS','ADULTREF','4');
INSERT into BOOKSHELF values
('THE COST OF DISCIPLESHIP','TOUCHSTONE','ADULTREF','3');
INSERT into BOOKSHELF values
('THE SHIPPING NEWS','SIMON SCHUSTER','ADULTFIC','4');

commit;

COMMIT;

-- ============================================================
-- 10. BOOKSHELF_AUDIT
-- ============================================================

DROP TABLE BOOKSHELF_AUDIT CASCADE CONSTRAINTS;

create table BOOKSHELF_AUDIT
(Title       VARCHAR2(100),
Publisher    VARCHAR2(20),
CategoryName VARCHAR2(20),
Old_Rating   VARCHAR2(2),
New_Rating   VARCHAR2(2),
Audit_Date   DATE);

COMMIT;

-- ============================================================
-- 11. BOOKSHELF_AUTHOR
-- ============================================================

DROP TABLE BOOKSHELF_AUTHOR CASCADE CONSTRAINTS;

create table BOOKSHELF_AUTHOR
(Title      VARCHAR2(100),
AuthorName  VARCHAR2(50),
constraint TitleFK Foreign key (Title) references BOOKSHELF(Title),
constraint AuthorNameFK Foreign key (AuthorName)
references AUTHOR(AuthorName));

INSERT into BOOKSHELF_AUTHOR values
('TO KILL A MOCKINGBIRD','HARPER LEE');
INSERT into BOOKSHELF_AUTHOR values
 ('WONDERFUL LIFE','STEPHEN JAY GOULD');
INSERT into BOOKSHELF_AUTHOR values
 ('INNUMERACY','JOHN ALLEN PAULOS');
INSERT into BOOKSHELF_AUTHOR values
 ('KIERKEGAARD ANTHOLOGY','ROBERT BRETALL');
INSERT into BOOKSHELF_AUTHOR values
 ('KIERKEGAARD ANTHOLOGY','SOREN KIERKEGAARD');
INSERT into BOOKSHELF_AUTHOR values
 ('ANNE OF GREEN GABLES','LUCY MAUD MONTGOMERY');
INSERT into BOOKSHELF_AUTHOR values
 ('GOOD DOG, CARL','ALEXANDRA DAY');
INSERT into BOOKSHELF_AUTHOR values
 ('LETTERS AND PAPERS FROM PRISON','DIETRICH BONHOEFFER');
INSERT into BOOKSHELF_AUTHOR values
 ('THE DISCOVERERS','DANIEL BOORSTIN');
INSERT into BOOKSHELF_AUTHOR values
 ('THE MISMEASURE OF MAN','STEPHEN JAY GOULD');
INSERT into BOOKSHELF_AUTHOR values
 ('EITHER/OR','SOREN KIERKEGAARD');
INSERT into BOOKSHELF_AUTHOR values
 ('POLAR EXPRESS','CHRIS VAN ALLSBURG');
INSERT into BOOKSHELF_AUTHOR values
('RUNAWAY BUNNY','MARGARET WISE BROWN');
INSERT into BOOKSHELF_AUTHOR values
('RUNAWAY BUNNY','CLEMENT HURD');
INSERT into BOOKSHELF_AUTHOR values
('MY LEDGER','G. B. TALBOT');
INSERT into BOOKSHELF_AUTHOR values
('COMPLETE POEMS OF JOHN KEATS','JOHN KEATS');
INSERT into BOOKSHELF_AUTHOR values
('COMPLETE POEMS OF JOHN KEATS','JOHN BARNARD');
INSERT into BOOKSHELF_AUTHOR values
('UNDER THE EYE OF THE CLOCK','CHRISTOPHER NOLAN');
INSERT into BOOKSHELF_AUTHOR values
('JOHN ADAMS','DAVID MCCULLOUGH');
INSERT into BOOKSHELF_AUTHOR values
('TRUMAN','DAVID MCCULLOUGH');
INSERT into BOOKSHELF_AUTHOR values
('JOURNALS OF LEWIS AND CLARK','MERIWETHER LEWIS');
INSERT into BOOKSHELF_AUTHOR values
('JOURNALS OF LEWIS AND CLARK','WILLIAM CLARK');
INSERT into BOOKSHELF_AUTHOR values
('JOURNALS OF LEWIS AND CLARK','STEPHEN AMBROSE');
INSERT into BOOKSHELF_AUTHOR values
('JOURNALS OF LEWIS AND CLARK','BERNARD DE VOTO');
INSERT into BOOKSHELF_AUTHOR values
('GOSPEL','WILTON BARNHARDT');
INSERT into BOOKSHELF_AUTHOR values
('EMMA WHO SAVED MY LIFE','WILTON BARNHARDT');
INSERT into BOOKSHELF_AUTHOR values
('MIDNIGHT MAGIC','AVI');
INSERT into BOOKSHELF_AUTHOR values
('HARRY POTTER AND THE GOBLET OF FIRE','J. K. ROWLING');
INSERT into BOOKSHELF_AUTHOR values
('SHOELESS JOE','W. P. KINSELLA');
INSERT into BOOKSHELF_AUTHOR values
('BOX SOCIALS','W. P. KINSELLA');
INSERT into BOOKSHELF_AUTHOR values
('TRUMPET OF THE SWAN','E. B. WHITE');
INSERT into BOOKSHELF_AUTHOR values
('CHARLOTTE''S WEB','E. B. WHITE');
INSERT into BOOKSHELF_AUTHOR values
('WEST WITH THE NIGHT','BERYL MARKHAM');
INSERT into BOOKSHELF_AUTHOR values
('THE GOOD BOOK','PETER GOMES');
INSERT into BOOKSHELF_AUTHOR values
('PREACHING TO HEAD AND HEART','THOMAS SWEARS');
INSERT into BOOKSHELF_AUTHOR values
('THE COST OF DISCIPLESHIP','DIETRICH BONHOEFFER');
INSERT into BOOKSHELF_AUTHOR values
('THE SHIPPING NEWS','E. ANNIE PROULX');

commit;

COMMIT;

-- ============================================================
-- 12. BOOKSHELF_CHECKOUT
-- ============================================================

DROP TABLE BOOKSHELF_CHECKOUT CASCADE CONSTRAINTS;

create table BOOKSHELF_CHECKOUT
(Name  VARCHAR2(25),
 Title VARCHAR2(100),
 CheckoutDate  DATE,
 ReturnedDate  DATE);

INSERT into BOOKSHELF_CHECKOUT values
('JED HOPKINS','INNUMERACY','01-JAN-02','22-JAN-02');
INSERT into BOOKSHELF_CHECKOUT values
('GERHARDT KENTGEN','WONDERFUL LIFE','02-JAN-02','02-FEB-02');
INSERT into BOOKSHELF_CHECKOUT values
('DORAH TALBOT','EITHER/OR','02-JAN-02','10-JAN-02');
INSERT into BOOKSHELF_CHECKOUT values
('EMILY TALBOT','ANNE OF GREEN GABLES','02-JAN-02','20-JAN-02');
INSERT into BOOKSHELF_CHECKOUT values
('PAT LAVAY','THE SHIPPING NEWS','02-JAN-02','12-JAN-02');
INSERT into BOOKSHELF_CHECKOUT values
('ROLAND BRANDT','THE SHIPPING NEWS','12-JAN-02','12-MAR-02');
INSERT into BOOKSHELF_CHECKOUT values
('ROLAND BRANDT','THE DISCOVERERS','12-JAN-02','01-MAR-02');
INSERT into BOOKSHELF_CHECKOUT values
('ROLAND BRANDT','WEST WITH THE NIGHT','12-JAN-02','01-MAR-02');
INSERT into BOOKSHELF_CHECKOUT values
('EMILY TALBOT','MIDNIGHT MAGIC','20-JAN-02','03-FEB-02');
INSERT into BOOKSHELF_CHECKOUT values
('EMILY TALBOT','HARRY POTTER AND THE GOBLET OF FIRE','03-FEB-02','14-FEB-02');
INSERT into BOOKSHELF_CHECKOUT values
('PAT LAVAY','THE MISMEASURE OF MAN','12-JAN-02','12-FEB-02');
INSERT into BOOKSHELF_CHECKOUT values
('DORAH TALBOT','POLAR EXPRESS','01-FEB-02','15-FEB-02');
INSERT into BOOKSHELF_CHECKOUT values
('DORAH TALBOT','GOOD DOG, CARL','01-FEB-02','15-FEB-02');
INSERT into BOOKSHELF_CHECKOUT values
('GERHARDT KENTGEN','THE MISMEASURE OF MAN','13-FEB-02','05-MAR-02');
INSERT into BOOKSHELF_CHECKOUT values
('FRED FULLER','JOHN ADAMS','01-FEB-02','01-MAR-02');
INSERT into BOOKSHELF_CHECKOUT values
('FRED FULLER','TRUMAN','01-MAR-02','20-MAR-02');
INSERT into BOOKSHELF_CHECKOUT values
('JED HOPKINS','TO KILL A MOCKINGBIRD','15-FEB-02','01-MAR-02');
INSERT into BOOKSHELF_CHECKOUT values
('DORAH TALBOT','MY LEDGER','15-FEB-02','03-MAR-02');
INSERT into BOOKSHELF_CHECKOUT values
('GERHARDT KENTGEN','MIDNIGHT MAGIC','05-FEB-02','10-FEB-02');

commit;

COMMIT;

-- ============================================================
-- 13. BORROWER
-- ============================================================

DROP TABLE BORROWER CASCADE CONSTRAINTS;

create table BORROWER
(Name          VARCHAR2(25),
 Tools         TOOLS_VA,
constraint BORROWER_PK primary key (Name));

INSERT into BORROWER values
('JED HOPKINS',
  TOOLS_VA('HAMMER','SLEDGE','AX'));

COMMIT;

-- ============================================================
-- 14. BREEDER
-- ============================================================

DROP TABLE BREEDER CASCADE CONSTRAINTS;

create table BREEDER (
BreederName      VARCHAR2(25),
Animals          ANIMALS_NT)
nested table ANIMALS store as ANIMALS_NT_TAB;

COMMIT;

-- ============================================================
-- 15. BREEDING
-- ============================================================

DROP TABLE BREEDING CASCADE CONSTRAINTS;

create table BREEDING (
Offspring     VARCHAR2(10),
Sex           CHAR(1),
Cow           VARCHAR2(10),
Bull          VARCHAR2(10),
Birthdate     DATE
);

INSERT into BREEDING values ('EVE','F',null,null,null);
INSERT into BREEDING values ('ADAM','M',null,null,null);
INSERT into BREEDING values ('BANDIT','M',null,null,null);
INSERT into BREEDING values ('BETSY','F','EVE','ADAM',
   TO_DATE('02-JAN-1900','DD-MON-YYYY'));
INSERT into BREEDING values ('POCO','M','EVE','ADAM',
   TO_DATE('15-JUL-1900','DD-MON-YYYY'));
INSERT into BREEDING values ('GRETA','F','EVE','BANDIT',
   TO_DATE('12-MAR-1901','DD-MON-YYYY'));
INSERT into BREEDING values ('MANDY','F','EVE','POCO',
   TO_DATE('22-AUG-1902','DD-MON-YYYY'));
INSERT into BREEDING values ('NOVI','F','BETSY','ADAM',
   TO_DATE('30-MAR-1903','DD-MON-YYYY'));
INSERT into BREEDING values ('GINNY','F','BETSY','BANDIT',
   TO_DATE('04-DEC-1903','DD-MON-YYYY'));
INSERT into BREEDING values ('CINDY','F','EVE','POCO',
   TO_DATE('09-FEB-1903','DD-MON-YYYY'));
INSERT into BREEDING values ('DUKE','M','MANDY','BANDIT',
   TO_DATE('24-JUL-1904','DD-MON-YYYY'));
INSERT into BREEDING values ('TEDDI','F','BETSY','BANDIT',
   TO_DATE('12-AUG-1905','DD-MON-YYYY'));
INSERT into BREEDING values ('SUZY','F','GINNY','DUKE',
   TO_DATE('03-APR-1906','DD-MON-YYYY'));
INSERT into BREEDING values ('RUTH','F','GINNY','DUKE',
   TO_DATE('25-DEC-1906','DD-MON-YYYY'));
INSERT into BREEDING values ('PAULA','F','MANDY','POCO',
   TO_DATE('21-DEC-1906','DD-MON-YYYY'));
INSERT into BREEDING values ('DELLA','F','SUZY','BANDIT',
   TO_DATE('11-OCT-1908','DD-MON-YYYY'));

COMMIT;

-- ============================================================
-- 16. CD
-- ============================================================

DROP TABLE CD CASCADE CONSTRAINTS;

create table CD (
Account      NUMBER not null,
Amount       NUMBER not null,
MaturityDate DATE not null
);

INSERT into CD values (573334, 10000,
   TO_DATE('15-JAN-2009','DD-MON-YYYY'));
INSERT into CD values (677654, 25000,
   TO_DATE('15-JAN-2001','DD-MON-YYYY'));
INSERT into CD values (976032, 10000,
   TO_DATE('15-JAN-1995','DD-MON-YYYY'));
INSERT into CD values (275031, 10000,
   TO_DATE('15-JAN-1997','DD-MON-YYYY'));
INSERT into CD values (274598, 20000,
   TO_DATE('15-JAN-1999','DD-MON-YYYY'));
INSERT into CD values (538365, 45000,
   TO_DATE('15-JAN-2001','DD-MON-YYYY'));
INSERT into CD values (267432, 16500,
   TO_DATE('15-JAN-2004','DD-MON-YYYY'));

COMMIT;

-- ============================================================
-- 17. COMFORT
-- ============================================================

DROP TABLE COMFORT CASCADE CONSTRAINTS;

create table COMFORT (
City          VARCHAR2(13) NOT NULL,
SampleDate    DATE NOT NULL,
Noon          NUMBER(3,1),
Midnight      NUMBER(3,1),
Precipitation NUMBER
);

INSERT into COMFORT values ('SAN FRANCISCO',
   TO_DATE('21-MAR-2003','DD-MON-YYYY'),62.5,42.3,.5);
INSERT into COMFORT values ('SAN FRANCISCO',
   TO_DATE('22-JUN-2003','DD-MON-YYYY'),51.1,71.9,.1);
INSERT into COMFORT values ('SAN FRANCISCO',
   TO_DATE('23-SEP-2003','DD-MON-YYYY'),NULL,61.5,.1);
INSERT into COMFORT values ('SAN FRANCISCO',
   TO_DATE('22-DEC-2003','DD-MON-YYYY'),52.6,39.8,2.3);
INSERT into COMFORT values ('KEENE',
   TO_DATE('21-MAR-2003','DD-MON-YYYY'),39.9,-1.2,4.4);
INSERT into COMFORT values ('KEENE',
   TO_DATE('22-JUN-2003','DD-MON-YYYY'),85.1,66.7,1.3);
INSERT into COMFORT values ('KEENE',
   TO_DATE('23-SEP-2003','DD-MON-YYYY'),99.8,82.6,NULL);
INSERT into COMFORT values ('KEENE',
   TO_DATE('22-DEC-2003','DD-MON-YYYY'),-7.2,-1.2,3.9);

COMMIT;

-- ============================================================
-- 18. COMFORT2
-- ============================================================

DROP TABLE COMFORT2 CASCADE CONSTRAINTS;

create table COMFORT2 (
City          VARCHAR2(13) NOT NULL,
SampleDate    DATE NOT NULL,
Noon          NUMBER(3,1),
Midnight      NUMBER(3,1),
Precipitation NUMBER
);

COMMIT;

-- ============================================================
-- 19. COMFORT_TEST
-- ============================================================

DROP TABLE COMFORT_TEST CASCADE CONSTRAINTS;

create table COMFORT_TEST (
City          VARCHAR2(13) NOT NULL,
SampleDate    DATE NOT NULL,
Measure       VARCHAR2(10),
Value         NUMBER(3,1)
);

COMMIT;

-- ============================================================
-- 20. CONTINENT
-- ============================================================

DROP TABLE CONTINENT CASCADE CONSTRAINTS;

create table CONTINENT (
 Continent    VARCHAR2(30));

COMMIT;

-- ============================================================
-- 21. COUNTRY
-- ============================================================

DROP TABLE COUNTRY CASCADE CONSTRAINTS;

create table COUNTRY (
Country      VARCHAR2(30) not null,
Continent    VARCHAR2(30));

COMMIT;

-- ============================================================
-- 22. CUSTOMER
-- ============================================================

DROP TABLE CUSTOMER CASCADE CONSTRAINTS;

create table CUSTOMER (
Customer_ID    NUMBER,
Person         PERSON_TY
);

INSERT into CUSTOMER VALUES
(1,
 PERSON_TY('NEIL MULLANE',
            ADDRESS_TY('57 MT PLEASANT ST',
                       'FINN', 'NH', 11111)));
INSERT into CUSTOMER VALUES
(2,
 PERSON_TY('SEYMOUR HESTER',
            ADDRESS_TY('1 STEPAHEAD RD',
                       'BRIANT', 'NH', 11111)));

COMMIT;

-- ============================================================
-- 23. EMPTY
-- ============================================================

DROP TABLE EMPTY CASCADE CONSTRAINTS;

create table EMPTY (
Nothing       VARCHAR2(25),
Less          NUMBER
);
-- No data rows for this table.

COMMIT;

-- ============================================================
-- 24. HOLIDAY
-- ============================================================

DROP TABLE HOLIDAY CASCADE CONSTRAINTS;

create table HOLIDAY (
Holiday        VARCHAR2(25),
ActualDate     DATE,
CelebratedDate DATE
);

INSERT into HOLIDAY values ('NEW YEARS DAY',
   TO_DATE('01-JAN-2004','DD-MON-YYYY'),
   TO_DATE('01-JAN-2004','DD-MON-YYYY'));
INSERT into HOLIDAY values ('MARTIN LUTHER KING, JR.',
   TO_DATE('15-JAN-2004','DD-MON-YYYY'),
   TO_DATE('19-JAN-2004','DD-MON-YYYY'));
INSERT into HOLIDAY values ('LINCOLNS BIRTHDAY',
   TO_DATE('12-FEB-2004','DD-MON-YYYY'),
   TO_DATE('16-FEB-2004','DD-MON-YYYY'));
INSERT into HOLIDAY values ('WASHINGTONS BIRTHDAY',
   TO_DATE('22-FEB-2004','DD-MON-YYYY'),
   TO_DATE('16-FEB-2004','DD-MON-YYYY'));
INSERT into HOLIDAY values ('FAST DAY, NEW HAMPSHIRE',
   TO_DATE('22-FEB-2004','DD-MON-YYYY'),
   TO_DATE('22-FEB-2004','DD-MON-YYYY'));
INSERT into HOLIDAY values ('MEMORIAL DAY',
   TO_DATE('30-MAY-2004','DD-MON-YYYY'),
   TO_DATE('31-MAY-2004','DD-MON-YYYY'));
INSERT into HOLIDAY values ('INDEPENDENCE DAY',
   TO_DATE('04-JUL-2004','DD-MON-YYYY'),
   TO_DATE('04-JUL-2004','DD-MON-YYYY'));
INSERT into HOLIDAY values ('LABOR DAY',
   TO_DATE('06-SEP-2004','DD-MON-YYYY'),
   TO_DATE('06-SEP-2004','DD-MON-YYYY'));
INSERT into HOLIDAY values ('COLUMBUS DAY',
   TO_DATE('12-OCT-2004','DD-MON-YYYY'),
   TO_DATE('11-OCT-2004','DD-MON-YYYY'));
INSERT into HOLIDAY values ('THANKSGIVING',
   TO_DATE('25-NOV-2004','DD-MON-YYYY'),
   TO_DATE('25-NOV-2004','DD-MON-YYYY'));

COMMIT;

-- ============================================================
-- 25. LOCATION
-- ============================================================

DROP TABLE LOCATION CASCADE CONSTRAINTS;

create table LOCATION (
City       VARCHAR2(25),
Country    VARCHAR2(25),
Continent  VARCHAR2(25),
Latitude   NUMBER,
NorthSouth CHAR(1),
Longitude  NUMBER,
EastWest   CHAR(1)
);

INSERT into LOCATION values (
  'ATHENS','GREECE','EUROPE',37.58,'N',23.43,'E');
INSERT into LOCATION values (
  'CHICAGO','UNITED STATES','NORTH AMERICA',41.53,'N',87.38,'W');
INSERT into LOCATION values (
  'CONAKRY','GUINEA','AFRICA',9.31,'N',13.43,'W');
INSERT into LOCATION values (
  'LIMA','PERU','SOUTH AMERICA',12.03,'S',77.03,'W');
INSERT into LOCATION values (
  'MADRAS','INDIA','INDIA',13.05,'N',80.17,'E');
INSERT into LOCATION values (
  'MANCHESTER','ENGLAND','EUROPE',53.30,'N',2.15,'W');
INSERT into LOCATION values (
  'MOSCOW','RUSSIA','EUROPE',55.45,'N',37.35,'E');
INSERT into LOCATION values (
  'PARIS','FRANCE','EUROPE',48.52,'N',2.20,'E');
INSERT into LOCATION values (
  'SHENYANG','CHINA','CHINA',41.48,'N',123.27,'E');
INSERT into LOCATION values (
  'ROME','ITALY','EUROPE',41.54,'N',12.29,'E');
INSERT into LOCATION values (
  'TOKYO','JAPAN','ASIA',35.42,'N',139.46,'E');
INSERT into LOCATION values (
  'SYDNEY','AUSTRALIA','AUSTRALIA',33.52,'S',151.13,'E');
INSERT into LOCATION values (
  'SPARTA','GREECE','EUROPE',37.05,'N',22.27,'E');
INSERT into LOCATION values (
  'MADRID','SPAIN','EUROPE',40.24,'N',3.41,'W');

COMMIT;

-- ============================================================
-- 26. MAGAZINE
-- ============================================================

DROP TABLE MAGAZINE CASCADE CONSTRAINTS;

create table magazine (
Name       VARCHAR2(16),
Title      VARCHAR2(37),
Author     VARCHAR2(25),
IssueDate  DATE,
Page       NUMBER
);

INSERT into MAGAZINE values (
  'BERTRAND MONTHLY','THE BARBERS WHO SHAVE THEMSELVES.',
  'BONHOEFFER, DIETRICH',
  TO_DATE('23-MAY-1988','DD-MON-YYYY'),70);
INSERT into MAGAZINE values (
  'LIVE FREE OR DIE','"HUNTING THOREAU IN NEW HAMPSHIRE"',
  'CHESTERTON, G.K.',
  TO_DATE('26-AUG-1981','DD-MON-YYYY'),320);
INSERT into MAGAZINE values (
  'PSYCHOLOGICA','THE ETHNIC NEIGHBORHOOD',
  'RUTH, GEORGE HERMAN',
  TO_DATE('18-SEP-1919','DD-MON-YYYY'),246);
INSERT into MAGAZINE values (
  'FADED ISSUES','RELATIONAL DESIGN AND ENTHALPY',
  'WHITEHEAD, ALFRED',
  TO_DATE('20-JUN-1926','DD-MON-YYYY'),279);
INSERT into MAGAZINE values (
  'ENTROPY WIT','"INTERCONTINENTAL RELATIONS."',
  'CROOKES, WILLIAM',
  TO_DATE('20-SEP-1950','DD-MON-YYYY'),20);

COMMIT;

-- ============================================================
-- 27. MATH
-- ============================================================

DROP TABLE MATH CASCADE CONSTRAINTS;

create table MATH (
Name          VARCHAR2(12),
Above         NUMBER,
Below         NUMBER,
Empty         NUMBER
);

INSERT into MATH values ('WHOLE NUMBER',11,-22,null);
INSERT into MATH values ('LOW DECIMAL',33.33,-44.44,null);
INSERT into MATH values ('MID DECIMAL',55.5,-55.5,null);
INSERT into MATH values ('HIGH DECIMAL',66.666,-77.777,null);

COMMIT;

-- ============================================================
-- 28. NAME
-- ============================================================

DROP TABLE NAME CASCADE CONSTRAINTS;

create table NAME (
Name         VARCHAR2(25)
);

INSERT into NAME values ('HORATIO NELSON');
INSERT into NAME values ('VALDO');
INSERT into NAME values ('MARIE DE MEDICIS');
INSERT into NAME values ('FLAVIUS JOSEPHUS');
INSERT into NAME values ('EDYTHE P. M. GAMMIERE');

COMMIT;

-- ============================================================
-- 29. NEWSPAPER
-- ============================================================

DROP TABLE NEWSPAPER CASCADE CONSTRAINTS;

create table NEWSPAPER (
Feature      VARCHAR2(15) not null,
Section      CHAR(1),
Page         NUMBER
);

INSERT into NEWSPAPER values ('National News', 'A', 1);
INSERT into NEWSPAPER values ('Sports', 'D', 1);
INSERT into NEWSPAPER values ('Editorials', 'A', 12);
INSERT into NEWSPAPER values ('Business', 'E', 1);
INSERT into NEWSPAPER values ('Weather', 'C', 2);
INSERT into NEWSPAPER values ('Television', 'B', 7);
INSERT into NEWSPAPER values ('Births', 'F', 7);
INSERT into NEWSPAPER values ('Classified', 'F', 8);
INSERT into NEWSPAPER values ('Modern Life', 'B', 1);
INSERT into NEWSPAPER values ('Comics', 'C', 4);
INSERT into NEWSPAPER values ('Movies', 'B', 4);
INSERT into NEWSPAPER values ('Bridge', 'B', 2);
INSERT into NEWSPAPER values ('Obituaries', 'F', 6);
INSERT into NEWSPAPER values ('Doctor Is In', 'F', 6);

COMMIT;

-- ============================================================
-- 30. NUMBERTEST
-- ============================================================

DROP TABLE NUMBERTEST CASCADE CONSTRAINTS;

create table NUMBERTEST (
Value1        NUMBER,
Value2        NUMBER,
Value3        NUMBER(10,2)
);

INSERT into NUMBERTEST values (0,0,0);
INSERT into NUMBERTEST values (.0001,.0001,.0001);
INSERT into NUMBERTEST values (1234,1234,1234);
INSERT into NUMBERTEST values (1234.5,1234.5,1234.5);
INSERT into NUMBERTEST values (null,null,null);
INSERT into NUMBERTEST values (1234.56,1234.56,1234.56);
INSERT into NUMBERTEST values (1234.567,1234.567,1234.567);
INSERT into NUMBERTEST values
     (98761234.567,98761234.567,98761234.567);

COMMIT;

-- ============================================================
-- 31. PAYDAY
-- ============================================================

DROP TABLE PAYDAY CASCADE CONSTRAINTS;

create table PAYDAY (
CycleDate      DATE
);

INSERT into PAYDAY values (TO_DATE('15-JAN-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-FEB-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-MAR-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-APR-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-MAY-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-JUN-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-JUL-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-AUG-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-SEP-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-OCT-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-NOV-2004','DD-MON-YYYY'));
INSERT into PAYDAY values (TO_DATE('15-DEC-2004','DD-MON-YYYY'));

COMMIT;

-- ============================================================
-- 32. PROPOSAL
-- ============================================================

DROP TABLE PROPOSAL CASCADE CONSTRAINTS;

create table PROPOSAL
(Proposal_ID        NUMBER(10) primary key,
 Recipient_Name     VARCHAR2(25),
 Proposal_Name      VARCHAR2(25),
 Short_Description  VARCHAR2(1000),
 Proposal_Text      CLOB,
 Budget             BLOB,
 Cover_Letter       BFILE);

COMMIT;

-- ============================================================
-- 33. RADIUS_VALS
-- ============================================================

DROP TABLE RADIUS_VALS CASCADE CONSTRAINTS;

create table RADIUS_VALS
(Radius      NUMBER(5));

INSERT into RADIUS_VALS values (3);

COMMIT;

-- ============================================================
-- 34. RATING
-- ============================================================

DROP TABLE RATING CASCADE CONSTRAINTS;

create table RATING
(Rating  VARCHAR2(2),
RatingDescription VARCHAR2(50));

INSERT into RATING values ('1','ENTERTAINMENT');
INSERT into RATING values ('2','BACKGROUND INFORMATION');
INSERT into RATING values ('3','RECOMMENDED');
INSERT into RATING values ('4','STRONGLY RECOMMENDED');
INSERT into RATING values ('5','REQUIRED READING');
commit;

COMMIT;

-- ============================================================
-- 35. ROSE
-- ============================================================

DROP TABLE ROSE CASCADE CONSTRAINTS;

create table ROSE (
Lodging       VARCHAR2(12)
);

INSERT into ROSE values ('ROSELYN');
INSERT into ROSE values ('ROSE HILL');
INSERT into ROSE values ('ROSE GARDEN');
INSERT into ROSE values ('ROSE');

COMMIT;

-- ============================================================
-- 36. SHIPPING
-- ============================================================

DROP TABLE SHIPPING CASCADE CONSTRAINTS;

create table SHIPPING (
Client        VARCHAR2(13),
Weight        NUMBER
);

INSERT into SHIPPING values ('JOHNSON TOOL',59);
INSERT into SHIPPING values ('DAGG SOFTWARE',27);
INSERT into SHIPPING values ('TULLY ANDOVER',NULL);

COMMIT;

-- ============================================================
-- 37. STOCK
-- ============================================================

DROP TABLE STOCK CASCADE CONSTRAINTS;

create table STOCK (
Company      VARCHAR2(20),
Symbol       VARCHAR2(6),
Industry     VARCHAR2(15),
CloseYesterday NUMBER(6,2),
CloseToday     NUMBER(6,2),
Volume         NUMBER
);

INSERT into STOCK values (
  'AD SPECIALTY', 'ADSP', 'ADVERTISING',  31.75, 31.75,
   18333876);
INSERT into STOCK values (
  'APPLE CANNERY', 'APCN', 'AGRICULTURE',  33.75, 36.50,
   25787229);
INSERT into STOCK values (
  'AT SPACE', 'ATR' , 'MEDICAL', 46.75, 48.00,
   11398323);
INSERT into STOCK values (
  'AUGUST ENTERPRISES', 'AGE', 'MEDICAL', 15.00, 15.00,
   12221711);
INSERT into STOCK values (
  'BRANDON ELLIPSIS', 'BELP', 'SPACE', 32.75, 33.50,
  25789769);
INSERT into STOCK values (
  'GENERAL ENTROPY','GENT', 'SPACE', 64.25, 66.00,
   7598562);
INSERT into STOCK values (
  'GENEVA ROCKETRY', 'GENR', 'SPACE', 22.75, 27.25,
   22533944);
INSERT into STOCK values (
  'HAYWARD ANTISEPTIC',  'HAYW', 'MEDICAL', 104.25,  106.00,
   3358561);
INSERT into STOCK values (
  'IDK', 'IDK', 'ELECTRONICS',  95.00, 95.25,
   9443523);
INSERT into STOCK values (
  'INDIA COSMETICS','INDI', 'COSMETICS', 30.75, 30.75,
   8134878);
INSERT into STOCK values (
  'ISAIAH JAMES STORAGE', 'IJS', 'TRANSPORTATION', 13.25, 13.75,
   22112171);
INSERT into STOCK values (
  'KDK AIRLINES',  'KDK', 'TRANSPORTATION', 85.00, 85.25,
   7481566);
INSERT into STOCK values (
  'KENTGEN BIOPHYSICS',  'KENT', 'MEDICAL', 18.25, 19.50,
   6636863);
INSERT into STOCK values (
  'LAVAY COSMETICS', 'LAVA', 'COSMETICS', 21.50, 22.00,
   3341542);
INSERT into STOCK values (
  'LOCAL DEVELOPMENT',  'LOCD', 'AGRICULTURE',  26.75, 27.25,
   2596934);
INSERT into STOCK values (
  'MAXTIDE'  , 'MAXT', 'TRANSPORTATION', 8.25, 8.00,
   2836893);
INSERT into STOCK values (
  'MBK COMMUNICATIONS', 'MBK', 'ADVERTISING',  43.25, 41.00,
   10022980);
INSERT into STOCK values (
  'MEMORY GRAPHICS', 'MEMG', 'ELECTRONICS',  15.50, 14.25,
   4557992);
INSERT into STOCK values (
'MICRO TOKEN', 'MICT', 'ELECTRONICS',  77.00, 76.50,
   25205667);
INSERT into STOCK values (
  'NANCY LEE FEATURES', 'NLF', 'ADVERTISING',  13.50, 14.25,
   14222692);
INSERT into STOCK values (
  'NORTHERN BOREAL', 'NBOR', 'SPACE', 26.75, 28.00,
   1348323);
INSERT into STOCK values (
  'OCKHAM SYSTEMS', 'OCKS', 'SPACE', 21.50, 22.00,
   7052990);
INSERT into STOCK values (
  'OSCAR COAL DRAYAGE', 'OCD', 'TRANSPORTATION', 87.00, 88.50,
   25798992);
INSERT into STOCK values (
  'ROBERT JAMES APPAREL', 'RJAP', 'GARMENT', 23.25, 24.00,
   19032481);
INSERT into STOCK values (
  'SOUP SENSATIONS','SOUP', 'AGRICULTURE',  16.25, 16.75,
   22574879);
INSERT into STOCK values (
  'WONDER LABS', 'WOND', 'SPACE', 5.00, 5.00,
   2553712);

COMMIT;

-- ============================================================
-- 38. STOCK_ACCOUNT
-- ============================================================

DROP TABLE STOCK_ACCOUNT CASCADE CONSTRAINTS;

create table STOCK_ACCOUNT
(Account  NUMBER(10),
AccountLongName  VARCHAR2(50));

INSERT into STOCK_ACCOUNT values (
1234, 'ADAMS');
INSERT into STOCK_ACCOUNT values (
7777, 'BURLINGTON');
commit;

COMMIT;

-- ============================================================
-- 39. STOCK_TRX
-- ============================================================

DROP TABLE STOCK_TRX CASCADE CONSTRAINTS;

create table STOCK_TRX (
Account  NUMBER(10),
Symbol  VARCHAR2(20),
Price  NUMBER(6,2),
Quantity  NUMBER(6),
Trx_Flag  VARCHAR2(1));

INSERT into STOCK_TRX values (
  1234, 'ADSP', 31.75, 100, 'B');
INSERT into STOCK_TRX values (
  7777, 'ADSP', 31.50, 300, 'S');
INSERT into STOCK_TRX values (
  1234, 'ADSP', 31.55, 100, 'B');
INSERT into STOCK_TRX values (
  7777, 'OCKS', 21.75, 1000, 'B');
commit;

COMMIT;

-- ============================================================
-- 40. TROUBLE
-- ============================================================

DROP TABLE TROUBLE CASCADE CONSTRAINTS;

create table TROUBLE (
City          VARCHAR2(13) NOT NULL,
SampleDate    DATE NOT NULL,
Noon          NUMBER(3,1),
Midnight      NUMBER(3,1),
Precipitation NUMBER
);

INSERT into TROUBLE values ('PLEASANT LAKE',
  '21-MAR-01', 39.99, -1.31, 3.6);
INSERT into TROUBLE values ('PLEASANT LAKE',
  '22-JUN-01', 101.44, 86.2, 1.63);
INSERT into TROUBLE values ('PLEASANT LAKE',
  '23-SEP-01', 92.85, 79.6, 1.00003);
INSERT into TROUBLE values ('PLEASANT LAKE',
  '22-DEC-01', -17.445, -10.4, 2.4);

COMMIT;

-- ============================================================
-- 41. TWONAME
-- ============================================================

DROP TABLE TWONAME CASCADE CONSTRAINTS;

create table TWONAME (
FirstName    VARCHAR2(25),
LastName     VARCHAR2(25)
);

COMMIT;

-- ============================================================
-- 42. WEATHER
-- ============================================================

DROP TABLE WEATHER CASCADE CONSTRAINTS;

create table WEATHER (
City         VARCHAR2(11),
Temperature  NUMBER,
Humidity     NUMBER,
Condition    VARCHAR2(9)
);

INSERT into WEATHER values ('LIMA',45,79,'RAIN');
INSERT into WEATHER values ('PARIS',81,62,'CLOUDY');
INSERT into WEATHER values ('MANCHESTER',66,98,'FOG');
INSERT into WEATHER values ('ATHENS',97,89,'SUNNY');
INSERT into WEATHER values ('CHICAGO',66,88,'RAIN');
INSERT into WEATHER values ('SYDNEY',69,99,'SUNNY');
INSERT into WEATHER values ('SPARTA',74,63,'CLOUDY');

COMMIT;

-- ============================================================
-- End of script
-- ============================================================
