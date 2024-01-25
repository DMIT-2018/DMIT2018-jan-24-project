use eTools
go
-- Insert Categories
SET IDENTITY_INSERT [dbo].[Categories] ON
GO
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (1, N'Hand Saw')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (2, N'Power Saw')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (4, N'Power Drill')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (5, N'Hardware Fasteners')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (6, N'Hardware Nails')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (7, N'Power Kits')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (8, N'Hand Tool')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (10, N'Yard Equipment')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (11, N'Winter Equipment')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (12, N'Shovels')
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (13, N'Sander')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
-- Insert Coupons
SET IDENTITY_INSERT [dbo].[Coupons] ON
GO
INSERT [dbo].[Coupons] ([CouponID], [CouponIDValue], [StartDate], [EndDate], [CouponDiscount]) VALUES (4, N'Joy23','2017-11-23', '2017-11-25', 5)
INSERT [dbo].[Coupons] ([CouponID], [CouponIDValue], [StartDate], [EndDate], [CouponDiscount]) VALUES (14, N'HandsOn','2017-12-01', '2017-12-24', 5)
INSERT [dbo].[Coupons] ([CouponID], [CouponIDValue], [StartDate], [EndDate], [CouponDiscount]) VALUES (15, N'NewStarts','2017-12-26', '2011-12-31', 5)
INSERT [dbo].[Coupons] ([CouponID], [CouponIDValue], [StartDate], [EndDate], [CouponDiscount]) VALUES (18, N'SpringJump','2018-04-10', '2018-04-25', 5)
GO
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO

-- Insert Positions
SET IDENTITY_INSERT [dbo].[Positions] ON
GO
INSERT [dbo].[Positions] ([PositionID], [Description]) VALUES (1, N'Owner')
INSERT [dbo].[Positions] ([PositionID], [Description]) VALUES (2, N'Executive')
INSERT [dbo].[Positions] ([PositionID], [Description]) VALUES (3, N'Store Manger')
INSERT [dbo].[Positions] ([PositionID], [Description]) VALUES (4, N'Department Head')
INSERT [dbo].[Positions] ([PositionID], [Description]) VALUES (5, N'Associate')
INSERT [dbo].[Positions] ([PositionID], [Description]) VALUES (6, N'Technical Support')
GO
SET IDENTITY_INSERT [dbo].[Positions] OFF
GO
-- Insert Provinces
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('AB', N'Alberta')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('BC', N'British Columbia')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('MB', N'Manitoba')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('NB', N'New Brunswick')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('NL', N'Newfoundland and Labrador')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('NS', N'Nova Scotia')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('NT', N'Northwest Territories')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('NU', N'Nunavut')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('ON', N'Ontario')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('PE', N'Prince Edward Island')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('QC', N'Quebec')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('SK', N'Saskatchewan')
INSERT [dbo].[Provinces] ([ProvinceID], [Description]) VALUES ('YK', N'Yukon')
go

-- Insert Vendors
SET IDENTITY_INSERT [dbo].[Vendors] ON
GO
INSERT [dbo].[Vendors] ([VendorID], [VendorName], [Phone], [Address], [City], [ProvinceID], [PostalCode]) VALUES (1, N'HandTools Wholesale', N'780.421.1265', N'11206-106 ST.', N'Edmonton', N'AB', N'T5R6H7')
INSERT [dbo].[Vendors] ([VendorID], [VendorName], [Phone], [Address], [City], [ProvinceID], [PostalCode]) VALUES (2, N'Hardware International', N'403.632.5698', N'172 DOWNERS GROVE', N'Calgary', N'AB', N'T3W2D4')
INSERT [dbo].[Vendors] ([VendorID], [VendorName], [Phone], [Address], [City], [ProvinceID], [PostalCode]) VALUES (3, N'THOMAS Brown & Sons', N'603.556.1478', N'11206 EMPIRE BUILDING', N'Vancouver', N'BC', N'V7U9K7')
INSERT [dbo].[Vendors] ([VendorID], [VendorName], [Phone], [Address], [City], [ProvinceID], [PostalCode]) VALUES (4, N'Nuts, Bolts and Fastseners', N'780.693.2255', N'172 Pilot Cres.', N'Camrose', N'AB', N'T8G2D3')
SET IDENTITY_INSERT [dbo].[Vendors] OFF
GO

-- Insert Employees
SET IDENTITY_INSERT [dbo].[Employees] ON
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (1, N'Donna', N'Bookem', '1988-04-17', NULL, 5, 'DBookem', '8816-33 Ave', 'Sherwood Park', '7804643526', 'T8A9T1')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (2, N'Dwanye', N'Energy', '1990-06-12', NULL, 2, 'DEnergy', '670-56 St', 'Edmonton', '7804760592', 'T5W3V8')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (3, N'Hess', N'Agonor', '1992-04-25', '1996-05-22', 4, 'HAgonor', '13307-190 Ave.', 'Edmonton', '7804255077', 'T6X1F8')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (4, N'Nole', N'Itall', '1993-08-12', NULL, 5, 'NItall', '15281-176 Ave.', 'Edmonton', '7804898089', 'T6I6E1')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (5, N'Jerry', N'Kan', '1995-08-15', NULL, 5, 'JKan', '5489-47 Ave.', 'St. Albert', '7804597625', 'T8N6V2')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode])  
VALUES (6, N'Sia', N'Latter', '1996-10-30', NULL, 5, 'SLatter', '1355-87 St.', 'Edmonton', '7804902628', 'T5M9H9')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (7, N'Hugh', N'Guy', '1987-10-10', NULL, 1, 'HGuy', '7774 47 St.', 'Edmonton', '7804899160', 'T6J8A7')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (8, N'Cher', N'Power', '2000-05-30', '2003-05-22', 3, 'CPower', '5540-76 St.', 'Sherwood Park', '7804162716', 'T8A6B2')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (9, N'Nic', N'Bigguy', '2007-06-15', NULL, 2, 'NBigguy', '7027-179 Ave.', 'Edmonton', '7804561235', 'T5R4E3')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (10, N'Chip', N'Andale', '2007-07-14', NULL, 6, 'CAndale', '15186-47 Ave.', 'Edmonton', '7809534587', 'T6Y3R5')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode])  
VALUES (11, N'Shirley', N'Ujest', '1955-04-25', '1996-05-22', 5, 'SUjest', '20566-5 St.', 'Edmonton', '7809658741', 'T6H8M2')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (12, N'Oliver', N'Twisted', '1996-08-12', NULL, 5, 'OTwisted', '9815-87 St.', 'Edmonton', '7804714715', 'T5J8U6')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode])  
VALUES (13, N'Iam', N'Smart', '1995-08-15', NULL, 4, 'ISmart', '4299-17 St.', 'Edmonton', '7809653214', 'T5V7K1')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (14, N'Lowan', N'Behold', '1997-10-21', NULL, 6, 'LBehold', '3143-33 St.', 'Edmonton', '7804732569', 'T5W2E3')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (15, N'Neut', N'Pointe', '2003-06-30', NULL, 3, 'NPointe', '7489-70 Ave.', 'St Albert', '7804555364', 'T8C4N5')
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DateHired], [DateReleased], [PositionID],
[LoginID], [Address], [City], [ContactPhone], [PostalCode]) 
VALUES (19, N'martie', N'Pants', '2014-05-23', NULL, 5, 'MPants', '277 MacDonald Way', 'St Alberta', '7801236549', 'T8M3V4')
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
go

--Customers
SET IDENTITY_INSERT Customers ON 
go
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (1,'Smith','Sam','12345 - 67 St', 'Edmonton', 'AB', 'T5J1X1', '780.444.4444',  'ssmith@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (2,'Jones','John','23456 - 78 St', 'Edmonton', 'AB', 'T5J1X2', '780.432.2222',  'jjones@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (3,'Green','Vern','12563 - 33 St', 'Edmonton', 'AB', 'T5J1X3', '780.433.3333', 'vgreen@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (4,'Davids','Dave','125 - 22 St', 'Edmonton', 'AB', 'T5J1X4', '780.433.4344',  'ddavids@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (5,'Appleby','Abe','8963 - 33 St', 'Edmonton', 'AB', 'T5J1X5', '780.432.4545',  'aappleby@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (6,'Foster','Fred','12536 - 44 St', 'Edmonton', 'AB', 'T5J2X5', '780.432.6565',  'ffoster@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (7,'Forest','Fern','7895 - 55 St', 'Edmonton', 'AB', 'T5J3X2', '780.432.7676',  'fforest@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (8,'Doger','Roger','4565 - 66 St', 'Edmonton', 'AB', 'T5J4X5', '780.432.3547', 'rdoger@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (9,'Ford','Filly','7745 - 77 St', 'Edmonton', 'AB', 'T5J5X4', '780.432.4756',  'fford@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) values (10,'Decker','Dan','12578 - 88 St', 'Edmonton', 'AB', 'T5J6X3', '780.432.6768','ddecker@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(21,'Frost','Jack','10057 67 St.','Edmonton','AB','T6E0F6','780.676.9596','jfrost@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(22,'McLater','Bill','10076 63 St.','Edmonton','AB','T6Q4E5','780.580.5256','bmclater@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(23,'Sectarn','Sally','10081 172 Ave.','Edmonton','AB','T6U8T9','780.963.7620','ssectarn@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(24,'Amour','Geoff','1015 Graham Ct.','Edmonton','AB','T5Z4E5','780.128.7170','gamour@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(25,'Common','Vince','10183 57 Ave.','Edmonton','AB','T6T7Y3','780.586.4407','vcommon@telus.ca', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(26,'Down','Mark','10191 64 St.','Edmonton','AB','T6J9F6','780.386.9919','mdown@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(27,'Upton','Fred','10192 12 Ave.','Edmonton','AB','T6D4J8','780.408.2427','fupton@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(28,'Girardi','Tony','10303 122 St.','Edmonton','AB','T5J1W4','780.112.8384','tgirardi@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(29,'Pearson','Sue','10307 120 Ave.','Edmonton','AB','T5Y3R5','780.953.4813','spearson@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(30,'Welsh','Jim','10314 59 Ave.','Edmonton','AB','T5B7G8','780.740.8084','jwelsh@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(31,'Spotson','Johnny','1035 30 St.','Sherwood Park','AB','T3S6T9','780.624.3384','jspotson@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(32,'Little','Jane','10421 64 Ave.','Edmonton','AB','T5A7G5','780.600.2840','jlittle@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(33,'Margaret','Mary','10447 116 Ave.','Edmonton','AB','T5S8U3','780.901.1844','mmargaret@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(34,'Amerson','Janet','10492 15 Ave.','Edmonton','AB','T5W4C5','780.941.5875','jamerosn@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(35,'Chipper','Dirk','10504 86 Ave.','Sherwood Park','AB','T3D8U6','589.428.6764','dchipper@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(36,'Someday','Cherri','10506 145 St.','Edmonton','AB','T5K3Y4','780.395.5710','csomeday@telus.ca', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(37,'Peterson','Preston','10519 Saskatchewan Dr.','Edmonton','AB','T5M3T6','780.773.9520','ppeterson@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(38,'O''Rielly','Janey','10602 214 Ave.','Edmonton','AB','T5A4R6','780.285.5294','joreilly@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(39,'Pringle','Fredy','10616 185 St.','Edmonton','AB','T6J6X3','780.211.8017','fpringle@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(40,'Manson','Meli','10635 99 St.','Edmonton','AB','T6Q4E5','780.145.7197','mmanson@telus.ca', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(41,'Itlas','Chuck','10651 Hardisty Dr.','Edmonton','AB','T5M5G8','780.944.2773','citlas@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(42,'Koselke','Timika','1066 Ormsby Cr.','Sherwood Park','AB','T3J6U1','589.734.9644','tkoselke@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(43,'Chalen','Kenneth','10685 171 St.','Sherwood Park','AB','T3D5G7','589.385.8462','kchalen@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(44,'Favale','Mauro','10736 32 Ave.','Edmonton','AB','T5Z3E4','780.737.1458','mfavale11@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(45,'Hylander','Gerrard','10775 69 Ave.','Edmonton','AB','T5G8T9','780.903.9820','ghylander@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(46,'Sloate','Topsy','10810 33 Ave.','Edmonton','AB','T5Q5R9','780.888.5518','tsloate@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(47,'Fuelling','Adolph','10831 178 St.','Edmonton','AB','T5S4D6','780.600.2840','afuelling@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(48,'Eustice','Eliza','10918 50 Ave.','Sherwood Park','AB','T3D5Y7','970.724.9595','eeustice@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(49,'Lawyer','Rosanne','10979 16 St.','Sherwood Park','AB','T3M7U2','589.953.4813','rlawyer@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(50,'Gelderloos','Mora','1103 191 St.','Edmonton','AB','T5W9D6','780.652.6299','mgelderloos2@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(51,'Bizon','Fernando','11030 126 Ave.','Edmonton','AB','T5W8R4','780.262.2145','fbizon@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(52,'Rutenbeck','Yahweh','11043 Groat Rd.','Edmonton','AB','T6S4D4','780.289.8276','yrutenbeck5@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(53,'Schaaf','Ellan','1107 70 Ave.','Sherwood Park','AB','T3C4V5','780.654.1882','eschaaf@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(54,'Chhin','Holli','11070 212 Ave.','Edmonton','AB','T5Q4A2','780.293.6605','hchhin@elus.ca', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(55,'Kerschen','Hussein','1109 149 Ave.','Sherwood Park','AB','T3N4Y6','589.628.9518','hkerschen@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(56,'Masin','Shayla','11100 28 St.','Sherwood Park','AB','T3G5U7','589.501.9045','smasin2@hotmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(57,'Holtman','Decimus','11101 111 St.','Edmonton','AB','T5D9I9','780.107.2974','dholtman@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES(58,'Hydorn','Ernesta','11120 160 St.','Edmonton','AB','T5W6C8','780.506.1024','ehydorn@gmail.com', 1)
INSERT [dbo].[Customers] ([CustomerID], [LastName], [FirstName], [Address], [City], [ProvinceID], [Postalcode], [ContactPhone], [EmailAddress],  [AcceptableStatus]) VALUES (59,'Student','Iam','12345 - 67 St', 'Edmonton', 'AB', 'T5J1X1', '780.444.4444',  'Istudent@hotmail.com', 1)
go
SET IDENTITY_INSERT Customers Off
go

-- Insert StockItems
SET IDENTITY_INSERT [dbo].[StockItems] ON
GO
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (23, N'Dewalt Multi Speed Drill', 45.6500, 32.4100, 65, 0, 30, 0, 1, N'234-765-9', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (34, N'Dewalt Multi Speed Sander', 49.6500, 38.5600, 15, 10, 25, 0, 1, N'457-903-3', 13)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (35, N'Dewalt Combined Power Set', 152.3600, 115.6900, 52, 0, 40, 0, 1, N'358-345-1', 7)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (82, N'57mm #10 Wood Screws - 100', 12.6900, 9.4500, 1230, 0, 1000, 0, 4, N'12345-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (83, N'72mm #10 Wood Screws - 100', 12.9900, 9.7500, 1550, 0, 1000, 0, 4, N'78946-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (84, N'87mm #10 Wood Screws - 100', 13.4900, 10.9500, 980, 0, 1000, 0, 4, N'87698-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (85, N'102mm #10 Wood Screws - 100', 13.9900, 11.2500, 1340, 0, 1000, 0, 4, N'65748-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (87, N'57mm #15 Wood Screws - 100', 12.9900, 10.4500, 790, 0, 1000, 0, 4, N'13579-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (88, N'72mm #15 Wood Screws - 100', 13.5900, 10.7500, 653, 0, 1000, 0, 4, N'55566-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (89, N'87mm #10 Wood Screws - 100', 13.9900, 10.9500, 1110, 0, 1000, 0, 4, N'88667-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (111, N'8.25cm Spiral Wood Spikes - 50', 9.9900, 7.2300, 2630, 0, 2500, 0, 4, N'22456-7', 6)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (234, N'Robi Multi Speed Builders Kit', 139.9900, 95.2300, 46, 0, 30, 0, 3, N'37-5786-988', 7)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (4567, N'65 oz Hammer', 15.9900, 11.7400, 0, 0, 150, 1, 2, N'876549-98', 8)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5555, N'Canadian Solid State Stud Finder', 7.9900, 5.6500, 66, 0, 50, 0, 2, N'657483-98', 8)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5557, N'2-56 Stop Nuts', 4.9500, 2.7400, 500, 0, 100, 0, 4, N'25369-6', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5558, N'3-48 Stop Nuts', 4.9500, 2.7600, 1200, 0, 1000, 0, 4, N'25345-6', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5559, N'4-48 Stop Nut', 4.9500, 2.7600, 783, 0, 1000, 0, 4, N'23651-6', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5560, N'2-56 Pan Head Philips Machine Screw', 9.5500, 7.3500, 1300, 0, 1000, 0, 4, N'78541-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5561, N'4-40 Pan Head Philips Machine Screws', 9.5500, 7.3500, 950, 0, 1000, 0, 4, N'74125-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5562, N'6-32 Truss Head Philips Machine Screws', 9.5500, 7.3500, 1255, 0, 1000, 0, 4, N'75315-9', 5)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5563, N'6.25cm Spiral Wood Spikes - 50', 9.9900, 7.2300, 3400, 0, 2500, 0, 4, N'22365-7', 6)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5564, N'10.5cm Spiral Wood Spikes - 50', 10.9900, 8.5500, 1500, 0, 2500, 0, 4, N'22563-7', 6)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5565, N'Footprint Tools Wood Chisel Set 4 Pcs', 24.9900, 19.5600, 126, 0, 100, 0, 1, N'123-789-5', 8)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5566, N'Footprint Tools Wood Chisel Set 6', 32.9900, 26.5600, 85, 15, 100, 0, 1, N'123-456-5', 8)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5567, N'Makita 13 & 1 Racheting Screw Driver', 14.9500, 10.2500, 156, 144, 300, 0, 1, N'258-963-6', 8)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5568, N'Klein Tools Square Recess No 1 Tip Screwdriver', 14.4700, 10.1500, 289, 0, 300, 0, 1, N'258-987-6', 8)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5569, N'Klein Tools Screwdriver 7 Pcs ', 77.6700, 62.3500, 245, 0, 250, 0, 1, N'258-456-6', 8)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5570, N'Klein Tools Conduit Fitting/Reaming Screwdriver', 44.6700, 38.4900, 123, 0, 100, 0, 1, N'258-753-6', 8)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5571, N'FatMax 15 inch H-Saw with Blade Arrmor', 21.9900, 18.2300, 263, 0, 200, 0, 1, N'365-485-7', 1)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5572, N'Dewalt Folding JabSaw', 19.9900, 15.6800, 79, 71, 150, 0, 1, N'326-985-7', 1)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5573, N'Empire Level 12inch Mitre Box with Saw', 13.9900, 8.5600, 79, 0, 50, 0, 1, N'357-951-7', 1)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5574, N'Irwin Jack 10 in. Dovetail Saw', 11.9300, 8.6500, 173, 0, 150, 0, 1, N'321-987-7', 1)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5575, N'Razorback Round Point', 34.0000, 26.0000, 23, 0, 75, 0, 1, N'147-852-1', 12)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5576, N'Razorback 35in Handle Round Point', 39.9900, 31.9800, 12, 0, 75, 0, 1, N'125-784-1', 12)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5577, N'Razorback Square Point with Handle', 37.9900, 29.5200, 53, 0, 50, 0, 1, N'164-864-1', 12)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5578, N'Grant Shovel round Point Handle', 24.9900, 18.6500, 12, 0, 75, 0, 1, N'153-426-1', 12)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5579, N'Botanica Compact Shovel Round Point', 16.9900, 13.5600, 65, 0, 50, 0, 2, N'123654-12', 12)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5580, N'Botanica D grip Round Point 35 in', 13.4900, 10.8900, 2, 0, 65, 0, 2, N'147852-12', 12)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5581, N'Snow Joe 11 in 10 Amp Electric Snow Shovel', 159.0000, 129.6500, 15, 0, 50, 0, 2, N'579315-58', 11)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5582, N'Toro Electric Power Shovel Snowblower', 138.0000, 115.4500, 23, 0, 65, 0, 2, N'528649-58', 11)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5583, N'Toro 1500 Electric PowerCurve Snowblower', 248.0000, 206.7800, 6, 0, 25, 0, 2, N'568429-58', 11)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5584, N'Yukon Sleigh Shovel', 39.9900, 27.5600, 125, 0, 75, 0, 2, N'698745-25', 11)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5585, N'Echo 21.2 CC Tiler/Cultivator', 347.0000, 265.5400, 5, 0, 25, 0, 2, N'968574-14', 10)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5586, N'Echo 22.8 cc Straight shaft Trimmer', 349.0000, 310.9500, 15, 0, 50, 0, 2, N'965234-14', 10)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5587, N'Echo 25.4 cc Handheld Power Blower', 199.0000, 154.5600, 16, 0, 25, 0, 2, N'956824-14', 10)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5588, N'Milwaukee Tradesman Drill 7.5amp 3/8 in', 79.9900, 45.2300, 35, 0, 50, 0, 1, N'365-214-9', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5589, N'Milwaukee M12 Fuel 1/2 Drill/Driver Kit', 189.0000, 153.2000, 35, 0, 25, 0, 1, N'612-354-9', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5590, N'Ryobi ONE lithium Drill Kit 18V', 109.0000, 79.6500, 60, 0, 50, 0, 2, N'889955-45', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5591, N'Ryobi One Lithium compact Drill 18v', 159.0000, 123.5600, 25, 0, 25, 0, 2, N'879568-45', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5592, N'Makita 12v Driver Drill Kit', 129.0000, 103.5600, 35, 0, 50, 0, 2, N'856324-45', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5593, N'Ryobi 3/8 in Corded Drill', 49.9900, 35.2600, 23, 0, 75, 0, 2, N'878795-45', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5594, N'Dewalt HD 3/8 VSR Keyless Chuck', 69.9800, 53.9600, 89, 0, 50, 0, 3, N'25-5896-874', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5595, N'Ridgid 18v Hyper Lithium Drill Kit', 99.0000, 72.5600, 36, 0, 50, 0, 3, N'25-9638-741', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5596, N'Ridgid 12v X4 Drill and Light', 159.0000, 127.5400, 65, 0, 50, 0, 3, N'25-7412-785', 4)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5597, N'Makita 7 1/4 Circular Saw', 119.0000, 95.2300, 89, 0, 100, 0, 2, N'167943-58', 2)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5598, N'Ridgid 10in Portable Table Saw with Stand', 540.0000, 450.2300, 65, 0, 40, 0, 3, N'44-5566-888', 2)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5599, N'Ridgid 12in Sliding Compound  Mitre Saw with Laser', 549.0000, 462.2300, 24, 0, 30, 0, 3, N'44-8526-978', 2)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5600, N'Makita Scroll Saw', 232.9900, 179.2500, 17, 0, 20, 0, 2, N'397128-52', 2)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5601, N'Black and Decker 15amp 7 1/4 Circular Saw', 69.9900, 37.8800, 75, 0, 100, 0, 3, N'43-8569-521', 2)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5602, N'Ryobi 10in Mitre Saw with Laser', 129.0000, 98.5400, 46, 0, 40, 0, 2, N'846597-89', 2)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5603, N'Black and Decker GelMax Mouse', 39.9900, 25.8900, 110, 0, 100, 0, 3, N'55-6633-897', 13)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5604, N'Ryobi ONE 5in Random Orbit Sander 18v', 49.9900, 32.7800, 83, 0, 100, 0, 2, N'147852-85', 13)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5605, N'Triton Palm Belt Sander', 79.9900, 45.2300, 112, 0, 80, 0, 3, N'33-5648-218', 13)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5606, N'Triton 3in X 21 in Variable Speed Belt Sander', 159.9900, 127.4500, 16, 0, 60, 0, 3, N'33-4859-112', 13)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5607, N'Milwaukee 1/4 Sheet Palm Sander', 79.9900, 49.6500, 85, 0, 100, 0, 1, N'332-564-4', 13)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5608, N'Makita Cordless Kit 6 Tools', 699.0000, 612.2300, 24, 0, 25, 0, 2, N'159753-77', 7)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5609, N'Makita LCT 2-Piece Impact / Driver Drill Combo', 249.0000, 193.4500, 55, 0, 75, 0, 2, N'156324-77', 7)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5610, N'Ryobi ONE Lithium 6pc Ultimate Combo Kit - 18V', 349.0000, 289.5600, 27, 0, 25, 0, 2, N'216547-77', 7)
INSERT [dbo].[StockItems] ([StockItemID], [Description], [SellingPrice], [PurchasePrice], [QuantityOnHand], [QuantityOnOrder], [ReOrderLevel], [Discontinued], [VendorID], [VendorStockNumber], [CategoryID]) VALUES (5611, N'Ridgid 18v X4 5pc Combo Kit', 549.0000, 473.5600, 19, 0, 30, 0, 3, N'34-5689-74', 7)
GO
SET IDENTITY_INSERT [dbo].[StockItems] OFF
GO

-- Rental Equipment
SET IDENTITY_INSERT [dbo].[RentalEquipment] ON
GO

INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (1, N'Dewalt Combined Power Set', N'DW-48Y-01', N'5467988RT4', 24.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (2, N'Dewalt Combined Power Set', N'DW-48Y-01', N'5467222RT4', 24.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (3, N'Dewalt Combined Power Set', N'DW-48Y-01', N'5467145RT4', 24.95, N'motor burn out', 0, 1)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (4, N'Dewalt Combined Power Set', N'DW-48Y-01', N'5467772RT4', 24.95, N'Good, chipped', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (5, N'Robi Multi Speed Builders Kit', N'RBB-49', N'RE567A2E4', 20.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (6, N'Robi Multi Speed Builders Kit', N'RBB-49', N'RE567A4B4', 20.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (7, N'Echo 21.2 CC Tiler/Cultivator', N'TC-21-45', N'1254TT589', 18.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (8, N'Echo 21.2 CC Tiler/Cultivator', N'TC-21-45', N'1254TT234', 18.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (9, N'Echo 21.2 CC Tiler/Cultivator', N'TC-21-45', N'1254TT115', 18.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (10, N'Echo 21.2 CC Tiler/Cultivator', N'TC-21-45', N'1254TT983', 18.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (11, N'Makita 7 1/4 Circular Saw', N'897-MK-7-25', N'MK456789A234', 16.95, N'Good refurbished', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (12, N'Makita 7 1/4 Circular Saw', N'897-MK-7-25', N'MK456789A111', 16.95, N'Good ', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (13, N'Ridgid 10in Portable Table Saw with Stand', N'TSS56789', N'5467988RT4', 18.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (14, N'Ridgid 10in Portable Table Saw with Stand', N'TSS56789', N'5467123RT4', 18.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (15, N'Ridgid 10in Portable Table Saw with Stand', N'TSS56789', N'5467456RT4', 18.95, N'dropped not repairable', 0, 1)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (16, N'Ridgid 12in Sliding Compound  Mitre Saw with Laser', N'SCMSL-098', N'27978MSL4', 22.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (17, N'Ridgid 12in Sliding Compound  Mitre Saw with Laser', N'SCMSL-098', N'27456MSL4', 22.95, N'under repair', 0, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (18, N'Triton 3in X 21 in Variable Speed Belt Sander', N'TRI-VSBS-3X21', N'15975364', 12.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (19, N'Triton 3in X 21 in Variable Speed Belt Sander', N'TRI-VSBS-3X21', N'15975364', 12.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (20, N'Triton 3in X 21 in Variable Speed Belt Sander', N'TRI-VSBS-3X21', N'15975364', 12.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (21, N'Milwaukee 1/4 Sheet Palm Sander', N'M-25Y-SPS', N'3948576AA45', 12.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (22, N'Milwaukee 1/4 Sheet Palm Sander', N'M-25Y-SPS', N'3948576AA45', 12.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (23, N'Milwaukee 1/4 Sheet Palm Sander', N'M-25Y-SPS', N'3948576AA45', 12.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (24, N'Milwaukee 1/4 Sheet Palm Sander', N'M-25Y-SPS', N'3948576AA45', 12.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (25, N'King Canada KC-15CM', N'KC-15CM', N'765T8976', 25.95, N'Good, dents', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (26, N'King Canada KC-15CM', N'KC-15CM', N'765T8976', 25.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (27, N'King Canada KC-15CM', N'KC-15CM', N'765T8976', 25.95, N'Working, refurbished', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (28, N'Kobalt Concrete Mixer SGY-CM 4-CU ft', N'SGY-CM4', N'666O987U7', 25.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (29, N'Kobalt Concrete Mixer SGY-CM 4-CU ft', N'SGY-CM4', N'6612347U7', 25.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (30, N'Garant Lawn roller', N'GL-19in', N'356749', 10.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (31, N'Garant Lawn roller', N'GL-19in', N'353657', 10.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (32, N'Garant Lawn roller', N'GL-19in', N'356123', 10.95, N'Working', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (33, N'Hydraulic Trencher 18in', N'HT-345-18', N'HT098F567', 35.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (34, N'Power Rake', N'BB-109PR21', N'258456978', 15.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (35, N'Power Rake', N'BB-109PR21', N'255463778', 15.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (36, N'Power Rake', N'BB-109PR21', N'251234578', 15.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (37, N'Power Rake', N'BB-109PR21', N'258446678', 15.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (38, N'Aerator 19in', N'BB-34A19', N'342598789', 15.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (39, N'Aerator 19in', N'BB-34A19', N'341234569', 15.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (40, N'Aerator 19in', N'BB-34A19', N'323454569', 15.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (41, N'Aerator 19in', N'BB-34A19', N'341234777', 15.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (42, N'Vibratory Plate Compactor', N'DW-VPC-234', N'5463344PT4', 24.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (43, N'Vibratory Plate Compactor', N'DW-VPC-234', N'5666344PT5', 24.95, N'Good', 1, 0)
INSERT[RentalEquipment] (RentalEquipmentID, Description, ModelNumber, SerialNumber, DailyRate, Condition, Available, Retired) VALUES (44, N'Vibratory Plate Compactor', N'DW-VPC-234', N'5461114PT4', 24.95, N'Good', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[RentalEquipment] OFF
GO




-- Insert Purchase Orders
SET IDENTITY_INSERT [dbo].[PurchaseOrders] ON
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (345, '2017-09-06', 1, 13, 230.2700, 4605.4200, 1, null)
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (346, '2017-10-03', 1, 13, 510.9500, 10219.0500, 1, null)
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (347, '2017-10-09', 2, 15, 309.5000, 6189.9500, 1, null)
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (348, '2017-10-15', 4, 13, 2186.2500, 43725.0000, 1, null)
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (349, '2017-10-22', 4, 13, 1069.6300, 21392.5000, 1, null)
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (350, '2017-10-28', 1, 15, 595.8900, 11917.7500, 1, null)
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (351, '2017-11-04', 2, 15, 238.0800, 4761.5000, 1, null)
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (352, '2017-11-11', 1, 13, 192.8000, 3856.0000, 1, null)
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (353, '2017-11-16', 4, 13, 2251.2500, 45025.0000, 1, null)
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (354, '2017-11-21', 1, 13, 2510.6800, 50213.5000, 1, null)
--order example  placed not recieved
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (358, '2017-11-29', 1, 3, 168.6600, 3373.2800, 0, null)
--order example open but no details, to be used in demo as an in processing order
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (359, null, 3, 3, 0.0000, 0.0000, 0, null)
--order example open with details, to be used in demo as an in processing order 
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [OrderDate], [VendorID], [EmployeeID], [TaxAmount], [SubTotal], [Closed], [Notes]) VALUES (360, null, 2, 3, 735.3300, 14706.5100, 0, null)
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrders] OFF
GO

-- Insert Purchase Order Details
SET IDENTITY_INSERT [dbo].[PurchaseOrderDetails] ON
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (1, 345, 23, 32.4100, 60)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (2, 345, 34, 38.5600, 15)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (3, 345, 35, 115.6900, 18)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (4, 346, 34, 38.5600, 70)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (5, 346, 35, 115.6900, 65)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (6, 347, 234, 95.2300, 65)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (7, 348, 82, 6.4500, 2000)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (8, 348, 83, 6.7500, 2000)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (9, 348, 85, 7.2500, 1500)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (10, 348, 87, 6.4500, 1000)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (11, 349, 85, 7.2500, 2000)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (12, 349, 111, 4.2300, 1500)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (13, 349, 5555, 3.6500, 150)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (14, 350, 23, 32.4100, 100)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (15, 350, 35, 115.6900, 75)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (16, 351, 234, 95.2300, 50)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (17, 352, 34, 38.5600, 100)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (18, 353, 82, 6.4500, 1250)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (19, 353, 83, 6.7500, 1800)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (20, 353, 84, 6.9500, 1300)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (21, 353, 85, 7.2500, 2000)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (22, 353, 5555, 3.6500, 350)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (23, 354, 23, 32.4100, 300)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (24, 354, 34, 38.5600, 300)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (25, 354, 35, 115.6900, 250)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (26, 358, 34, 38.5600, 10)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (27, 358, 5566, 26.5600, 15)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (28, 358, 5567, 10.2500, 144)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (31, 358, 5572, 15.6800, 71)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (37, 360, 5581, 129.6500, 35)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (38, 360, 5582, 115.4500, 42)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (39, 360, 5583, 206.7800, 19)
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [StockItemID], [PurchasePrice], [Quantity]) VALUES (40, 360, 5587, 154.5600, 9)
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrderDetails] OFF
go
-- insert Rentals
SET IDENTITY_INSERT [dbo].[Rentals] ON
go
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(1,35,1,null,31.90,1.60,'Sep 16 2017 9:00AM','Sep 16 2017 4:16PM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(3,26,4,null,15.95,0.80,'Sep 16 2017 9:15AM','Sep 16 2017 2:40PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(4,48,1,null,243.40,12.17,'Sep 16 2017 9:35AM','Sep 20 2017 3:10PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(5,44,4,null,7.98,0.40,'Sep 16 2017 11:30AM','Sep 16 2017 3:05PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(6,47,4,null,15.95,0.80,'Sep 17 2017 12:20PM','Sep 17 2017 5:50PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(7,50,4,null,26.90,1.35,'Sep 17 2017 13:20PM','Sep 18 2017 11:10AM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(8,28,1,null,24.95,1.25,'Sep 17 2017 13:25PM','Sep 18 2017 12:10PM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(10,57,4,null,128.55,6.43,'Sep 17 2017 14:10PM','Sep 21 2017 11:50AM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(14,58,4,null,10.95,0.55,'Sep 17 2017 14:30PM','Sep 18 2017 1:30PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(15,54,1,null,93.80,4.69,'Sep 23 2017 2:00PM','Sep 25 2017 1:10PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(18,45,4,null,90.83,4.54,'Sep 29 2017 10:10AM','Oct 2 2017 2:00PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(21,10,1,null,15.95,0.80,'Sep 30 2017 11:00AM','Sep 30 2017 5:45PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(29,21,1,null,15.95,0.80,'Oct 1 2017 8:20AM','Oct 1 2017 5:25PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(31,24,1,null,185.55,9.28,'Oct 1 2017 8:45AM','Oct 3 2017 4:05PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(35,51,1,null,49.90,2.50,'Oct 1 2017 10:20AM','Oct 3 2017 9:00AM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(36,33,5,null,9.48,0.47,'Oct 1 2017 1:00PM','Oct 1 2017 4:50PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(42,40,4,null,47.85,2.39,'Oct 2 2017 12:10PM','Oct 3 2017 5:10PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(47,27,5,null,37.43,1.87,'Oct 7 2017 8:20AM','Oct 8 2017 11:20AM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(48,30,5,null,38.93,1.95,'Oct 7 2017 8:50AM','Oct 8 2017 10:55AM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(50,30,5,null,38.93,1.95,'Oct 7 2017 9:35AM','Oct 8 2017 11:35AM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(51,8,1,null,18.95,0.95,'Oct 7 2017 9:40AM','Oct 7 2017 5:41PM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(57,41,4,null,25.95,1.30,'Oct 7 2017 9:50AM','Oct 7 2017 4:55PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(59,55,4,null,9.48,0.47,'Oct 7 2017 2:00PM','Oct 7 2017 5:50PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(60,42,1,null,9.48,0.47,'Oct 7 2017 5:40PM','Oct 8 2017 9:40AM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(64,32,4,null,9.48,0.47,'Oct 8 2017 10:00AM','Oct 8 2017 2:20PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(65,1,1,null,31.90,1.60,'Oct 14 2017 10:05AM','Oct 14 2017 5:45PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(71,4,1,null,9.48,0.47,'Oct 14 2017 10:20AM','Oct 14 2017 1:55PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(72,5,1,null,9.48,0.47,'Oct 14 2017 10:35AM','Oct 14 2017 2:30PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(76,6,1,null,18.95,0.95,'Oct 14 2017 10:50AM','Oct 15 2017 10:00AM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(80,7,1,null,49.90,2.50,'Oct 14 2017 2:00PM','Oct 18 2017 1:10PM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(83,38,5,null,64.28,3.21,'Oct 21 2017 1:20PM','Oct 22 2017 5:10PM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(86,29,5,null,79.75,3.99,'Oct 21 2017 2:00PM','Oct 23 2017 5:00PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(87,34,1,null,7.98,0.40,'Oct 22 2017 1:40AM','Oct 22 2017 4:40AM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(92,22,1,null,45.90,2.30,'Nov  4 2017 10:10AM','Nov  6 2017 8:10AM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(93,43,1,null,74.85,3.74,'Nov 24 2017 11:50AM','Nov 27 2017 12:00PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(97,56,5,null,42.38,2.12,'Nov 24 2017 2:00PM','Nov 26 2017 4:45PM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(100,9,1,null,75.80,3.79,'Nov 25 2017 9:05AM','Nov 29 2017 8:05AM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(101,37,5,null,198.98,9.95,'Nov 30 2017 9:50AM','Dec 2 2017 12:00PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(107,52,5,null,18.95,0.95,'Dec  2 2017 12:00PM','Dec  3 2017 10:40PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(111,39,5,null,20.95,1.05,'Dec  3 2017 8:10AM','Dec  3 2017 5:30PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(122,26,5,null,57.38,2.87,'Dec 13 2017 9:00AM','Dec 15 2017 11:50AM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(133,53,5,null,79.80,3.99,'Dec 16 2017 11:00AM','Dec 18 2017 11:10AM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(139,23,5,null,12.95,0.65,'Dec 16 2017 11:45AM','Dec 17 2017 10:00AM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(140,46,5,null,109.75,5.49,'Dec 16 2017 12:10PM','Dec 18 2017 4:10PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(152,2,1,null,170.55,8.53,'Dec 27 2017 9:40AM','Dec 29 2017 4:40PM','D')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(153,49,4,null,104.75,5.24,'Dec 28 2017 10:00AM','Dec 30 2017 2:05PM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(162,6,5,null,22.95,1.15,'Dec 29 2017 8:25AM','Dec 29 2017 5:40PM','C')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(173,8,5,null,31.43,1.57,'Jan  5 2018 8:10AM','Jan  5 2018 4:30PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(174,21,5,null,32.38,1.62,'Jan  5 2018 9:20AM','Jan  7 2018 12:10PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(182,36,5,null,12.95,0.65,'Jan 13 2018 12:10PM','Jan 14 2018 11:20AM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(190,31,5,null,12.95,0.65,'Jan 14 2018 8:45AM','Jan 14 2018 4:10PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(191,47,5,null,12.95,0.65,'Jan 14 2018 9:10AM','Jan 14 2018 5:10PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(202,34,5,null,32.38,1.62,'Jan 19 2018 9:20AM','Jan 21 2018 1:10PM','M')
INSERT INTO [dbo].[Rentals] ([RentalID],[CustomerID],[EmployeeID],[CouponID],[SubTotal],[TaxAmount],[RentalDateOut],[RentalDateIn],[PaymentType]) VALUES(232,3,1,null,12.48,0.62,'Feb  3 2018 1:05PM','Feb  3 2018 5:40PM','D')
go
SET IDENTITY_INSERT [dbo].[Rentals] OFF
go

-- insert RentalDetails
SET IDENTITY_INSERT [dbo].[RentalDetails] ON
go
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(24,1,36,1.0,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(25,1,37,1.0,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(26,3,39,1.0,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(27,4,4,4.0,24.95,'Good, chipped','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(28,4,17,4.0,22.95,'under repair','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(29,4,22,4.0,12.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(30,5,40,0.5,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(31,6,37,0.5,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(32,6,40,0.5,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(33,7,30,1.0,10.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(34,7,41,1.0,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(35,8,42,1.0,24.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(36,10,25,4.0,25.95,'Good, dents','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(37,10,43,4.0,24.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(38,14,30,1.0,10.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(42,15,32,2.0,10.95,'Working','leaking',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(43,15,33,2.0,35.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(59,18,26,3.5,25.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(63,21,34,1.0,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(64,29,34,1.0,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(67,31,29,3.0,25.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(78,31,30,3.0,10.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(79,31,42,3.0,24.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(120,35,1,2.0,24.95,'Good','good',0.00,'had to charge batteries')
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(148,36,10,0.5,18.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(246,42,37,1.5,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(247,42,38,1.5,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(267,47,44,1.5,24.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(268,48,28,1.5,25.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(269,50,29,1.5,25.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(311,51,9,1.0,18.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(340,57,27,1.0,25.95,'Working, refurbished','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(341,59,7,0.5,18.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(342,60,7,0.5,18.95,'Good','good',0.00,'needed to clean first')
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(343,64,9,0.5,18.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(361,65,37,1.0,15.95,'Good','good, clean',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(363,65,38,1.0,15.95,'Good','good, clean',0.00,'vibrates badly')
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(376,71,7,0.5,18.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(379,72,7,0.5,18.95,'Good','good clean',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(389,76,8,1.0,18.95,'Good','good needs better cleaning',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(410,80,4,2.0,24.95,'Good, chipped','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(450,83,31,1.5,10.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(451,83,36,1.5,15.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(452,83,38,1.5,15.95,'Good','Good, clean',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(453,86,14,2.5,18.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(454,86,21,2.5,12.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(466,87,35,0.5,15.95,'Good','good ',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(475,92,16,2.0,22.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(485,93,4,3.0,24.95,'Good, chipped','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(499,97,12,2.5,16.95,'Good ','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(512,100,15,4.0,18.95,'dropped not repairable','broken while returning',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(555,101,5,3.5,20.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(556,101,16,3.5,22.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(557,101,18,3.5,12.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(559,107,13,1.0,18.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(568,111,6,1.0,20.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(570,122,16,2.5,22.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(610,133,5,2.0,20.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(611,133,14,2.0,18.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(624,139,21,1.0,12.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(637,140,2,2.5,24.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(638,140,13,2.5,18.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(679,152,5,3.0,20.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(680,152,16,3.0,22.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(681,152,21,3.0,12.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(694,153,2,2.5,24.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(695,153,11,2.5,16.95,'Good refurbished','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(771,162,17,1.0,22.95,'under repair','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(772,173,6,1.5,20.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(773,174,20,2.5,12.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(785,182,19,1.0,12.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(796,190,19,1.0,12.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(800,191,23,1.0,12.95,'Good','good',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(845,202,24,2.5,12.95,'Good','good, needs cleaning',0.00, null)
INSERT [dbo].[RentalDetails] ([RentalDetailID],[RentalID],[RentalEquipmentID],[RentalDays],[RentalRate],[OutCondition],[InCondition],[DamageRepairCost],[Comments]) VALUES(875,232,3,0.5,24.95,'motor burn out','not working',0.00,'bad burning smell')
go
SET IDENTITY_INSERT [dbo].[RentalDetails] OFF
go

--insert ReceiveOrders
set identity_Insert ReceiveOrders ON
go
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (1,345, '2017-09-15',4)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (4,345, '2017-09-18',4)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (10,346, '2017-10-08',6)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (12,346, '2017-10-14',4)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (13,347, '2017-10-14',5)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (14,346, '2017-10-15',12)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (15,346, '2017-10-17',12)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (20,348, '2017-10-21',4)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (23,348, '2017-10-25',4)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (24,349, '2017-10-25',6)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (25,350, '2017-11-03',4)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (26,350, '2017-11-05',4)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (27,351, '2017-11-09',4)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (28,352, '2017-11-15',3)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (30,350, '2017-11-23',4)
INSERT INTO ReceiveOrders (ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) Values (31,353, '2017-11-23',4)
go
set identity_Insert ReceiveOrders Off
go

-- insert RecevieOrderDetails
set identity_Insert ReceiveOrderDetails ON
go
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(1,1,1,60)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(2,1,2,10)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(3,1,3,18)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(14,4,2,5)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(23,10,4,50)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(24,10,5,30)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(33,12,4,20)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(34,13,6,65)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(35,14,5,30)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(36,15,5,5)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(63,20,7,2000)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(64,20,8,1800)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(65,20,9,1500)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(66,20,10,500)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(75,23,8,200)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(76,23,10,500)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(77,24,11,200)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(78,24,12,1500)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(79,24,13,150)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(80,25,14,50)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(81,25,15,50)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(82,26,14,50)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(83,27,16,50)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(84,28,17,100)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(86,30,15,25)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(87,31,18,1200)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(88,31,19,1800)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(89,31,20,1300)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(90,31,21,1726)
INSERT INTO ReceiveOrderDetails (ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) VALUES(91,31,22,321)
go
set identity_Insert ReceiveOrderDetails Off
go

-- insert ReturnedOrderDetails

set identity_Insert ReturnedOrderDetails ON
go
INSERT INTO ReturnedOrderDetails (ReturnedOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, ItemDescription, Quantity, Reason, VendorStockNumber) VALUES(1,1,1,null,5,'Broken',null)
INSERT INTO ReturnedOrderDetails (ReturnedOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, ItemDescription, Quantity, Reason, VendorStockNumber) VALUES(6,10,5,null,35,'Packaging',null)
INSERT INTO ReturnedOrderDetails (ReturnedOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, ItemDescription, Quantity, Reason, VendorStockNumber) VALUES(8,15,5,null,30,'overage',null)
INSERT INTO ReturnedOrderDetails (ReturnedOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, ItemDescription, Quantity, Reason, VendorStockNumber) VALUES(12,24,13,null,15,'overage',null)
INSERT INTO ReturnedOrderDetails (ReturnedOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, ItemDescription, Quantity, Reason, VendorStockNumber) VALUES(13,24,null,'Rear Lamp',55,'Not ordered','JU-78-JKY8')
INSERT INTO ReturnedOrderDetails (ReturnedOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, ItemDescription, Quantity, Reason, VendorStockNumber) VALUES(14,25,14,null,50,'Damaged',null)
INSERT INTO ReturnedOrderDetails (ReturnedOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, ItemDescription, Quantity, Reason, VendorStockNumber) VALUES(16,31,18,null,50,'Damaged',null)
go
set identity_Insert ReturnedOrderDetails OFF
go
-- Insert Sales

--SET IDENTITY_INSERT [dbo].[Sales] ON
--GO
--INSERT [dbo].[Sales] ([SaleID], [SaleDate], [PaymentType], [EmployeeID], [TaxAmount], [SubTotal], [CouponID]) VALUES (463, CAST(0x0000A33300FAB8A6 AS DateTime), N'M', 4, 4.6400, 92.8900, NULL)
--GO
--SET IDENTITY_INSERT [dbo].[Sales] OFF
--GO

-- Insert SaleDetails

--SET IDENTITY_INSERT [dbo].[SaleDetails] ON
--GO
--INSERT [dbo].[SaleDetails] ([SaleDetailID], [SaleID], [StockItemID], [SellingPrice], [Quantity]) VALUES (1, 463, 83, 12.9900, 1)
--INSERT [dbo].[SaleDetails] ([SaleDetailID], [SaleID], [StockItemID], [SellingPrice], [Quantity]) VALUES (2, 463, 5555, 7.9900, 10)
--GO
--SET IDENTITY_INSERT [dbo].[SaleDetails] OFF
--GO
