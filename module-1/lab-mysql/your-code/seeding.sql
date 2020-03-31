/*
-- Query: SELECT * FROM lab_mysql.Customers
LIMIT 0, 1000

-- Date: 2020-03-31 20:50
*/
INSERT INTO `Cars` (`idCars`,`VIN`,`Manufacturer`,`Model`,`Year`,`Color`) VALUES (1,'3K096I98581DHSNUP','Volskwagen','Tiguan',2019,'Blue');
INSERT INTO `Cars` (`idCars`,`VIN`,`Manufacturer`,`Model`,`Year`,`Color`) VALUES (2,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');
INSERT INTO `Cars` (`idCars`,`VIN`,`Manufacturer`,`Model`,`Year`,`Color`) VALUES (3,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');
INSERT INTO `Cars` (`idCars`,`VIN`,`Manufacturer`,`Model`,`Year`,`Color`) VALUES (4,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver');
INSERT INTO `Cars` (`idCars`,`VIN`,`Manufacturer`,`Model`,`Year`,`Color`) VALUES (5,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
INSERT INTO `Cars` (`idCars`,`VIN`,`Manufacturer`,`Model`,`Year`,`Color`) VALUES (6,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');
INSERT INTO `Customers` (`idCustomers`,`CustomersID`,`Name`,`Phone_Number`,`Email`,`Addres`,`City`,`Province`,`Country`,`Postal_code`) VALUES (1,1001,'Pablo Picasso','+34 63617 63 82','','Paseo de la chopera, 14','Madrid','Madrid','España',28045);
INSERT INTO `Customers` (`idCustomers`,`CustomersID`,`Name`,`Phone_Number`,`Email`,`Addres`,`City`,`Province`,`Country`,`Postal_code`) VALUES (2,2001,'Abraham Lincoln','+1 305 907 7086',' ','120 SW 8th St','Miami','Florida','United Sates',33130);
INSERT INTO `Customers` (`idCustomers`,`CustomersID`,`Name`,`Phone_Number`,`Email`,`Addres`,`City`,`Province`,`Country`,`Postal_code`) VALUES (3,3001,'Napoleón Bonaparte','+33 1 79 75 40 00',' ','40 Rue de Colisée','Paris','Île-de-France','France',75008);
INSERT INTO `Invoices` (`idInvoices`,`Invoice_number`,`Date`,`Car`,`Customer`,`Salesperson`) VALUES (1,852399038,'2018-08-22','0','1','3');
INSERT INTO `Invoices` (`idInvoices`,`Invoice_number`,`Date`,`Car`,`Customer`,`Salesperson`) VALUES (3,731166526,'2018-12-31','3','0','5');
INSERT INTO `Invoices` (`idInvoices`,`Invoice_number`,`Date`,`Car`,`Customer`,`Salesperson`) VALUES (4,271135104,'2019-01-22','2','2','7');
INSERT INTO `Salespersons` (`idSalespersons`,`IDStaff`,`Name`,`Store`) VALUES (2,'00001','Petery Cruiser','Madrid');
INSERT INTO `Salespersons` (`idSalespersons`,`IDStaff`,`Name`,`Store`) VALUES (3,'00002','Anna Sthesia','Barcelona');
INSERT INTO `Salespersons` (`idSalespersons`,`IDStaff`,`Name`,`Store`) VALUES (5,'00003','Paul Molive','Berlin');
INSERT INTO `Salespersons` (`idSalespersons`,`IDStaff`,`Name`,`Store`) VALUES (6,'00004','Gail Forcewind','Paris');
INSERT INTO `Salespersons` (`idSalespersons`,`IDStaff`,`Name`,`Store`) VALUES (7,'00005','Paige Turner','Mimia');
INSERT INTO `Salespersons` (`idSalespersons`,`IDStaff`,`Name`,`Store`) VALUES (8,'0006','Bob Frapples','Mexico City');
INSERT INTO `Salespersons` (`idSalespersons`,`IDStaff`,`Name`,`Store`) VALUES (9,'0007','Shonda Leer','São Paulo');