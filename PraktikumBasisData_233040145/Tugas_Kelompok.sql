Use Tugas_Kelompok
CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY IDENTITY (1, 1),
	Name VARCHAR(50)NOT NULL, 
	Email VARCHAR(50)NOT NULL UNIQUE,
	PhoneNumber VARCHAR(15)NOT NULL,
	LicenseNumber VARCHAR(20)NOT NULL UNIQUE
);

CREATE TABLE Vehicles (
	VehicleID INT PRIMARY KEY IDENTITY (1, 1),
	Brand VARCHAR(50)NOT NULL,
	Model VARCHAR(50)NOT NULL,
	Year INT NOT NULL,
	PricePerDay DECIMAL(10, 2)NOT NULL,
	Availability BIT NOT NULL
);

CREATE TABLE Rentals (
	RentalID INT PRIMARY KEY IDENTITY (1, 1),
	CustomerID INT NOT NULL, 
	VehicleID INT NOT NULL, 
	RentalDate DATETIME NOT NULL,
	ReturnDate DATETIME NOT NULL,
	TotalAmount DECIMAL(10, 2)NOT NULL, 
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),  
    RentalID INT NOT NULL,                     
    PaymentDate DATETIME NOT NULL,             
    Amount DECIMAL(10, 2) NOT NULL,            
    PaymentMethod VARCHAR(50) NOT NULL,        
    FOREIGN KEY (RentalID) REFERENCES Rentals(RentalID)  
);

CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY IDENTITY(1,1),   
    CustomerID INT NOT NULL,                     
    Comments VARCHAR(255) NULL,              
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)  
);

CREATE TABLE Returns (
    ReturnID INT PRIMARY KEY IDENTITY(1,1),   
    RentalID INT NOT NULL,                                 
    Condition VARCHAR(50) NOT NULL,            
    AdditionalFees DECIMAL(10, 2) NULL,      
    FOREIGN KEY (RentalID) REFERENCES Rentals(RentalID)  
);


-- Isi data Customers
INSERT INTO Customers (Name, Email, PhoneNumber, LicenseNumber)
VALUES 
('Rapi Adyatma', 'rapiadyatma@gmail.com', '085156649004', 'D765097123'),
('Raihan Rektor', 'raihanganteng32@example.com', '081320510502', 'D0238765132'),
('Yapi Alexandria', 'yapinuno@example.com', '0813245679907', 'E987182634'),
('Dhiaulhaq Laturua', 'laturuadhiaulhaq@example.com', '085657812478', 'BE675127653'),
('Safiq Kaang', 'safiqkeren15@example.com', '08123456780', 'L123456780'),
('Bob Sadino', 'bobsdn13.builder@example.com', '089620102380', 'L657429877'),
('Charlie St12', 'charlieputh@example.com', '085156649005', 'D765097124'),
('Daisy Flower', 'flowerdaisy@example.com', '081320510503', 'D0238765133'),
('Edward Robinson', 'edrob@example.com', '0813245679908', 'E987182635'),
('George Pattinson', 'pattinsongeorge@example.com', '085657812479', 'BE675127654'),
('Bruce Wayne Hartono', 'arkhamsolo@example.com', '08123456781', 'L123456781'),
('Hannah Dimana', 'anakkambingsaya@example.com', '089620102381', 'L657429878'),
('Hanah Kambing Saya', 'adadikampung.baru@example.com', '085156649006', 'D765097125'),
('Dennis Sumargo', 'sumargo.dennis@example.com', '081320510504', 'D0238765134'),
('Kenny Rogers Siregar', 'kenny.rogers@example.com', '0813245679909', 'E987182636'),
('Liam Neeson Sukanto', 'liam.neeson@example.com', '085657812480', 'BE675127655'),
('Mickey Mouse Laturua', 'mickey.mouse@example.com', '08123456782', 'L123456782'),
('Nina Bobo', 'nina@example.com', '089620102382', 'L657429879'),
('Oscar Oasis', 'oscaroasis@example.com', '085156649007', 'D765097126'),
('Paul McCartney Walker', 'johniwalker@example.com', '081320510505', 'D0238765135'),
('Quinn Talker', 'windtalker@example.com', '0813245679910', 'E987182637'),
('Ron Weasley Silaban', 'ron.weasley@example.com', '085657812481', 'BE675127656'),
('Samantha Smith Letme', 'letmegetwhatiwant@example.com', '08123456783', 'L123456783'),
('Tim Burton Matulessy', 'timburton@example.com', '089620102383', 'L657429880'),
('Marcus Thuram', 'marcusthuram33@example.com', '085156649008', 'D765097127'),
('Victor Oshimen', 'oshimenvictor31@example.com', '081320510506', 'D0238765136'),
('Winnie Winnie Chicken Dinner', 'wwcd@example.com', '0813245679911', 'E987182638'),
('Xena Warrior Fighter', 'xenawarrior@example.com', '085657812482', 'BE675127657'),
('Yoda Jedi', 'yodajedi@example.com', '08123456784', 'L123456784'),
('Raya and the Last Dragon', 'sisudatu@example.com', '089620102384', 'L657429881');

SELECT * FROM Customers

-- Isi data Vehicles
INSERT INTO Vehicles (Brand, Model, Year, PricePerDay, Availability) VALUES
('Toyota', 'Camry', 2020, 750000.00, 1),
('Honda', 'Civic', 2019, 675000.00, 1),
('Ford', 'Focus', 2021, 600000.00, 1),
('Chevrolet', 'Malibu', 2018, 825000.00, 0),
('Nissan', 'Altima', 2022, 900000.00, 1),
('Hyundai', 'Elantra', 2020, 720000.00, 1),
('Kia', 'Optima', 2019, 705000.00, 1),
('Subaru', 'Impreza', 2021, 780000.00, 0),
('Volkswagen', 'Jetta', 2020, 735000.00, 1),
('Mazda', '3', 2018, 645000.00, 1),
('BMW', '3 Series', 2021, 1125000.00, 1),
('Mercedes-Benz', 'C-Class', 2020, 1275000.00, 1),
('Audi', 'A4', 2019, 1200000.00, 0),
('Lexus', 'IS', 2022, 1350000.00, 1),
('Porsche', 'Macan', 2021, 1800000.00, 1),
('Tesla', 'Model 3', 2020, 1500000.00, 1),
('Dodge', 'Charger', 2019, 1050000.00, 1),
('Chrysler', '300', 2021, 975000.00, 1),
('Jeep', 'Cherokee', 2020, 825000.00, 0),
('GMC', 'Terrain', 2018, 750000.00, 1),
('Volkswagen', 'Tiguan', 2021, 930000.00, 1),
('Ford', 'Escape', 2020, 870000.00, 1),
('Honda', 'CR-V', 2019, 1005000.00, 1),
('Hyundai', 'Tucson', 2022, 945000.00, 1),
('Nissan', 'Rogue', 2021, 915000.00, 0),
('Chevrolet', 'Equinox', 2020, 810000.00, 1),
('Subaru', 'Forester', 2019, 990000.00, 1),
('Mazda', 'CX-5', 2021, 1080000.00, 1),
('Kia', 'Sportage', 2022, 1020000.00, 1),
('Toyota', 'RAV4', 2020, 1110000.00, 0);

SELECT * FROM Vehicles

-- Isi data Rentals
INSERT INTO Rentals (CustomerID, VehicleID, RentalDate, ReturnDate, TotalAmount) VALUES
(1, 1, '2024-01-01 10:00:00', '2024-01-05 10:00:00', 3000000.00),
(2, 2, '2024-01-02 09:00:00', '2024-01-06 09:00:00', 2700000.00),
(3, 3, '2024-01-03 08:30:00', '2024-01-07 08:30:00', 2400000.00),
(4, 4, '2024-01-04 11:00:00', '2024-01-08 11:00:00', 3300000.00),
(5, 5, '2024-01-05 12:00:00', '2024-01-09 12:00:00', 3600000.00),
(6, 6, '2024-01-06 14:00:00', '2024-01-10 14:00:00', 2880000.00),
(7, 7, '2024-01-07 15:00:00', '2024-01-11 15:00:00', 2820000.00),
(8, 8, '2024-01-08 16:00:00', '2024-01-12 16:00:00', 3120000.00),
(9, 9, '2024-01-09 17:00:00', '2024-01-13 17:00:00', 2940000.00),
(10, 10, '2024-01-10 18:00:00', '2024-01-14 18:00:00', 2580000.00),
(11, 11, '2024-01-11 10:00:00', '2024-01-15 10:00:00', 4500000.00),
(12, 12, '2024-01-12 09:00:00', '2024-01-16 09:00:00', 5100000.00),
(13, 13, '2024-01-13 08:30:00', '2024-01-17 08:30:00', 4800000.00),
(14, 14, '2024-01-14 11:00:00', '2024-01-18 11:00:00', 5400000.00),
(15, 15, '2024-01-15 12:00:00', '2024-01-19 12:00:00', 7200000.00),
(16, 16, '2024-01-16 14:00:00', '2024-01-20 14:00:00', 6000000.00),
(17, 17, '2024-01-17 15:00:00', '2024-01-21 15:00:00', 4200000.00),
(18, 18, '2024-01-18 16:00:00', '2024-01-22 16:00:00', 3900000.00),
(19, 19, '2024-01-19 17:00:00', '2024-01-23 17:00:00', 3300000.00),
(20, 20, '2024-01-20 18:00:00', '2024-01-24 18:00:00', 3000000.00),
(21, 21, '2024-01-21 10:00:00', '2024-01-25 10:00:00', 3720000.00),
(22, 22, '2024-01-22 09:00:00', '2024-01-26 09:00:00', 3480000.00),
(23, 23, '2024-01-23 08:30:00', '2024-01-27 08:30:00', 4020000.00),
(24, 24, '2024-01-24 11:00:00', '2024-01-28 11:00:00', 3780000.00),
(25, 25, '2024-01-25 12:00:00', '2024-01-29 12:00:00', 3240000.00),
(26, 26, '2024-01-26 14:00:00', '2024-01-30 14:00:00', 3960000.00),
(27, 27, '2024-01-27 15:00:00', '2024-01-31 15:00:00', 4320000.00),
(28, 28, '2024-01-28 16:00:00', '2024-02-01 16:00:00', 4080000.00),
(29, 29, '2024-01-29 17:00:00', '2024-02-02 17:00:00', 4440000.00),
(30, 30, '2024-01-30 18:00:00', '2024-02-03 18:00:00', 3000000.00);

SELECT * FROM Rentals

-- Isi data Payments
INSERT INTO Payments (RentalID, PaymentDate, Amount, PaymentMethod) VALUES
(2, '2024-01-01 10:00:00', 3000000.00, 'Kartu Kredit'),
(3, '2024-01-02 09:00:00', 2700000.00, 'Transfer Bank'),
(4, '2024-01-03 08:30:00', 2400000.00, 'Kartu Debit'),
(5, '2024-01-04 11:00:00', 3300000.00, 'Kartu Kredit'),
(6, '2024-01-05 12:00:00', 3600000.00, 'Transfer Bank'),
(7, '2024-01-06 14:00:00', 2880000.00, 'Kartu Debit'),
(8, '2024-01-07 15:00:00', 2820000.00, 'Kartu Kredit'),
(9, '2024-01-08 16:00:00', 3120000.00, 'Transfer Bank'),
(10, '2024-01-09 17:00:00', 2940000.00, 'Kartu Debit'),
(11, '2024-01-10 18:00:00', 2580000.00, 'Kartu Kredit'),
(12, '2024-01-11 10:00:00', 4500000.00, 'Transfer Bank'),
(13, '2024-01-12 09:00:00', 5100000.00, 'Kartu Debit'),
(14, '2024-01-13 08:30:00', 4800000.00, 'Kartu Kredit'),
(15, '2024-01-14 11:00:00', 5400000.00, 'Transfer Bank'),
(16, '2024-01-15 12:00:00', 7200000.00, 'Kartu Debit'),
(17, '2024-01-16 14:00:00', 6000000.00, 'Kartu Kredit'),
(18, '2024-01-17 15:00:00', 4200000.00, 'Transfer Bank'),
(19, '2024-01-18 16:00:00', 3900000.00, 'Kartu Debit'),
(20, '2024-01-19 17:00:00', 3300000.00, 'Kartu Kredit'),
(21, '2024-01-20 18:00:00', 3000000.00, 'Transfer Bank'),
(22, '2024-01-21 10:00:00', 3720000.00, 'Kartu Debit'),
(23, '2024-01-22 09:00:00', 3480000.00, 'Kartu Kredit'),
(24, '2024-01-23 08:30:00', 4020000.00, 'Transfer Bank'),
(25, '2024-01-24 11:00:00', 3780000.00, 'Kartu Debit'),
(26, '2024-01-25 12:00:00', 3240000.00, 'Kartu Kredit'),
(27, '2024-01-26 14:00:00', 3960000.00, 'Transfer Bank'),
(28, '2024-01-27 15:00:00', 4320000.00, 'Kartu Debit'),
(29, '2024-01-28 16:00:00', 4080000.00, 'Kartu Kredit'),
(30, '2024-01-29 17:00:00', 4440000.00, 'Transfer Bank'),
(31, '2024-01-30 18:00:00', 3000000.00, 'Kartu Debit');

SELECT * FROM Payments

-- Isi data Reviews
INSERT INTO Reviews (CustomerID, Comments) VALUES
(1, 'Pelayanan sangat baik, kendaraan dalam kondisi prima.'),
(2, 'Pengalaman menyenangkan, akan kembali lagi.'),
(3, 'Kualitas kendaraan sangat memuaskan, terima kasih!'),
(4, 'Proses penyewaan cepat dan mudah, sangat direkomendasikan.'),
(5, 'Sangat puas dengan layanan dan kondisi mobilnya.'),
(6, 'Pengemudi ramah dan profesional, pengalaman yang luar biasa.'),
(7, 'Kendaraan bersih dan nyaman, sangat menyenangkan.'),
(8, 'Harga terjangkau dengan pelayanan yang sangat baik.'),
(9, 'Pengalaman sewa yang sangat baik, pasti akan kembali.'),
(10, 'Layanan pelanggan responsif, kendaraan dalam kondisi baik.'),
(11, 'Sewa mobil di sini sangat mudah, dan kendaraan sangat baik.'),
(12, 'Sangat merekomendasikan, pengalaman yang tidak terlupakan.'),
(13, 'Kendaraan sesuai dengan deskripsi, tidak ada masalah.'),
(14, 'Pelayanan cepat dan efisien, sangat puas.'),
(15, 'Kendaraan dalam kondisi prima, tidak ada keluhan.'),
(16, 'Pengemudi sangat membantu dan sopan, pengalaman yang menyenangkan.'),
(17, 'Layanan yang luar biasa, mobil dalam kondisi sangat baik.'),
(18, 'Sangat puas dengan semua aspek sewa mobil ini.'),
(19, 'Pengalaman yang sangat baik, semua berjalan lancar.'),
(20, 'Kendaraan bersih dan terawat, tidak ada masalah.'),
(21, 'Pelayanan ramah, kendaraan dalam kondisi baik.'),
(22, 'Terima kasih atas pelayanan yang baik, sangat memuaskan.'),
(23, 'Pengalaman sewa yang sangat baik, kendaraan nyaman.'),
(24, 'Sewa mobil di sini sangat mudah dan nyaman.'),
(25, 'Kendaraan sesuai harapan, pelayanan sangat memuaskan.'),
(26, 'Pengemudi profesional, pengalaman yang menyenangkan.'),
(27, 'Sangat merekomendasikan, pelayanan yang luar biasa.'),
(28, 'Kendaraan dalam kondisi prima, pelayanan sangat baik.'),
(29, 'Pengalaman sewa yang sangat memuaskan, pasti akan kembali.'),
(30, 'Kendaraan bersih dan nyaman, sangat direkomendasikan.');

SELECT * FROM Reviews

-- Isi data Returns
INSERT INTO Returns (RentalID, Condition, AdditionalFees) VALUES
(2, 'Baik', NULL),
(3, 'Sedikit Kotor', 25000.00),
(4, 'Baik', NULL),
(5, 'Kotor', 50000.00),
(6, 'Baik', NULL),
(7, 'Baret Body Samping ', 2500000.00),
(8, 'Baik', NULL),
(9, 'Sedikit Kotor', 30000.00),
(10, 'Baik', NULL),
(11, 'Kotor', 60000.00),
(12, 'Baik', NULL),
(13, 'Sangat Kotor', 80000.00),
(14, 'Baik', NULL),
(15, 'Sedikit Kotor', 20000.00),
(16, 'Baik', NULL),
(17, 'Penyok Bumper Belakang', 750000.00),
(18, 'Baik', NULL),
(19, 'Sangat Kotor', 90000.00),
(20, 'Baik', NULL),
(21, 'Kaki-kaki Patah', 5000000.00),
(22, 'Baik', NULL),
(23, 'Kotor', 65000.00),
(24, 'Baik', NULL),
(25, 'Sangat Kotor', 100000.00),
(26, 'Baik', NULL),
(27, 'Sedikit Kotor', 40000.00),
(28, 'Baik', NULL),
(29, 'Baret Bumper Depan', 3000000.00),
(30, 'Baik', NULL),
(31, 'Sangat Kotor', 95000.00);

SELECT * FROM Returns