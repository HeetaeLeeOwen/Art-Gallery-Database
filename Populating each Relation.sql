
INSERT INTO Building(BuildingID, NoofFloors, SectorNo)
VALUES 
(101, 3, 1),
(102, 2, 1),
(103, 3, 1),
(201, 3, 2),
(202, 3, 2),
(301, 4, 3),
(302, 2, 3),
(401, 3, 4),
(402, 3, 4),
(403, 4, 4);

INSERT INTO Staff(StaffID, SSN, FirstName, LastName, StaffEmail)
VALUES
('M01', '144-05-4835', 'Rick', 'Johnson', 'RickCJohnson@usa-lasvegas.com'),
('F01', '612-38-4843', 'Mariano', 'Jefferson', 'MarianoMJefferson@hotmail.com'),
('M02', '410-72-8796', 'Larry', 'Stewart', 'LarryHStewart@gmail.com'),
('M03', '575-47-8219', 'Felix', 'Joseph', 'FelixKJoseph@outlook.com'),
('F02', '370-11-8299', 'Angela', 'Mason', 'AngelaPMason@msn.com'),
('F03', '458-39-4338', 'Rosalin', 'Herman', 'RosalinHerman@gmail.com'),
('F04', '434-31-6481', 'Anne', 'Clevenger', 'AnneAClevenger@yahoo.com'),
('F05', '636-46-9410', 'Holly', 'Brown', 'HollyEBrown@gmail.com'),
('M04', '689-07-5344', 'Shawn', 'Shroyer', 'ShawnAShroyer@yahoo.com'),
('F06', '134-58-4568', 'Madonna', 'Leonardo', 'MaddonaGLeonardo@gmail.com');

INSERT INTO StaffPhone(StaffID, StaffPhone)
VALUES
('M01', '815-460-5975'),
('M01', '815-799-1516'),
('F01', '561-244-5267'),
('M02', '956-432-1827'),
('M02', '956-855-5332'),
('M03', '810-374-4279'),
('F02', '573-718-3883'),
('F02', '573-824-6866'),
('F03', '520-398-1073'),
('F04', '402-201-1319'),
('F04', '402-237-1124'),
('F05', '623-698-0816'),
('M04', '517-315-0974'),
('F06', '804-532-5302'),
('F06', '804-332-1234');

INSERT INTO Cleans(BuildingID, StaffID)
VALUES
(101, 'M01'),
(101, 'F04'),
(101, 'F05'),
(102, 'M02'),
(102, 'M03'),
(102, 'M01'),
(103, 'F01'),
(103, 'F06'),
(201, 'F01'),
(202, 'M03'),
(202, 'F02'),
(301, 'F05'),
(301, 'F06'),
(301, 'F04'),
(302, 'F02'),
(401, 'M02'),
(401, 'M04'),
(402, 'M03'),
(402, 'F03'),
(402, 'M04'),
(403, 'F03'),
(403, 'M03');

INSERT INTO Customer(CustID, FirstName, LastName, Address, MoneyAmount, ArtStylePref)
VALUES
('C01', 'Owen', 'Lee', '2123 Goodwin Avenue Wenatchee, WA 98801', 4000000, 'Impressionism'),
('C02', 'Tory', 'Carpenter', '4495 Hawks Nest Lane Saint Louis, MO 63104', 3000000, 'Post-Impressionism'),
('C03', 'Ashley', 'Collins', '1524 Huntz Lane Westford, MA 01886', 1000000, 'Modernism'),
('C04', 'Thomas', 'Brown', '1710 Lynn Avenue Minong, WI 54859', 900000, 'Pop Art'),
('C05', 'Banana', 'Bread', '2502 Melville Street Martin, TN 38237', 15000000, 'Impressionism'),
('C06', 'Alex', 'Finley', '1513 Liberty Street Dallas, TX 75240', 3000000, 'Modern Art'),
('C07', 'Tom', 'Hanks', '4688 Adonais Way Atlanta, GA 30308', 890000, 'Western Art'),
('C08', 'Delbert', 'Perera', '620 Geneva Street Westbury, NY 11590', 4000000, 'Impressionism'),
('C09', 'Rosalin', 'Herman', '1121 Lowndes Hill Park Road Bakersfield, CA 93301', 9000000, 'Expressionism'),
('C10', 'Dan', 'Long', '739 Traction Street Inman, SC 29349', 12000000, 'Renaissance'),
('C11', 'Inthu', 'Sky', '3161 Sussex Court Dallas, TX 75207', 4000000, 'Pop Art'),
('C12', 'Bobby', 'Miller', '2986 Raver Croft Drive Chattanooga, TN 37404', 2000000, 'Modern Art');

INSERT INTO Artist(ArtistID, FirstName, LastName, ArtStyle, PlaceofBirth, YearofBirth, ArtistPhone, ArtistIDInspiredby)
VALUES
('A01', 'Vincent', 'Van Gogh', 'Modern Art', 'Spain', '1881', '636-928-8136', NULL),
('A02', 'Pablo', 'Picasso', 'Post-Impressionism', 'Netherlands', '1853', '209-418-5176', NULL),
('A03', 'Leonardo', 'Da Vinci', 'Renaissance', 'Republic of Florence', '1452', '501-481-7051', NULL),
('A04', 'Michelango', 'Lodovico Buonarroti Simoni', 'Western Art', 'Republic of Florence', '1475', '201-653-6458', NULL),
('A05', 'Edvard', 'Munch', 'Expressionism', 'Norway', '1944', '989-637-8251', NULL),
('A06', 'Claude', 'Monet', 'Pop Art', 'France', '1840', '502-296-5945', NULL),
('A07', 'Édouard', 'Manet', 'Impressionism', 'France', '1832', '870-713-9082', NULL),
('A08', 'Ernst', 'Kirchner', 'Expressionism', 'Germany', '1880', '815-457-1600', 'A01'),
('A09', 'Roy', 'Lichtenstein', 'Pop Art', 'U.S.', '1923', '212-658-3562', 'A02'),
('A10', 'Marko', 'Mavrovich', 'Impressionism', 'U.S.', '1960', '770-943-0394', 'A06'),
('A11', 'Yuval', 'Wolfson', 'Impressionism', 'Israel', '1966', '215-951-2714', 'A06'),
('A12', 'Stephen', 'Bauman', 'Modernism', 'U.S.', '1952', '509-381-3013', 'A03');

INSERT INTO Likes(ArtistID, CustID)
VALUES
('A01', 'C02'),
('A01', 'C04'),
('A02', 'C07'),
('A02', 'C08'),
('A02', 'C01'),
('A03', 'C11'),
('A04', 'C10'),
('A05', 'C12'),
('A05', 'C06'),
('A06', 'C03'),
('A06', 'C12'),
('A06', 'C09'),
('A07', 'C04'),
('A07', 'C03'),
('A08', 'C01'),
('A09', 'C10'),
('A10', 'C03'),
('A11', 'C01'),
('A12', 'C02'),
('A12', 'C01');

INSERT INTO ArtExhibition(ArtExID, ArtExStartDate, BuildingID, ArtistID)
VALUES
('Ex01', '2020-06-03', 402,'A01'),
('Ex02', '2020-06-04', 201,'A03'),
('Ex03', '2020-06-07', 301,'A06'),
('Ex04', '2020-06-01', 103,'A04'),
('Ex05', '2020-06-09', 101,'A11'),
('Ex06', '2020-06-05', 403,'A02'),
('Ex07', '2020-06-01', 102,'A09'),
('Ex08', '2020-06-08', 201,'A12'),
('Ex09', '2020-06-02', 401,'A10'),
('Ex10', '2020-06-08', 202,'A07'),
('Ex11', '2020-06-01', 302,'A05'),
('Ex12', '2020-06-10', 302,'A08');

INSERT INTO Room(BuildingID, RoomNo, ArtWorkCount, ArtistID)
VALUES
(101, 'R1', 15, 'A01'),
(102, 'R1', 12, 'A06'),
(103, 'R1', 7, 'A07'),
(201, 'R1', 5, 'A10'),
(202, 'R2', 14, 'A02'),
(301, 'R1', 11, 'A12'),
(301, 'R2', 18, 'A11'),
(302, 'R1', 12, 'A03'),
(302, 'R2', 14, 'A05'),
(401, 'R1', 15, 'A09'),
(402, 'R1', 19, 'A04'),
(403, 'R1', 13, 'A08');


INSERT INTO Painting(PaintingID, PaintingName, PaintedStyle, PaintedYear, ArtExID, CustID)
VALUES
('P01', 'Mona Lisa', 'Oil Painting', 1503, 'Ex02', 'C02'),
('P02', 'The Starry Night', 'Oil Painting', 1889, 'Ex01', 'C01'),
('P03', 'Water Lilies', 'Oil Painting', 1896, 'Ex03', 'C07'),
('P04', 'Street, Berlin', 'Oil Painting', 1913, 'Ex12', NULL),
('P05', 'Last Supper', 'Oil Painting', 1495, 'Ex02', 'C01'),
('P06', 'Les Demoiselles d’Avignon', 'Oil Painting', 1907, 'Ex06', NULL),
('P07', 'La Vie', 'Acrylic Painting', 1903, 'Ex06', NULL),
('P08', 'Sunflowers', 'Oil Painting', 1888, 'Ex01', 'C09'),
('P09', 'The Crucifixion of St. Peter', 'Oil Painting', 1546, 'Ex04', NULL),
('P10', 'Spring Ploughing', 'Oil Painting', 1918, 'Ex11', 'C05'),
('P11', 'Harbor', 'Dye Sublimation', 1960, 'Ex05', 'C03'),
('P12', 'Mirror I', 'Painted bronze', 1977, 'Ex07', 'C01'),
('P13', 'When I Was Young', 'Oil Painting', 2014, 'Ex08', NULL),
('P14', 'Waiting For Another Busy Day on the Canal', 'Acrylic Painting', 2014, 'Ex09', 'C04'),
('P15', 'Boating', 'Oil Painting', 1874, 'Ex10', 'C07');

INSERT INTO Visitor(VisitorID,VisitingDate,VisitorPhone,CustomerPass)
VALUES
('V01', '2020-06-03', NULL, 'Yes'),
('V02', '2020-06-10', NULL, 'No'),
('V03', '2020-06-09', NULL, 'Yes'),
('V04', '2020-06-01', NULL, 'Yes'),
('V05', '2020-06-05', NULL, 'No'),
('V06', '2020-06-04', NULL, 'Yes'),
('V07', '2020-06-07', NULL, 'No'),
('V08', '2020-06-06', NULL, 'No'),
('V09', '2020-06-02', NULL, 'Yes'),
('V10', '2020-06-03', NULL, 'Yes'),
('V11', '2020-06-06', NULL, 'No'),
('V12', '2020-06-02', NULL, 'Yes');

INSERT INTO Visits(ArtExID,VisitorID,TimeStayedinMins)
VALUES
('Ex01', 'V01', 30),
('Ex01', 'V03', 50),
('Ex02', 'V07', 40),
('Ex03', 'V10', NULL),
('Ex04', 'V11', 40),
('Ex04', 'V04', 80),
('Ex05', 'V08', 50),
('Ex06', 'V02', NULL),
('Ex07', 'V04', 70),
('Ex08', 'V12', 60),
('Ex09', 'V03', NULL),
('Ex10', 'V09', 30),
('Ex11', 'V05', 10),
('Ex12', 'V02', 90);
