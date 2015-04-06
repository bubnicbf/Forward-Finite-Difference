CREATE TABLE list (n INTEGER, v REAL);
INSERT INTO list VALUES (0, 90);
INSERT INTO list VALUES (1, 47);
INSERT INTO list VALUES (2, 58);
INSERT INTO list VALUES (3, 29);
INSERT INTO list VALUES (4, 22);
INSERT INTO list VALUES (5, 32);
INSERT INTO list VALUES (6, 55);
INSERT INTO list VALUES (7, 5);
INSERT INTO list VALUES (8, 55);
INSERT INTO list VALUES (9, 73);
 
CREATE VIEW diff1 AS SELECT list.n, (SELECT NEXT.v FROM list AS NEXT WHERE NEXT.n = list.n + 1) - list.v AS v FROM list;
CREATE VIEW diff2 AS SELECT list.n, (SELECT NEXT.v FROM diff1 AS NEXT WHERE NEXT.n = list.n + 1) - list.v AS v FROM diff1 AS list;
 
SELECT * FROM diff1;
    0|-43.0
    1|11.0
    2|-29.0
    3|-7.0
    4|10.0
    5|23.0
    6|-50.0
    7|50.0
    8|18.0
    9|
SELECT * FROM diff2;
    0|54.0
    1|-40.0
    2|22.0
    3|17.0
    4|13.0
    5|-73.0
    6|100.0
    7|-32.0
    8|
    9|
