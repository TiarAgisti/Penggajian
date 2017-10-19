-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2017 at 02:07 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_absensi`
--

CREATE TABLE IF NOT EXISTS `detail_absensi` (
`Id` int(11) NOT NULL,
  `KdKaryawan` varchar(12) DEFAULT NULL,
  `Hadir` varchar(10) DEFAULT NULL,
  `Sakit` varchar(10) DEFAULT NULL,
  `Alpa` varchar(10) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  `TglAbsen` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_absensi`
--

INSERT INTO `detail_absensi` (`Id`, `KdKaryawan`, `Hadir`, `Sakit`, `Alpa`, `Keterangan`, `TglAbsen`) VALUES
(8, 'K0001', NULL, '1', NULL, NULL, '2017-04-30'),
(7, 'K0002', '1', NULL, NULL, NULL, '2017-04-30'),
(14, 'K0001', NULL, '1', NULL, 'C:/xampp/htdocs/penggajian-v3/gambar/WhatsApp Image 2017-08-11 at 11.37_.00_.jpeg', '2017-10-09'),
(15, 'K0002', NULL, '1', NULL, 'C:/xampp/htdocs/penggajian-v3/gambar/WhatsApp Image 2017-08-11 at 11.37_.10_.jpeg', '2017-10-09');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE IF NOT EXISTS `golongan` (
  `KdGolongan` varchar(12) NOT NULL DEFAULT '',
  `NmGolongan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`KdGolongan`, `NmGolongan`) VALUES
('P0001', 'SENIOR'),
('P0002', 'JUNIOR');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `KdJabatan` varchar(12) NOT NULL DEFAULT '',
  `NmJabatan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`KdJabatan`, `NmJabatan`) VALUES
('J0002', 'MANAGER');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `KdKaryawan` varchar(12) NOT NULL DEFAULT '',
  `KdGolongan` varchar(12) DEFAULT NULL,
  `KdJabatan` varchar(12) DEFAULT NULL,
  `KdPendidikan` varchar(12) DEFAULT NULL,
  `KdTunjangan` varchar(12) DEFAULT NULL,
  `NmKaryawan` varchar(255) DEFAULT NULL,
  `NoHp` varchar(255) DEFAULT NULL,
  `TglLahir` date DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `JenisKelamin` varchar(15) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Agama` varchar(255) DEFAULT NULL,
  `GajiPokok` decimal(18,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`KdKaryawan`, `KdGolongan`, `KdJabatan`, `KdPendidikan`, `KdTunjangan`, `NmKaryawan`, `NoHp`, `TglLahir`, `Alamat`, `JenisKelamin`, `Status`, `Agama`, `GajiPokok`) VALUES
('K0002', 'P0001', 'J0002', 'P0001', 'T0001', 'TIAR', '085817579282', '2017-09-01', 'BINONG', 'L', 'SINGLE', 'ISLAM', '10000000.00'),
('K0001', 'P0001', 'J0002', 'P0001', 'T0001', 'ANWAR', '08567449461', '2016-11-30', 'JLN.PAJARAN 1 NO 25 RT 01/03 KEC.JATIUWUNG KEL.GANDASARI KP.RAWACANA', 'L', 'MENIKAH', 'ISLAM', '10000.00');

-- --------------------------------------------------------

--
-- Table structure for table `keluarga`
--

CREATE TABLE IF NOT EXISTS `keluarga` (
`Id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE IF NOT EXISTS `pendidikan` (
  `KdPendidikan` varchar(12) NOT NULL DEFAULT '',
  `NmPendidikan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`KdPendidikan`, `NmPendidikan`) VALUES
('P0001', 'S2');

-- --------------------------------------------------------

--
-- Table structure for table `posisi_karyawan`
--

CREATE TABLE IF NOT EXISTS `posisi_karyawan` (
  `KdPosisi` varchar(12) NOT NULL DEFAULT '',
  `NmPosisi` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `potongan`
--

CREATE TABLE IF NOT EXISTS `potongan` (
  `KdPotongan` varchar(12) NOT NULL DEFAULT '',
  `JenisPotongan` varchar(255) DEFAULT NULL,
  `TotalPotongan` decimal(18,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `potongan`
--

INSERT INTO `potongan` (`KdPotongan`, `JenisPotongan`, `TotalPotongan`) VALUES
('T0002', 'MANGKIR', '10000.00'),
('T0003', 'SAKIT', '100000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan`
--

CREATE TABLE IF NOT EXISTS `tunjangan` (
  `KdTunjangan` varchar(12) NOT NULL DEFAULT '',
  `KdJabatan` varchar(12) DEFAULT NULL,
  `KdPendidikan` varchar(12) DEFAULT NULL,
  `KdGolongan` varchar(12) DEFAULT NULL,
  `TotalTunjangan` decimal(18,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tunjangan`
--

INSERT INTO `tunjangan` (`KdTunjangan`, `KdJabatan`, `KdPendidikan`, `KdGolongan`, `TotalTunjangan`) VALUES
('T0001', 'J0002', 'P0001', 'P0001', '10000.00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`Id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'admin', 'admin HRD'),
(2, 'TIAR', '12345', 'TIAR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_absensi`
--
ALTER TABLE `detail_absensi`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
 ADD PRIMARY KEY (`KdGolongan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
 ADD PRIMARY KEY (`KdJabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
 ADD PRIMARY KEY (`KdKaryawan`);

--
-- Indexes for table `keluarga`
--
ALTER TABLE `keluarga`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
 ADD PRIMARY KEY (`KdPendidikan`);

--
-- Indexes for table `posisi_karyawan`
--
ALTER TABLE `posisi_karyawan`
 ADD PRIMARY KEY (`KdPosisi`);

--
-- Indexes for table `potongan`
--
ALTER TABLE `potongan`
 ADD PRIMARY KEY (`KdPotongan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_absensi`
--
ALTER TABLE `detail_absensi`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `keluarga`
--
ALTER TABLE `keluarga`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
