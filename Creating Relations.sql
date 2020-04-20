
CREATE TABLE Building(
BuildingID INT NOT NULL,
NoofFloors INT NOT NULL,
SectorNo INT NOT NULL,
PRIMARY KEY (BuildingID)
);

CREATE TABLE Staff(
StaffID CHAR(4) NOT NULL,
SSN CHAR(11) NOT NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
StaffEmail VARCHAR(50) NOT NULL,
PRIMARY KEY (StaffID),
UNIQUE (SSN)
);

CREATE TABLE StaffPhone(
StaffID CHAR(4) NOT NULL,
StaffPhone CHAR(12) NOT NULL,
PRIMARY KEY (StaffID, StaffPhone),
FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

CREATE TABLE Cleans(
BuildingID INT NOT NULL,
StaffID CHAR(4) NOT NULL,
CONSTRAINT cleansfk1 FOREIGN KEY (BuildingID) REFERENCES Building(BuildingID),
CONSTRAINT cleansfk2 FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

CREATE TABLE Customer(
CustID CHAR(4) NOT NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Address VARCHAR(255) NOT NULL,
MoneyAmount INT NOT NULL,
ArtStylePref VARCHAR(50) NOT NULL,
PRIMARY KEY (CustID)
);

CREATE TABLE Artist(
ArtistID CHAR(4) NOT NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
ArtStyle VARCHAR(255) NOT NULL,
PlaceofBirth VARCHAR(255) NOT NULL,
YearofBirth INT NOT NULL,
ArtistPhone CHAR(12) NOT NULL,
ArtistIDInspiredby CHAR(4),
PRIMARY KEY (ArtistID),
FOREIGN KEY (ArtistIDInspiredby) REFERENCES Artist (ArtistID)
);

CREATE TABLE Likes(
ArtistID CHAR(4) NOT NULL,
CustID CHAR(4) NOT NULL,
PRIMARY KEY (ArtistID,CustID),
FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID),
FOREIGN KEY (CustID) REFERENCES Customer(CustID)
);

CREATE TABLE ArtExhibition(
ArtExID CHAR(4) NOT NULL,
ArtExStartDate DATE NOT NULL,
BuildingID INT NOT NULL,
ArtistID Char(4) NOT NULL,
PRIMARY KEY (ArtExID),
FOREIGN KEY (BuildingID) REFERENCES Building(BuildingID),
FOREIGN KEY (ArtistID) REFERENCES Artist (ArtistID)
);

CREATE TABLE Room(
BuildingID INT NOT NULL,
RoomNo CHAR(2) NOT NULL,
ArtWorkCount INT NOT NULL,
ArtistID CHAR(4) NOT NULL,
PRIMARY KEY (BuildingID, RoomNo),
FOREIGN KEY (BuildingID) REFERENCES Building (BuildingID),
FOREIGN KEY (ArtistID) REFERENCES Artist (ArtistID)
);

CREATE TABLE Painting(
PaintingID CHAR(4) NOT NULL,
PaintingName VARCHAR(50) NOT NULL,
PaintedStyle VARCHAR(50) NOT NULL,
PaintedYear INT NOT NULL,
ArtExID CHAR(4) NOT NULL,
CustID CHAR(4),
PRIMARY KEY (PaintingID),
FOREIGN KEY (ArtExID) REFERENCES ArtExhibition (ArtExID),
FOREIGN KEY (CustID) REFERENCES Customer (CustID),
);

CREATE TABLE Visitor(
VisitorID CHAR(4) NOT NULL,
VisitingDate DATE NOT NULL,
VisitorPhone INT,
CustomerPass CHAR(3) NOT NULL,
PRIMARY KEY (VisitorID),
);

CREATE TABLE Visits(
ArtExID CHAR(4) NOT NULL,
VisitorID CHAR(4) NOT NULL,
TimeStayedinMins INT,
PRIMARY KEY (ArtExID, VisitorID),
FOREIGN KEY (ArtExID) REFERENCES ArtExhibition (ArtExID),
FOREIGN KEY (VisitorID) REFERENCES Visitor (VisitorID)
);


