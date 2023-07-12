-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_sekolah
CREATE DATABASE IF NOT EXISTS `db_sekolah` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_sekolah`;

-- Dumping structure for table db_sekolah.hubungan
CREATE TABLE IF NOT EXISTS `hubungan` (
  `idhub` int NOT NULL AUTO_INCREMENT,
  `idsiswa` int DEFAULT NULL,
  `idortu` int DEFAULT NULL,
  `status_hub_anak` char(50) DEFAULT NULL,
  `keterangan` char(100) DEFAULT NULL,
  `status_ortu` char(100) DEFAULT NULL,
  PRIMARY KEY (`idhub`) USING BTREE,
  UNIQUE KEY `FK_hubungan_siswa` (`idsiswa`) USING BTREE,
  KEY `FK_hubungan_ortu` (`idortu`),
  CONSTRAINT `FK_hubungan_ortu` FOREIGN KEY (`idortu`) REFERENCES `ortu` (`idortu`),
  CONSTRAINT `FK_hubungan_siswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table db_sekolah.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `idkelas` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idkelas`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table db_sekolah.ortu
CREATE TABLE IF NOT EXISTS `ortu` (
  `idortu` int NOT NULL AUTO_INCREMENT,
  `nik` char(50) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `pendidikan` char(50) DEFAULT NULL,
  `pekerjaan_ayah` char(50) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `alamat` char(100) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `agama` char(10) DEFAULT NULL,
  `is_active` char(8) DEFAULT NULL,
  PRIMARY KEY (`idortu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table db_sekolah.poin
CREATE TABLE IF NOT EXISTS `poin` (
  `idpoin` int NOT NULL AUTO_INCREMENT,
  `nama_poin` varchar(100) DEFAULT NULL,
  `bobot` char(50) DEFAULT NULL,
  `jenis` char(50) DEFAULT NULL,
  `status` char(5) DEFAULT NULL,
  PRIMARY KEY (`idpoin`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table db_sekolah.semester
CREATE TABLE IF NOT EXISTS `semester` (
  `idsem` int NOT NULL AUTO_INCREMENT,
  `idsiswa` int DEFAULT NULL,
  `idpoin` int DEFAULT NULL,
  `idwali` int DEFAULT NULL,
  `idortu` int DEFAULT NULL,
  `idkelas` int DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `status` char(5) DEFAULT NULL,
  `tingkat_kelas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idsem`) USING BTREE,
  KEY `FK_semester_siswa` (`idsiswa`),
  KEY `FK_semester_poin` (`idpoin`),
  KEY `FK_semester_wali_kelas` (`idwali`),
  KEY `FK_semester_ortu` (`idortu`),
  KEY `FK_semester_kelas` (`idkelas`),
  CONSTRAINT `FK_semester_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`),
  CONSTRAINT `FK_semester_ortu` FOREIGN KEY (`idortu`) REFERENCES `ortu` (`idortu`),
  CONSTRAINT `FK_semester_poin` FOREIGN KEY (`idpoin`) REFERENCES `poin` (`idpoin`),
  CONSTRAINT `FK_semester_siswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`),
  CONSTRAINT `FK_semester_wali_kelas` FOREIGN KEY (`idwali`) REFERENCES `wali_kelas` (`idwali`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table db_sekolah.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `idsiswa` int NOT NULL AUTO_INCREMENT,
  `nis` char(20) DEFAULT NULL,
  `nisn` char(20) DEFAULT NULL,
  `nama_siswa` varchar(60) DEFAULT NULL,
  `nik` char(20) DEFAULT NULL,
  `tempat_lahir` varchar(150) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  PRIMARY KEY (`idsiswa`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table db_sekolah.user
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `status` char(5) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `created_user` varchar(100) DEFAULT NULL,
  `update_at` varchar(100) DEFAULT NULL,
  `upadate_userid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`iduser`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table db_sekolah.wali_kelas
CREATE TABLE IF NOT EXISTS `wali_kelas` (
  `idwali` int NOT NULL AUTO_INCREMENT,
  `nip` char(20) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `Pendidikan` char(50) DEFAULT NULL,
  `telp` char(16) DEFAULT NULL,
  `matpel` char(30) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `status` char(5) DEFAULT NULL,
  PRIMARY KEY (`idwali`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
