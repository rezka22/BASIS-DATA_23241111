CREATE TABLE `Costumer` (
  `No_KTP` int PRIMARY KEY,
  `Nama_costumer` varchar(255),
  `No_Hp` int,
  `Alamat` varchar(255),
  `Jaminan` string,
  `Nopol` int
);

CREATE TABLE `Driver` (
  `No_KTP_Driver` int PRIMARY KEY,
  `Nama_driver` varchar(255),
  `No_Hp` int,
  `Alamat` varchar(255),
  `SIM` int,
  `P_Nopol` varchar(255)
);

CREATE TABLE `Mobil` (
  `Plat_mobil` int PRIMARY KEY,
  `jenis_mobil` varchar(255),
  `Tahun_mobil` int,
  `Harga` decimal
);

ALTER TABLE `Driver` ADD FOREIGN KEY (`No_KTP_Driver`) REFERENCES `Costumer` (`No_KTP`);

ALTER TABLE `Mobil` ADD FOREIGN KEY (`Plat_mobil`) REFERENCES `Driver` (`P_Nopol`);

ALTER TABLE `Costumer` ADD FOREIGN KEY (`Nopol`) REFERENCES `Mobil` (`Plat_mobil`);
