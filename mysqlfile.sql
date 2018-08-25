DROP TABLE IF EXISTS Authors, Quotes;

CREATE TABLE IF NOT EXISTS Authors(Id INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(25)) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Quotes(Id INT PRIMARY KEY AUTO_INCREMENT, AuthorId INT, Quote VARCHAR(100), FOREIGN KEY(AuthorId) REFERENCES Authors(Id) ON DELETE CASCADE) ENGINE=InnoDB;

INSERT INTO Authors(Id, Name) VALUES(1, 'Cat');
INSERT INTO Authors(Id, Name) VALUES(2, 'Dog');
INSERT INTO Authors(Id, Name) VALUES(3, 'Bird');

INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(1, 1, 'Test Cat Quote 1');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(2, 1, 'Test Cat Quote 2');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(3, 1, 'Test Cat Quote 3');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(4, 2, 'Test Dog Quote 1');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(5, 2, 'Test Dog Quote 2');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(6, 2, 'Test Dog Quote 3');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(7, 3, 'Test Bird Quote 1');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(8, 3, 'Test Bird Quote 2');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(9, 3, 'Test Bird Quote 3');
