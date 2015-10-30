-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 30, 2014 at 09:44 AM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_siakad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id_username` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id_username`, `username`, `password`, `nama_lengkap`, `foto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', '');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `kd_dosen` varchar(10) NOT NULL,
  `kd_prodi` varchar(10) NOT NULL,
  `nidn` varchar(20) NOT NULL,
  `nama_dosen` varchar(150) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(254) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `file_foto` varchar(100) NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `status` enum('Aktif','Keluar') NOT NULL DEFAULT 'Aktif',
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`kd_dosen`),
  KEY `Kd_prodi` (`kd_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kd_dosen`, `kd_prodi`, `nidn`, `nama_dosen`, `sex`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `hp`, `password`, `file_foto`, `tgl_insert`, `status`, `tgl_update`) VALUES
('TI20140001', '55-201', '', 'Deddy Rusdiansyah', 'L', '', '0000-00-00', 'Cimuncang', '', 'ce28eed1511f631af6b2a7bb0a85d636', '', '0000-00-00 00:00:00', 'Aktif', '0000-00-00 00:00:00'),
('TI20140002', '55-201', '12345', 'Danish Putra Pramudia,M.Kom', 'L', '', '0000-00-00', 'Cimuncang', '', 'ce28eed1511f631af6b2a7bb0a85d636', '', '0000-00-00 00:00:00', 'Aktif', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(10) NOT NULL AUTO_INCREMENT,
  `th_akademik` varchar(10) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL DEFAULT 'ganjil',
  `kd_prodi` varchar(10) NOT NULL,
  `kd_mk` varchar(10) NOT NULL,
  `kd_dosen` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `pukul` varchar(20) NOT NULL,
  `ruang` varchar(30) NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`id_jadwal`),
  KEY `Th_akademik` (`th_akademik`,`semester`,`kd_prodi`,`kd_mk`,`kd_dosen`,`hari`,`pukul`,`ruang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `th_akademik`, `semester`, `kd_prodi`, `kd_mk`, `kd_dosen`, `hari`, `pukul`, `ruang`, `tgl_insert`, `tgl_update`) VALUES
(1, '2014/2015', 'ganjil', '55-201', 'TI-0001', 'TI20140001', 'Senin', '08.00 - 10.00', 'R01', '2014-06-21 01:01:20', '0000-00-00 00:00:00'),
(2, '2014/2015', 'ganjil', '55-201', 'TI-0002', 'TI20140001', 'Senin', '10.00 - 12.00', 'R01', '2014-06-21 03:53:15', '0000-00-00 00:00:00'),
(4, '2014/2015', 'ganjil', '55-201', 'TI-0003', 'TI20140002', 'Senin', '08.00 - 10.00', 'R03', '2014-06-21 04:37:50', '0000-00-00 00:00:00'),
(5, '2014/2015', 'genap', '55-201', 'TI-0007', 'TI20140001', 'Senin', '08.00 - 10.00', 'R01', '2014-06-23 09:18:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jam_kuliah`
--

CREATE TABLE `jam_kuliah` (
  `Kode` varchar(10) NOT NULL,
  `Jam` varchar(50) NOT NULL,
  PRIMARY KEY (`Kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(10) NOT NULL AUTO_INCREMENT,
  `th_akademik` varchar(10) NOT NULL,
  `smt` smallint(6) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `kd_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `sks` smallint(6) NOT NULL,
  `kd_dosen` char(10) NOT NULL,
  `nm_dosen` varchar(100) NOT NULL,
  `ruang` char(10) NOT NULL,
  `hari` char(15) NOT NULL,
  `pukul` char(15) NOT NULL,
  `nilai_uts` varchar(5) NOT NULL,
  `nilai_uas` varchar(5) NOT NULL,
  `nilai_akhir` char(2) NOT NULL,
  `acc_dosen` enum('Y','T') NOT NULL DEFAULT 'T',
  `status` enum('Baru','Remedial') NOT NULL DEFAULT 'Baru',
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`id_krs`),
  KEY `Id_jadwal` (`id_jadwal`,`nim`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `th_akademik`, `smt`, `semester`, `id_jadwal`, `nim`, `kd_mk`, `nama_mk`, `sks`, `kd_dosen`, `nm_dosen`, `ruang`, `hari`, `pukul`, `nilai_uts`, `nilai_uas`, `nilai_akhir`, `acc_dosen`, `status`, `tgl_insert`, `tgl_update`) VALUES
(1, '2014/2015', 1, 'ganjil', 1, 'TI20140001', 'TI-0001', 'Algoritma dan Pemrograman', 3, 'TI20140001', 'Deddy Rusdiansyah', 'R01', 'Senin', '08.00 - 10.00', '', '', 'A', 'T', 'Baru', '2014-06-24 04:40:14', '2014-06-27 06:57:12'),
(2, '2014/2015', 1, 'ganjil', 2, 'TI20140001', 'TI-0002', 'Bahasa Inggris', 2, 'TI20140001', 'Deddy Rusdiansyah', 'R01', 'Senin', '10.00 - 12.00', '', '', 'B', 'T', 'Baru', '2014-06-24 04:41:38', '2014-06-27 06:55:13'),
(3, '2014/2015', 1, 'ganjil', 1, 'TI20140002', 'TI-0001', 'Algoritma dan Pemrograman', 3, 'TI20140001', 'Deddy Rusdiansyah', 'R01', 'Senin', '08.00 - 10.00', '', '', 'B', 'T', 'Baru', '2014-06-27 06:15:11', '2014-06-27 06:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `th_akademik` varchar(15) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `kd_prodi` varchar(15) NOT NULL,
  `nama_mhs` varchar(150) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `hp` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `alamat_ortu` varchar(150) NOT NULL,
  `hp_ortu` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `file_foto` varchar(100) NOT NULL,
  `status` enum('Aktif','Cuti','DO','Meninggal','Lulus') NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`nim`),
  KEY `Kd_prodi` (`kd_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`th_akademik`, `nim`, `kd_prodi`, `nama_mhs`, `sex`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kota`, `hp`, `email`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `hp_ortu`, `password`, `file_foto`, `status`, `tgl_insert`, `tgl_update`) VALUES
('2014/2015', 'TI20140001', '55-201', 'Deddy Rusdiansyah', 'L', 'Pandeglang', '1979-08-05', 'Cimuncang Sidumuncul No.9', 'Serang', '087774846856', 'deddy_rusdiansyah@yahoo.com', 'Deddy Rusdiansyah', 'Ugih Sugiarti', 'Cimuncang ', '08777', '9f7f4941587a1c4542df91ee41114eb9', '', 'Aktif', '2014-06-21 12:59:30', '2014-06-21 11:19:57'),
('2014/2015', 'TI20140002', '55-201', 'Danish Putra Pramudia', 'L', 'Serang', '2007-03-22', 'Cimuncang', 'Serang', '08777', 'danish_pp@yahoo.com', 'Deddy Rusdiansyah', 'Ugih Sugiarti', 'Cimuncang ', '08777', '0c78add231ff23d02baa6a23c931d243', '', 'Aktif', '2014-06-21 11:19:39', '2014-06-21 11:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kd_mk` varchar(10) NOT NULL,
  `kd_prodi` varchar(10) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `sks` smallint(6) NOT NULL,
  `smt` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `semester` enum('Ganjil','Genap') NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`kd_mk`),
  KEY `Kd_prodi` (`kd_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kd_mk`, `kd_prodi`, `nama_mk`, `sks`, `smt`, `semester`, `aktif`, `tgl_insert`, `tgl_update`) VALUES
('TI-0001', '55-201', 'Algoritma dan Pemrograman', 3, '1', 'Ganjil', 'Ya', '2014-06-20 00:00:00', '2014-06-13 00:00:00'),
('TI-0002', '55-201', 'Bahasa Inggris', 2, '1', 'Ganjil', 'Ya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TI-0003', '55-201', 'Aljabar Linear', 2, '1', 'Ganjil', 'Ya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TI-0004', '55-201', 'Sistem dan Teknologi Informasi', 2, '1', 'Ganjil', 'Ya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TI-0005', '55-201', 'Sistem Digital', 2, '1', 'Ganjil', 'Ya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TI-0006', '55-201', 'Kalkulus 1', 3, '1', 'Ganjil', 'Ya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TI-0007', '55-201', 'Pendidikan Agama', 3, '2', 'Genap', 'Ya', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_mhs`
--

CREATE TABLE `mutasi_mhs` (
  `Id_mutasi` int(11) NOT NULL,
  `Th_akademik` varchar(10) NOT NULL,
  `Tgl_mutasi` date NOT NULL,
  `Nim` varchar(20) NOT NULL,
  `Status` enum('Aktif','Cuti','DO','Meninggal','Lulus') NOT NULL,
  `Ket` text NOT NULL,
  `Tgl_insert` datetime NOT NULL,
  `Tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `dari` varchar(50) NOT NULL,
  `ke` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` tinyint(4) NOT NULL,
  `status` enum('Kirim','Dibaca') NOT NULL DEFAULT 'Kirim',
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `kd_prodi` varchar(10) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `singkat` varchar(10) NOT NULL,
  `ketua_prodi` varchar(100) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `akreditasi` varchar(2) NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`kd_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`kd_prodi`, `prodi`, `singkat`, `ketua_prodi`, `nik`, `akreditasi`, `tgl_insert`, `tgl_update`) VALUES
('55-201', 'Teknik Informatika', 'TI', 'Deddy Rusdiansyah', '4846', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('57-201', 'Sistem Informasi', 'SI', 'Danish Putra Pramudia', '6856', 'B', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ruang_kuliah`
--

CREATE TABLE `ruang_kuliah` (
  `Kode` varchar(10) NOT NULL,
  `Nama_ruang_kuliah` varchar(100) NOT NULL,
  PRIMARY KEY (`Kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester` enum('ganjil','genap') NOT NULL DEFAULT 'ganjil',
  `dari` smallint(6) NOT NULL,
  `sampai` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester`, `dari`, `sampai`) VALUES
('ganjil', 107, 3012),
('genap', 101, 3006);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
