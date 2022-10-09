/* Create table about the people and what they do here */

-- Famous People and their spouses 
drop table if exists famous_People;
CREATE TABLE if not exists Famous_People (id INTEGER Primary KEY,
first_name TEXT,
last_name TEXT,
birthdate TEXT,
occupation integer,
spouse_id integer);

INSERT INTO Famous_People (id, first_name, last_Name, birthdate, occupation,spouse_id)
VALUES (1,'Leonardo', 'Dicaprio', '11-11-1974', 1,6);
INSERT INTO Famous_People (id, first_name, last_Name, birthdate, occupation,spouse_id)
VALUES (2, 'Willie', 'Nelson', '04-29-1933', 2,7);
INSERT INTO Famous_People (id,first_name, last_Name, birthdate, occupation, spouse_id)
VALUES (3,'Misty', 'Copeland', '09-10-1982', 3, 8);
INSERT INTO Famous_People (id,first_name, last_Name, birthdate, occupation, spouse_id)
VALUES (4,'Doutzen', 'Kroes', '01-23-1985', 4, 9);
INSERT INTO Famous_People (id,first_name, last_Name, birthdate, occupation, spouse_id)
VALUES (5,'Jack', 'Nicholson', '04-22-1937', 1, 10);
INSERT INTO Famous_People (id,first_name, last_Name, birthdate, occupation, spouse_id)
VALUES (6,'Christoph', 'Waltz', '10-04-1956', 1, 1);
INSERT INTO Famous_People (id,first_name, last_Name, birthdate, occupation, spouse_id)
VALUES (7,'Bob', 'Fosse', '04-27-1911', 3, 2);
INSERT INTO Famous_People (id,first_name, last_Name, birthdate, occupation, spouse_id)
VALUES (8,'Thom', 'Yorke', '10-07-1968', 2, 3);
INSERT INTO Famous_People (id,first_name, last_Name, birthdate, occupation, spouse_id)
VALUES (9,'Kate', 'Moss', '01-16-1974', 4, 4);
INSERT INTO Famous_People (id,first_name, last_Name, birthdate, occupation, spouse_id)
VALUES (10,'Cary', 'Grant', '01-18-1904', 5,5);

--What they might do
CREATE TABLE Profession (id INTEGER PRIMARY KEY, 
title TEXT, people_id integer);

INSERT INTO Profession VALUES (1, 'Actor', 1);
INSERT INTO Profession VALUES (2, 'Musician', 2);
INSERT INTO Profession VALUES (3, 'Dancer', 3);
INSERT INTO Profession VALUES (4, 'Model', 4);
INSERT INTO Profession VALUES (5, 'Actor', 5);
INSERT INTO Profession VALUES (6, 'Skiier', 10);
INSERT INTO Profession VALUES (7, 'Guitarist', 9);
INSERT INTO Profession VALUES (8, 'Ballet Dancer', 8);
INSERT INTO Profession VALUES (9, 'IG Model', 7);
INSERT INTO Profession VALUES (10, 'Stuntist', 6);

--What they do 
select Famous_people.First_name as Name, Profession.title as Their_Profession
from Famous_People
join Profession on Famous_people.id=Profession.people_id;


--Who they are married to using Self join 
Select Person1.First_name as Name, Spouse.first_name as Spouse_name
from famous_people as Person1
join famous_people Spouse on Person1.id=Spouse.spouse_id;


--What each spouse does. 
Select Person1.First_name as Actor, Spouse.first_name as Spouse_name, Profession.title as Spouse_Job
from famous_people as Person1
join famous_people Spouse on Person1.id=Spouse.spouse_id
join Profession on Spouse.id=profession.people_id;






