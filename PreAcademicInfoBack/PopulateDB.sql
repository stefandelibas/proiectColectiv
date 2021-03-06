﻿--HOW TO USE:
--  i) RUN DELETE STATEMENTS
-- ii) MANUALLY ADD THE COMMENTED ADMINS AND THE STUDENT
--iii) RUN THE REST OF THE SCRIPT

--TRUNCATE ALL TABLES
DELETE FROM [Grade];
DBCC CHECKIDENT('Grade', RESEED, 0);
DELETE FROM [GradeToDiscipline];
DBCC CHECKIDENT('GradeToDiscipline', RESEED, 0);
DELETE FROM [Discipline];
DELETE FROM [FacultyEnroll];
DBCC CHECKIDENT('FacultyEnroll', RESEED, 0);
DELETE FROM [Group];
DBCC CHECKIDENT('Group', RESEED, 0);
DELETE FROM [Specializare];
DBCC CHECKIDENT('Specializare', RESEED, 0);
DELETE FROM [Department];
DBCC CHECKIDENT('Department', RESEED, 0);
DELETE FROM [Faculty];
DBCC CHECKIDENT('Faculty', RESEED, 0);
DELETE FROM [Student];
DELETE FROM [Teacher];
DELETE FROM [Admin];

--Admins (password = 'pass')
--INSERT INTO [Admin] (Username, Adresa, Email, NumarTelefon, Nume, Prenume, UserType, Password, Salt) VALUES ('a1', 'Str. Fericirii, Nr. 10, Ap. 10', 'admin1@yahoo.com', '0711111111', 'Admin1', 'Admin1', 2, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>'); 
--INSERT INTO [Admin] (Username, Adresa, Email, NumarTelefon, Nume, Prenume, UserType, Password, Salt) VALUES ('a2', 'Str. Nefericirii, Nr. 13, Ap. 66', 'admin2@yahoo.com', '0722222222', 'Admin2', 'Admin2', 2, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>'); 

--Teachers (password = 'pass')
-- CS Teachers
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('rares', 'rares@cs.ubbcluj.ro', '0711111111', 'Boian', 'Rareș', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('craciunf', 'craciunf@cs.ubbcluj.ro', '0711111112', 'Crăciun', 'Florin', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('dadi', 'dadi@cs.ubbcluj.ro', '0711111113', 'Darabanț', 'Sergiu Adrian', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('motogna', 'motogna@cs.ubbcluj.ro', '0711111114', 'Motogna', 'Simona', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('avescan', 'avescan@cs.ubbcluj.ro', '0711111115', 'Vescan', 'Andreea', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('iuliana', 'iuliana@cs.ubbcluj.ro', '0711111116', 'Bocicor', 'Iuliana', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('oana', 'oana@cs.ubbcluj.ro', '0711111117', 'Ciuciu', 'Oana', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('dan', 'dan@cs.ubbcluj.ro', '0711111118', 'Cojocar', 'Dan', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('radu.dragos', 'radu.dragos@cs.ubbcluj.ro', '0711111119', 'Dragos', 'Radu', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('rgaceanu', 'rgaceanu@cs.ubbcluj.ro', '0711111120', 'Gaceanu', 'Radu', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('lupea', 'lupea@cs.ubbcluj.ro', '0711111121', 'Lupea', 'Mihaiela', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('rlupsa', 'rlupsa@cs.ubbcluj.ro', '0711111122', 'Lupșa', 'Radu', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('marianzsu', 'marianzsu@cs.ubbcluj.ro', '0711111123', 'Oneț-Marian', 'Zsuzsanna Edit', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('mihoct', 'mihoct@cs.ubbcluj.ro', '0711111124', 'Mihoc', 'Tudor', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('arthur', 'arthur@cs.ubbcluj.ro', '0711111125', 'Molnar', 'Arthur', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('mihis', 'mihis@cs.ubbcluj.ro', '0711111126', 'Pop', 'Andreea-Diana', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('forest', 'forest@cs.ubbcluj.ro', '0711111127', 'Sterca', 'Adrian', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
--INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('tzutzu', 'tzutzu@cs.ubbcluj.ro', '0711111128', 'Suciu', 'Dan Mircea', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('mihai-suciu', 'mihai-suciu@cs.ubbcluj.ro', '0711111129', 'Suciu', 'Mihai', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('sabina', 'sabina@cs.ubbcluj.ro', '0711111130', 'Surdu', 'Sabina', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('vancea', 'vancea@cs.ubbcluj.ro', '0711111131', 'Vancea', 'Alexandru', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('adrianac', 'adrianac@cs.ubbcluj.ro', '0711111132', 'Coroiu', 'Adriana Mihaela', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('mircea', 'mircea@cs.ubbcluj.ro', '0711111133', 'Mircea', 'Ioan Gabriel', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('danielacristea', 'danielacristea@cs.ubbcluj.ro', '0711111134', 'Cristea', 'Daniela', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('imre', 'imre@cs.ubbcluj.ro', '0711111135', 'Zsigmond', 'Imre', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
--Math Teachers
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('crivei', 'crivei@math.ubbcluj.ro', '0711111136', 'Crivei', 'Septimiu', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('popovici', 'popovici@math.ubbcluj.ro', '0711111137', 'Popovici', 'Nicolae', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('abuica', 'abuica@math.ubbcluj.ro', '0711111138', 'Buica', 'Adriana', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('smicula', 'smicula@math.ubbcluj.ro', '0711111139', 'Micula', 'Sanda', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('cpintea', 'cpintea@math.ubbcluj.ro', '0711111140', 'Pintea', 'Cornel', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('lorinczi', 'lorinczi@math.ubbcluj.ro', '0711111141', 'Lorinczi', 'Abel', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Teacher] (Username,Email,NumarTelefon,Nume,Prenume,UserType,Password,Salt) VALUES ('lorand', 'lorand@cs.ubbcluj.ro', '0711111142', 'Paranjdi', 'Lorand', 0, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');

--Students (password = 'pass')
--INSERT INTO [Student] VALUES ('andi', 1, 3, 'aaie2000@scs.ubbcluj.ro', 2016, 'A', '0711111110', 'Abrudan', 'Andrei', 1, '1960000000000', 2000, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('biju', 1, 3, 'asie2001@scs.ubbcluj.ro', 2016, 'S', '0711111111', 'Abrudean', 'Sergiu Valentin', 1, '1960000000001', 2001, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('andre', 1, 3, 'aaie2002@scs.ubbcluj.ro', 2016, 'A', '0711111112', 'Acatrinei', 'Andreea Laura', 1, '1960000000002', 2002, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt)VALUES ('ladi', 1, 3, 'alie2003@scs.ubbcluj.ro', 2016, 'L', '0711111113', 'Andrasi', 'Ladislau', 1, '1960000000003', 2003, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dutzi', 1, 3, 'bvie2004@scs.ubbcluj.ro', 2016, 'V', '0711111114', 'Abrudan', 'Andrei', 1, '1960000000004', 2004, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('radub', 1, 3, 'brie2005@scs.ubbcluj.ro', 2016, 'R', '0711111115', 'Balc', 'Radu', 1, '1960000000005', 2005, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dorinb', 1, 3, 'bdie2006@scs.ubbcluj.ro', 2016, 'A', '0711111116', 'Balea', 'Dorin Constantin', 1, '1960000000006', 2006, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('raulb', 1, 3, 'brie2007@scs.ubbcluj.ro', 2016, 'R', '0711111117', 'Banciu', 'Raul', 1, '1960000000007', 2007, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('gman', 1, 3, 'bgie2008@scs.ubbcluj.ro', 2016, 'G', '0711111118', 'Barboi', 'George', 1, '1960000000008', 2008, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('emu', 1, 3, 'beie2009@scs.ubbcluj.ro', 2016, 'E', '0711111119', 'Barcau', 'Emanuel Teodor', 1, '1960000000009', 2009, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('rendic', 1, 3, 'brie2010@scs.ubbcluj.ro', 2016, 'R', '0711111120', 'Bendic', 'Radu', 1, '1960000000010', 2010, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('liviub', 1, 3, 'blie2011@scs.ubbcluj.ro', 2016, 'L', '0711111121', 'Berciu', 'Liviu Marian', 1, '1960000000011', 2011, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('irinab', 1, 3, 'biie2012@scs.ubbcluj.ro', 2016, 'I', '0711111122', 'Bilc', 'Irina', 1, '1960000000012', 2012, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('annab', 1, 3, 'baie2013@scs.ubbcluj.ro', 2016, 'A', '0711111123', 'Biro', 'Anna', 1, '1960000000013', 2013, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('blaja', 1, 3, 'baie2014@scs.ubbcluj.ro', 2016, 'A', '0711111124', 'Blaj', 'Andrei Sorin', 1, '1960000000014', 2014, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('sarab', 1, 3, 'bsie2015@scs.ubbcluj.ro', 2016, 'S', '0711111125', 'Boanca', 'Sara', 1, '1960000000015', 2015, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dianab', 1, 3, 'bdie2016@scs.ubbcluj.ro', 2016, 'D', '0711111126', 'Bob', 'Alexandra Diana', 1, '1960000000016', 2016, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('bogdanb', 1, 3, 'bbie2017@scs.ubbcluj.ro', 2016, 'B', '0711111127', 'Boboc', 'Bogdan', 1, '1960000000017', 2017, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('madab', 1, 3, 'bmie2018@scs.ubbcluj.ro', 2016, 'M', '0711111128', 'Boca', 'Madalina Elena', 1, '1960000000018', 2018, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('anab', 1, 3, 'baie2019@scs.ubbcluj.ro', 2016, 'A', '0711111129', 'Bocaniciu', 'Ana Maria', 1, '1960000000019', 2019, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('danielb', 1, 3, 'bdie2020@scs.ubbcluj.ro', 2016, 'D', '0711111130', 'Boier', 'Daniel', 1, '1960000000020', 2020, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt)  VALUES ('andreib', 1, 3, 'baie2021@scs.ubbcluj.ro', 2016, 'A', '0711111131', 'Bora', 'Andrei', 1, '1960000000021', 2021, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('georgeb', 1, 3, 'bgie2022@scs.ubbcluj.ro', 2016, 'G', '0711111132', 'Brata', 'George', 1, '1960000000022', 2022, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('fane', 1, 3, 'dsie2023@scs.ubbcluj.ro', 2016, 'S', '0711111133', 'Delibas', 'Stefan', 1, '1960000000023', 2023, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('ioanam', 1, 3, 'miie2024@scs.ubbcluj.ro', 2016, 'I', '0711111134', 'Macarie', 'Ioana Maria', 1, '1960000000024', 2024, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dianan', 1, 3, 'ndie2025@scs.ubbcluj.ro', 2016, 'D', '0711111135', 'Nasui', 'Diana Ioana', 1, '1960000000025', 2025, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('alexp', 1, 3, 'paie2026@scs.ubbcluj.ro', 2016, 'A', '0711111136', 'Popsor', 'Bogdan Alexandru', 1, '1960000000026', 2026, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('mirelar', 1, 3, 'rmie2027@scs.ubbcluj.ro', 2016, 'M', '0711111137', 'Rotariu', 'Mirela Ionela', 1, '1960000000027', 2027, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('denisar', 1, 3, 'rsie2028@scs.ubbcluj.ro', 2016, 'D', '0711111138', 'Rusu', 'Denisa', 1, '1960000000028', 2028, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('iulias', 1, 3, 'siie2029@scs.ubbcluj.ro', 2016, 'I', '0711111139', 'Szuhai', 'Iulia Monica', 1, '1960000000029', 2029, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');

INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('albm', 1, 2, 'amie2030@scs.ubbcluj.ro', 2017, 'M', '0711111140', 'Alb', 'Mircea Dan', 1, '1960000000030', 2030, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES('bufteam', 1, 2, 'bmie2031@scs.ubbcluj.ro', 2017, 'M', '0711111141', 'Buftea', 'Madalina Ioana', 1, '1960000000031', 2031, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('buhaia', 1, 2, 'baie2032@scs.ubbcluj.ro', 2017, 'A', '0711111142', 'Buhai', 'Alexandru', 1, '1960000000032', 2032, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('bumbara', 1, 2, 'baie2033@scs.ubbcluj.ro', 2017, 'A', '0711111143', 'Bumbar', 'Ana Maria', 1, '1960000000033', 2033, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('butnara', 1, 2, 'baie2034@scs.ubbcluj.ro', 2017, 'A', '0711111144', 'Butnar', 'Adrian', 1, '1960000000034', 2034, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('catanat', 1, 2, 'ctie2035@scs.ubbcluj.ro', 2017, 'T', '0711111145', 'Catana', 'Tudor', 1, '1960000000035', 2035, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('cernuscat', 1, 2, 'ctie2036@scs.ubbcluj.ro', 2017, 'T', '0711111146', 'Cernusca', 'Tudor', 1, '1960000000036', 2036, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('cherechess', 1, 2, 'csie2037@scs.ubbcluj.ro', 2017, 'S', '0711111147', 'Chereches', 'Sergiu Alexandru', 1, '1960000000037', 2037, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('chilomm', 1, 2, 'cmie2038@scs.ubbcluj.ro', 2017, 'M', '0711111148', 'Chilom', 'Mircea Constantin', 1, '1960000000038', 2038, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('chirtesp', 1, 2, 'cpie2039@scs.ubbcluj.ro', 2017, 'P', '0711111149', 'Chirtes', 'Paul', 1, '1960000000039', 2039, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('chisi', 1, 2, 'ciie2040@scs.ubbcluj.ro', 2017, 'I', '0711111150', 'Chis', 'Iulia Stefania', 1, '1960000000040', 2040, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('cihodarua', 1, 2, 'caie2041@scs.ubbcluj.ro', 2017, 'A', '0711111151', 'Cihodaru', 'Alexandru Ciprian', 1, '1960000000041', 2041, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('coneaa', 1, 2, 'caie2042@scs.ubbcluj.ro', 2017, 'A', '0711111152', 'Conea', 'Alexandra ioana', 1, '1960000000042', 2042, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('corneand', 1, 2, 'cdie2043@scs.ubbcluj.ro', 2017, 'D', '0711111153', 'Cornean', 'Dragos Nicolae', 1, '1960000000043', 2043, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('costem', 1, 2, 'cmie2044@scs.ubbcluj.ro', 2017, 'M', '0711111154', 'Coste', 'Madalina', 1, '1960000000044', 2044, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('cotai', 1, 2, 'ciie2045@scs.ubbcluj.ro', 2017, 'I', '0711111155', 'Cota', 'Ionas Calin', 1, '1960000000045', 2045, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('cotraua', 1, 2, 'caie2046@scs.ubbcluj.ro', 2017, 'A', '0711111156', 'Cotrau', 'Andreea', 1, '1960000000046', 2046, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('crisang', 1, 2, 'cgie2047@scs.ubbcluj.ro', 2017, 'G', '0711111157', 'Crisan', 'Gabriel Lucian', 1, '1960000000047', 2047, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('crisano', 1, 2, 'coie2048@scs.ubbcluj.ro', 2017, 'O', '0711111158', 'Crisan', 'Oana Alexandra', 1, '1960000000048', 2048, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('csokae', 1, 2, 'ceie2049@scs.ubbcluj.ro', 2017, 'E', '0711111159', 'Csoka', 'Ervin', 1, '1960000000049', 2049, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('cuibusc', 1, 2, 'ccie2050@scs.ubbcluj.ro', 2017, 'C', '0711111160', 'Cuibus', 'Ciprian', 1, '1960000000050', 2050, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('ghermana', 1, 2, 'gaie2051@scs.ubbcluj.ro', 2017, 'A', '0711111161', 'Gherman', 'Alexandru', 1, '1960000000051', 2051, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('mesaross', 1, 2, 'msie2052@scs.ubbcluj.ro', 2017, 'S', '0711111162', 'Mesaros', 'Sebastian Vasile', 1, '1960000000052', 2052, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('potrav', 1, 2, 'pvie2053@scs.ubbcluj.ro', 2017, 'V', '0711111163', 'Potra', 'Vlad Dionisie', 1, '1960000000053', 2053, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('ruble', 1, 2, 'reie2054@scs.ubbcluj.ro', 2017, 'E', '0711111164', 'Rubl', 'Eric', 1, '1960000000054', 2054, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('simiona', 1, 2, 'saie2055@scs.ubbcluj.ro', 2017, 'A', '0711111165', 'Simion', 'Alexandra Maria', 1, '1960000000055', 2055, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('sirbo', 1, 2, 'soie2056@scs.ubbcluj.ro', 2017, 'O', '0711111166', 'Sirb', 'Ovidiu Daniel', 1, '1960000000056', 2056, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('soreas', 1, 2, 'ssie2057@scs.ubbcluj.ro', 2017, 'S', '0711111167', 'Sorea', 'Sanziana', 1, '1960000000057', 2057, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('spoialaa', 1, 2, 'saie2058@scs.ubbcluj.ro', 2017, 'A', '0711111168', 'Spoiala', 'Ana Marian', 1, '1960000000058', 2058, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student]  (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('todorana', 1, 2, 'taie2059@scs.ubbcluj.ro', 2017, 'A', '0711111169', 'Todoran', 'Ana Corina', 1, '1960000000059', 2058, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');

INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dezsii', 1, 1, 'diie2060@scs.ubbcluj.ro', 2018, 'I', '0711111170', 'Dezsi', 'Imola Katalin', 1, '1960000000060', 2060, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dolotd', 1, 1, 'ddie2061@scs.ubbcluj.ro', 2018, 'D', '0711111171', 'Dolot', 'Diana Nicole', 1, '1960000000061', 2061, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dragodana', 1, 1, 'daie2062@scs.ubbcluj.ro', 2018, 'A', '0711111172', 'Dragodan', 'Alexandra Adriana', 1, '1960000000062', 2062, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dragomiri', 1, 1, 'diie2063@scs.ubbcluj.ro', 2018, 'I', '0711111173', 'Dragomir', 'Ioana Bianca', 1, '1960000000063', 2063, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dumal', 1, 1, 'dlie2064@scs.ubbcluj.ro', 2018, 'L', '0711111174', 'Duma', 'Laurentiu', 1, '1960000000064', 2064, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('dumitrascud', 1, 1, 'dmie2065@scs.ubbcluj.ro', 2018, 'M', '0711111175', 'Dumitrascu', 'Mihai Razvan', 1, '1960000000065', 2065, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('farcasa', 1, 1, 'faie2066@scs.ubbcluj.ro', 2018, 'A', '0711111176', 'Farcas', 'Alexandru', 1, '1960000000066', 2066, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('farter', 1, 1, 'frie2067@scs.ubbcluj.ro', 2018, 'R', '0711111177', 'Farte', 'Razvan Dan', 1, '1960000000067', 2067, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('fovasd', 1, 1, 'fdie2068@scs.ubbcluj.ro', 2018, 'D', '0711111178', 'Fovas', 'Denis Daniel George', 1, '1960000000068', 2068, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('fratilan', 1, 1, 'fnie2069@scs.ubbcluj.ro', 2018, 'N', '0711111179', 'Fratila', 'Nicolae', 1, '1960000000069', 2069, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('fulear', 1, 1, 'frie2070@scs.ubbcluj.ro', 2018, 'R', '0711111180', 'Fulea', 'Razvan Dorel', 1, '1960000000070', 2070, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('gaea', 1, 1, 'gaie2071@scs.ubbcluj.ro', 2018, 'A', '0711111181', 'Gae', 'Andrada Maria', 1, '1960000000071', 2071, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('galo', 1, 1, 'goie2072@scs.ubbcluj.ro', 2018, 'O', '0711111182', 'Gal', 'Oscar', 1, '1960000000072', 2072, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('galbenc', 1, 1, 'gcie2073@scs.ubbcluj.ro', 2018, 'C', '0711111183', 'Galben', 'Catalin', 1, '1960000000073', 2073, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('georgescus', 1, 1, 'gsie2074@scs.ubbcluj.ro', 2018, 'S', '0711111184', 'Georgescu', 'Stefan paul', 1, '1960000000074', 2074, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('gargelyk', 1, 1, 'gkie2075@scs.ubbcluj.ro', 2018, 'K', '0711111185', 'Gergely', 'Karoly Bela', 1, '1960000000075', 2075, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('gradi', 1, 1, 'giie2076@scs.ubbcluj.ro', 2018, 'I', '0711111186', 'Grad', 'Ionut Adrian', 1, '1960000000076', 2076, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('grigors', 1, 1, 'gsie2077@scs.ubbcluj.ro', 2018, 'S', '0711111187', 'Grigor', 'Sebastian Alexandru', 1, '1960000000077', 2077, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('grigored', 1, 1, 'gdie2078@scs.ubbcluj.ro', 2018, 'D', '0711111188', 'Grigore', 'Dragos Alexandru', 1, '1960000000078', 2078, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('grigorovicim', 1, 1, 'gmie2079@scs.ubbcluj.ro', 2018, 'M', '0711111189', 'Grigorovici', 'Monica Maria', 1, '1960000000079', 2079, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('hanganf', 1, 1, 'hfie2080@scs.ubbcluj.ro', 2018, 'F', '0711111190', 'Hangan', 'Florin', 1, '1960000000080', 2080, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('hangane', 1, 1, 'heie2081@scs.ubbcluj.ro', 2018, 'E', '0711111191', 'Hangan', 'Emilia', 1, '1960000000081', 2081, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('moldovani', 1, 1, 'miie2082@scs.ubbcluj.ro', 2018, 'I', '0711111192', 'Moldovan', 'Ioan Adrian', 1, '1960000000082', 2082, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('nacuc', 1, 1, 'ncie2083@scs.ubbcluj.ro', 2018, 'C', '0711111193', 'Nacu', 'Cristian', 1, '1960000000083', 2083, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('rachitann', 1, 1, 'rnie2084@scs.ubbcluj.ro', 2018, 'N', '0711111194', 'Rachitan', 'Nichita Mihai', 1, '1960000000084', 2084, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt)  VALUES ('stana', 1, 1, 'saie2085@scs.ubbcluj.ro', 2018, 'A', '0711111195', 'Stan', 'Adelin Stefan', 1, '1960000000085', 2085, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('stanciua', 1, 1, 'saie2086@scs.ubbcluj.ro', 2018, 'A', '0711111196', 'Stanciu', 'Ana Maria', 1, '1960000000086', 2086, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('stanilav', 1, 1, 'svie2087@scs.ubbcluj.ro', 2018, 'V', '0711111197', 'Stanila', 'Vlad Ioan', 1, '1960000000087', 2087, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('tamasi', 1, 1, 'tiie2088@scs.ubbcluj.ro', 2018, 'I', '0711111198', 'Tamas', 'Ionut Florin', 1, '1960000000088', 2088, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');
INSERT INTO [Student] (Username,Active,An,Email,Generatie,InitialaParinte,NumarTelefon,Nume,Prenume,UserType,CNP,NumarMatricol,Password,Salt) VALUES ('ungurm', 1, 1, 'umie2089@scs.ubbcluj.ro', 2018, 'M', '0711111199', 'Ungur', 'Maria', 1, '1960000000089', 2089, '$2a$11$Tpeb5j/mOlnMPMnVHTJMwOWYmAIg0G1QMMCjL2.OxZiosBzbpSqfO', 'Ӽ3����I>');

--Faculty
INSERT INTO [Faculty] (Adresa, Nume, NumeUniveristate) VALUES ('Str. Mihail Kogălniceanu, nr. 1, Cluj-Napoca', 'Facultatea de Matematică şi Informatică', 'Universitatea Babeş-Bolyai Cluj-Napoca');
--INSERT INTO [dbo.Faculty] (Adresa, Nume, NumeUniversitate) VALUES ("Str. Teodor Mihali, Nr.58-60, Cluj-Napoca", "Facultatea de Ştiinţe Economice şi Gestiunea Afacerilor", "Universitatea Babeş-Bolyai Cluj-Napoca");

--Departamente
INSERT INTO [Department] (Name, FacultyId) VALUES ('Informatică', 1);
INSERT INTO [Department] (Name, FacultyId) VALUES ('Matematică', 1);

--Specializari
INSERT INTO [Specializare] (AdminUsername, CuFrecventa, DepartmentId, DepartmentName, Limba, NumarSemestre, Nume, TaxaPerCredit, Type) VALUES ('a1', 1, 1, 'Informatică', 1, 6, 'Informatică', 360, 1); --> Info-Engleza
INSERT INTO [Specializare] (AdminUsername, CuFrecventa, DepartmentId, DepartmentName, Limba, NumarSemestre, Nume, TaxaPerCredit, Type) VALUES ('a2', 1, 2, 'Matematică', 0, 6, 'Matematica-Informatica', 260, 1);

--Groups
INSERT INTO [Group] (GroupName) VALUES ('911');
INSERT INTO [Group] (GroupName) VALUES ('912');
INSERT INTO [Group] (GroupName) VALUES ('921');
INSERT INTO [Group] (GroupName) VALUES ('922');
INSERT INTO [Group] (GroupName) VALUES ('931');
INSERT INTO [Group] (GroupName) VALUES ('932');
INSERT INTO [Group] (GroupName) VALUES ('311');
INSERT INTO [Group] (GroupName) VALUES ('312');
INSERT INTO [Group] (GroupName) VALUES ('321');
INSERT INTO [Group] (GroupName) VALUES ('322');
INSERT INTO [Group] (GroupName) VALUES ('331');
INSERT INTO [Group] (GroupName) VALUES ('332');

--Faculty Enroll
-- Info Engleza
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (1, 1, 'dezsii');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (1, 1, 'dolotd');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (1, 1, 'dragodana');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (1, 1, 'dragomiri');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (1, 1, 'dumal');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (1, 1, 'dumitrascud');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (1, 1, 'farcasa');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (2, 1, 'farter');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (2, 1, 'fovasd');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (2, 1, 'fratilan');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (2, 1, 'fulear');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (2, 1, 'gaea');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (2, 1, 'galo');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (2, 1, 'galbenc');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (2, 1, 'georgescus');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (3, 1, 'albm');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (3, 1, 'bufteam');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (3, 1, 'buhaia');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (3, 1, 'bumbara');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (3, 1, 'butnara');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (3, 1, 'catanat');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (3, 1, 'cernuscat');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (4, 1, 'cherechess');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (4, 1, 'chilomm');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (4, 1, 'chirtesp');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (4, 1, 'chisi');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (4, 1, 'cihodarua');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (4, 1, 'coneaa');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (4, 1, 'corneand');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (4, 1, 'costem');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (5, 1, 'andi');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (5, 1, 'biju');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (5, 1, 'andre');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (5, 1, 'ladi');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (5, 1, 'dutzi');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (5, 1, 'radub');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (5, 1, 'dorinb');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (6, 1, 'raulb');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (6, 1, 'gman');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (6, 1, 'emu');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (6, 1, 'rendic');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (6, 1, 'liviub');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (6, 1, 'irinab');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (6, 1, 'annab');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (6, 1, 'blaja');
-- Mate-Info
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (7, 1, 'gargelyk');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (7, 1, 'gradi');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (7, 1, 'grigors');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (7, 1, 'grigored');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (7, 1, 'grigorovicim');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (7, 1, 'hanganf');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (7, 1, 'hangane');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (8, 1, 'moldovani');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (8, 1, 'nacuc');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (8, 1, 'rachitann');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (8, 1, 'stana');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (8, 1, 'stanciua');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (8, 1, 'stanilav');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (8, 1, 'tamasi');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (8, 1, 'ungurm');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (9, 1, 'cotai');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (9, 1, 'cotraua');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (9, 1, 'crisang');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (9, 1, 'crisano');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (9, 1, 'csokae');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (9, 1, 'cuibusc');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (9, 1, 'ghermana');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (10, 1, 'mesaross');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (10, 1, 'potrav');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (10, 1, 'ruble');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (10, 1, 'simiona');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (10, 1, 'sirbo');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (10, 1, 'soreas');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (10, 1, 'spoialaa');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (10, 1, 'todorana');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (11, 1, 'sarab');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (11, 1, 'dianab');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (11, 1, 'bogdanb');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (11, 1, 'madab');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (11, 1, 'anab');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (11, 1, 'danielb');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (11, 1, 'andreib');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (12, 1, 'georgeb');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (12, 1, 'fane');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (12, 1, 'ioanam');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (12, 1, 'dianan');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (12, 1, 'alexp');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (12, 1, 'mirelar');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (12, 1, 'denisar');
INSERT INTO [FacultyEnroll] (GroupId, SpecializareId, StudentUsername) VALUES (12, 1, 'iulias');

--Disciplines
-- Info-Engleza
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE0020', 1, 5, 'Algebra', 'crivei', 0, 1, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5005', 1, 5, 'Fundamentele programarii', 'arthur', 0, 1, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5004', 1, 5, 'Arhitectura sistemelor de calcul', 'vancea', 0, 1, 1);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5006', 1, 5, 'Programare orientata obiect', 'iuliana', 0, 2, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5025', 1, 5, 'Algoritmica grafelor', 'rlupsa', 0, 2, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5007', 1, 5, 'Sisteme de operare', 'rares', 0, 2, 1);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5008', 1, 5, 'Metode avansate de programare', 'craciunf', 0, 3, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5002', 1, 5, 'Retele de calculatoare', 'dadi', 0, 3, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5027', 1, 5, 'Baze de date', 'sabina', 0, 3, 1);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5013', 1, 5, 'Medii de proiectare și programare', 'rgaceanu', 0, 4, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5015', 1, 5, 'Programare web', 'forest', 0, 4, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5029', 1, 5, 'Inteligenta artificiala', 'mihoct', 0, 4, 1);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5023', 1, 5, 'Limbaje formale şi tehnici de compilare', 'motogna', 0, 5, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLR5012', 1, 5, 'Proiect colectiv', 'tzutzu', 0, 5, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLR8112', 1, 5, 'Gestionarea proiectelor software', 'tzutzu', 1, 5, 1);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE2001', 1, 5, 'Elaborarea lucrarii de licenta', 'avescan', 0, 6, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLR5039', 1, 5, 'Fundamentele limbajelor de programare', 'vancea', 1, 6, 1);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE8115', 1, 5, 'Sabloane de proiectare', 'arthur', 1, 6, 1);

-- Mate-Info
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE0002', 1, 5, 'Analiza matematica', 'popovici', 0, 1, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5055', 1, 5, 'Logica computationala', 'lupea', 0, 1, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLR5076', 1, 5, 'Programare in C', 'mircea', 0, 1, 2);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE0014', 1, 5, 'Geometrie (geometrie analitica)', 'cpintea', 0, 2, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE0010', 1, 5, 'Sisteme dinamice', 'abuica', 0, 2, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5022', 1, 5, 'Structuri de date si algoritmi', 'marianzsu', 0, 2, 2);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE0031', 1, 5, 'Probabilitati si statistica', 'smicula', 0, 3, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5009', 1, 5, 'Programare functionala si logica', 'adrianac', 0, 3, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE0003', 1, 5, 'Analiza matematica II', 'lorinczi', 0, 3, 2);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5011', 1, 5, 'Ingineria sistemelor soft', 'imre', 0, 4, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5016', 1, 5, 'Programare web', 'forest', 0, 4, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5028', 1, 5, 'Sisteme de gestiune a bazelor de date', 'sabina', 0, 4, 2);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5077', 1, 5, 'Programare paralela si distribuita', 'rlupsa', 0, 5, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5078', 1, 5, 'Programare pentru dispozitive mobile', 'dan', 0, 5, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE0049', 1, 5, 'Criptografie cu cheie publica', 'crivei', 1, 5, 2);

INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE2002', 1, 5, 'Elaborarea lucrarii de licenta', 'avescan', 0, 6, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLE5072', 1, 5, 'Administrare de sistem si retea', 'radu.dragos', 1, 6, 2);
INSERT INTO [Discipline] (Cod, An, Credite, Nume, TeacherUsername, Type, Semestru, SpecializareId) VALUES ('MLR2006', 1, 5, 'Istoria matematicii', 'motogna', 1, 6, 2);

--Grades
-- Semester 1
-- Final grades
INSERT INTO [GradeToDiscipline] (DisciplineCod, StudentUsername) VALUES ('MLE0020', 'andi');
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 1, 5, '01/01/2019', 0, 0);
INSERT INTO [GradeToDiscipline] (DisciplineCod, StudentUsername) VALUES ('MLE5005', 'andi');
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 2, 5, '01/01/2019', 0, 0);
INSERT INTO [GradeToDiscipline] (DisciplineCod, StudentUsername) VALUES ('MLE5004', 'andi');
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (8, 3, 5, '01/01/2019', 0, 0);

-- Seminar grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 1, 1, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 2, 1, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 3, 1, '01/01/2019', 0, 0);

-- Lab grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 2, 0, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 3, 0, '01/01/2019', 0, 0);

-- Written exam grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (9, 1, 2, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 2, 2, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (5, 3, 2, '01/01/2019', 0, 0);

-- Partiam exam grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 1, 3, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (8, 3, 3, '01/01/2019', 0, 0);

-- Bonus grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 1, 4, '01/01/2019', 0, 0);

-- Semester 2
-- Final grades
INSERT INTO [GradeToDiscipline] (DisciplineCod, StudentUsername) VALUES ('MLE5006', 'andi');
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 4, 5, '01/01/2019', 0, 0);
INSERT INTO [GradeToDiscipline] (DisciplineCod, StudentUsername) VALUES ('MLE5007', 'andi');
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 5, 5, '01/01/2019', 0, 0);
INSERT INTO [GradeToDiscipline] (DisciplineCod, StudentUsername) VALUES ('MLE5025', 'andi');
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (9, 6, 5, '01/01/2019', 0, 0);

-- Seminar grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 4, 1, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 5, 1, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 6, 1, '01/01/2019', 0, 0);

-- Lab grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 4, 0, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 5, 0, '01/01/2019', 0, 0);

-- Written exam grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (9, 4, 2, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 5, 2, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (9, 6, 2, '01/01/2019', 0, 0);

-- Partiam exam grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 5, 3, '01/01/2019', 0, 0);
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (8, 6, 3, '01/01/2019', 0, 0);

-- Bonus grades
INSERT INTO [Grade] (GradeValue, GradesToDisciplineId, Type, DataNotei, ProcentInnerType, ProcentOuter) VALUES (10, 6, 4, '01/01/2019', 0, 0);
