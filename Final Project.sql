--DROP DATABASE libraryManagementDB;
--CREATE DATABASE libraryManagementDB;
USE libraryManagementDB



CREATE TABLE libraryBranch (
	branchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branchName VARCHAR(30) NOT NULL,
	branchAddress VARCHAR(50) NOT NULL
);


CREATE TABLE publisher (
	publisherName VARCHAR(30) PRIMARY KEY NOT NULL,
	publisherAddress VARCHAR(50) NOT NULL,
	publisherPhone VARCHAR(30) NOT NULL
);

CREATE TABLE books (
	bookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	bookTitle VARCHAR(50) NOT NULL,
	publisherName varchar(30) FOREIGN KEY REFERENCES publisher(publisherName) NOT NULL
);


CREATE TABLE bookAuthors (
	bookID INT FOREIGN KEY REFERENCES books(bookID) NOT NULL,
	authorName VARCHAR(30) NOT NULL
);


CREATE TABLE bookCopies (
	bookID INT FOREIGN KEY REFERENCES books(bookID) NOT NULL,
	branchID INT FOREIGN KEY REFERENCES libraryBranch(branchID) NOT NULL,
	NumberOfCopies INT NOT NULL 
);

CREATE TABLE borrower (
	cardNum VARCHAR(30) PRIMARY KEY NOT NULL,
	borrowerName VARCHAR(30) NOT NULL,
	borrowerAddress VARCHAR(30) NOT NULL,
	borrowerPhone VARCHAR(30) NOT NULL
);

CREATE TABLE bookLoans (
	bookID INT FOREIGN KEY REFERENCES books(bookID) NOT NULL,
	branchID INT FOREIGN KEY REFERENCES libraryBranch(branchID) NOT NULL,
	cardNum VARCHAR(30) FOREIGN KEY REFERENCES borrower(cardNum) NOT NULL, 
	dateOut DATE NOT NULL
);





INSERT INTO libraryBranch
	(branchName, branchAddress)
	VALUES
	('Sharpstown', '58 8th Ave Springfield, OR'),
	('Central', '420 Main St Springfield, OR'),
	('East', '7172 E Wyatt Blvd Springfield, OR'),
	('West', '2525 W Chump St Springfield, OR')
	;



INSERT INTO publisher
	(publisherName, publisherAddress, publisherPhone)
	VALUES
	('G.P. PUTNAM''S SONS', '45 Lexington Ave New York, NY  10002', '454-555-5656'),
	('CELADON BOOKS', '5256 SE Floss Blve Albany, NY  10152', '789-456-6123'),
	('LAKE UNION PUBLISHING', '24 Hendrix Ave  Tacoma, WA  99856', '123-456-7893'),
	('POTTERMORE PUBLISHING', 'PO Box 7828, London W1A 4GE, UK', '+044 5556 542565'),
	('HARPER PAPERBACKS', '1018 W. Roosevelt St. Phoenix, AZ 85007', '480-275-4280'),
	('R.R. Banks', '145 West 7th Ave  Morpib, AD', '564-568-5685'),
	('CROOKED LANE BOOKS', '15454 East 10th Ave  Mongomery, AL 56565', '165-654-7896'),
	('PENGUIN BOOKS', '10 Scattershot Ln , Georgetown, VA 44866', '157-598-9876'),
	('THOMAS & MERCER', '4564 N 10th blvd Branson, MO  45662', '456-888-9969'),
	('MONTLAKE ROMANCE', '454 Fleet St. North Tombridge, SI  45689', '778-989-6547'),
	('WILLIAM MORROW', '4585 Iam Bored LN Town Center, MA  12302', '484-651-9876'),
	('HARPERIMPULSE', '5 Fortnight Row  Blantington, OL  12587', '789-965-3214')
	;



INSERT INTO books
	(bookTitle, publisherName)
	VALUES
	('Where the Crawdads Sing', 'G.P. PUTNAM''S SONS'),
	('The Silent Patient', 'CELADON BOOKS'),
	('Where the Forest Meets the Stars', 'LAKE UNION PUBLISHING'),
	('Surprise Delivery','R.R. Banks'),
	('Harry Potter and the Sorcerer''s Stone', 'POTTERMORE PUBLISHING'),
	('What the Wind Knows', 'LAKE UNION PUBLISHING'),
	('The Coroner', 'CROOKED LANE BOOKS'),
	('Eleanor Oliphant Is Completely Fine', 'PENGUIN BOOKS'),
	('Beneath a Scarlet Sky', 'LAKE UNION PUBLISHING'),
	('The Rescue', 'THOMAS & MERCER'),
	('The Killer Collective', 'THOMAS & MERCER'),
	('The Beantown Girls' , 'LAKE UNION PUBLISHING'),
	('The Tattooist of Auschwitz', 'HARPER PAPERBACKS'),
	('Tumble', 'MONTLAKE ROMANCE'),
	('Edge of Eternity', 'PENGUIN BOOKS'),
	('The Perfect Child', 'THOMAS & MERCER'),
	('The Victory Garden', 'LAKE UNION PUBLISHING'),
	('The Lost Tribe', 'Henry Holt & Co'),
	('Christine', 'WILLIAM MORROW'),
	('The Dark Tower', 'HARPERIMPULSE')
	;


INSERT INTO bookAuthors
	(authorName)
	VALUES
	('DELIA OWENS'),
	('ALEX MICHAELIDES'),
	('GLENDY VANDERAH'),
	('R.R. BANKS'),
	('J.K. ROWLING'),
	('AMY HARMON'),
	('JENNIFER GRAESER DORNBUSH'),
	('GAIL HONEYMAN'),
	('MARK SULLIVAN'),
	('STEVEN KONKOLY'),
	('BARRY EISLER'),
	('JANE HEALEY'),
	('HEATHER MORRIS'),
	('ADRIANA LOCKE'),
	('KEN FOLLETT'),
	('LUCINDA BERRY'),
	('RHYS BOWEN'),
	('EDWARD MARRIOT'),
	('STEPHEN KING')
	;




INSERT INTO bookLoans
	





INSERT INTO borrower


*/





