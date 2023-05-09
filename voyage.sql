-- Q.3.1.1. i corrected the spelling from 'SCHEMES' to 'SCHEMA' and 
-- I also got rid of the space before and after 'and' because there should be no spaces in a database name
create schema vesselsandvoyages; 

use vesselsandvoyages; -- Here we are using the created database to write sql statements


create table ship -- creating the ship table
(
shipID int auto_increment not null,
IMONumber char(11),
Name varchar(255),
primary key(shipid)
);

-- Q.3.1.2. Used alter to change the IMOnumber properties without changing the already written code.
 alter	 table ship
 modify IMONumber char(11) not null;
 
 
 
 
 create table Voyage -- Q.3.2. creating ther voyage table
(
VoyageID int auto_increment not null,
shipID int not null,
foreign key (shipID) references Ship(shipID), -- shipid from the table ship used as a foriegn key
DepartureDate date not null,
ArrivalDate date not null,
primary key(VoyageID)
);


-- Q.3.3.

INSERT INTO ship (shipid, IMONumber, name) -- use insert function to store information on the table
VALUES (1 , 'IMO 1234567' , 'Queen of the seven Seas');
SELECT * FROM ship;

INSERT INTO Voyage (VoyageID, ShipID, DepartureDate, ArrivalDate) -- use insert function to store information on the table
VALUES (1 , 1 , '2023-01-01', '2023-02-25');
SELECT * FROM Voyage;


-- Q.3.4.

UPDATE Voyage  -- use update function to change the date of arrival
SET ArrivalDate = '2023-02-28'
WHERE VoyageID = 1;
Select * From Voyage;

