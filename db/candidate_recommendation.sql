-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 09:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `candidate_recommendation`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidatedata`
--

CREATE TABLE `candidatedata` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `nik` varchar(225) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `marital` varchar(225) NOT NULL,
  `jobPosition` varchar(225) NOT NULL,
  `currentCity` varchar(225) NOT NULL,
  `levelEdu` varchar(225) NOT NULL,
  `majoring` varchar(225) NOT NULL,
  `gpa` double NOT NULL,
  `institution` varchar(225) NOT NULL,
  `exper` int(11) NOT NULL,
  `last_position` varchar(225) NOT NULL,
  `expect_salary` varchar(225) NOT NULL,
  `pt_personality` varchar(225) NOT NULL,
  `pt_intelligent` int(11) NOT NULL,
  `applyOn` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `bufferStock` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidatedata`
--

INSERT INTO `candidatedata` (`id`, `name`, `nik`, `age`, `gender`, `marital`, `jobPosition`, `currentCity`, `levelEdu`, `majoring`, `gpa`, `institution`, `exper`, `last_position`, `expect_salary`, `pt_personality`, `pt_intelligent`, `applyOn`, `status`, `bufferStock`) VALUES
(1, 'John', '3542990000000000', 23, 'Male', 'Married', 'Manager HR, Data Analyst (Tech)', 'Surabaya', 'S1', 'Psikologi', 3, 'Universitas Harvard', 1, 'Kepala Divisi Human Capital', 'Rp4.000.000', 'DC', 119, '05/01/2024', 'New', '0'),
(2, 'Alice', '3542990000000000', 24, 'Female', 'Single', 'Manager HR, System Analyst', 'Surabaya', 'S1', 'Accounting', 3, 'Universitas Stanford', 2, 'Manajer Sumber Daya Manusia', 'Rp4.000.000', 'AB', 100, '05/01/2024', 'New', '0'),
(3, 'David', '3542990000000000', 32, 'Male', 'Single', 'Manager HR', 'Surabaya', 'S2', 'Manajemen', 3, 'Institut Teknologi Massachusetts', 3, 'Koordinator Pengembangan SDM', 'Rp4.000.000', 'CF', 99, '05/01/2024', 'New', '0'),
(4, 'Emily', '3542990000000000', 28, 'Female', 'Single', 'Manager HR', 'Surabaya', 'S2', 'Manajemen', 4, 'Institut Teknologi California', 4, 'Spesialis Rekrutmen', 'Rp4.000.000', 'GT', 108, '05/01/2024', 'New', '0'),
(5, 'Michael', '3542990000000000', 35, 'Male', 'Single', 'Data Analyst (Tech), System Analyst', 'Surabaya', 'S2', 'Ilmu Hukum', 3, 'Universitas Oxford', 5, 'Spesialis Pelatihan dan Pengembangan', 'Rp4.000.000', 'EG', 106, '05/01/2024', 'New', '0'),
(6, 'Jessica', '3542990000000000', 21, 'Female', 'Single', 'Manager HR', 'Surabaya', 'S1', 'Psikologi', 3, 'Universitas Cambridge', 1, 'Analis Kinerja Karyawan', 'Rp4.000.000', '-', 0, '05/01/2024', 'New', '0'),
(7, 'Daniel', '3542990000000000', 30, 'Male', 'Single', 'Data Analyst (Tech)', 'Surabaya', 'S1', 'Administrasi Bisnis', 3, 'Universitas California', 2, 'Administrator Kompensasi dan Manfaat', 'Rp4.000.000', '-', 0, '05/01/2024', 'New', '0'),
(8, 'Sophia', '3542990000000000', 25, 'Female', 'Single', 'Human Resources Manager', 'Surabaya', 'S1', 'Psikologi', 3, 'Universitas Chicago', 2, 'Spesialis Hubungan Industrial', 'Rp4.000.000', '-', 0, '05/01/2024', 'New', '0'),
(9, 'Matthew', '3542990000000000', 29, 'Male', 'Single', 'Human Resources Manager', 'Sidoarjo', 'S1', 'Administrasi Bisnis', 3, 'Universitas Princeton', 2, 'Analis Kebijakan Personalia', 'Rp4.000.000', '-', 0, '05/01/2024', 'New', '0'),
(10, 'Emma', '3542990000000000', 24, 'Female', 'Single', 'Human Resources Manager', 'Sidoarjo', 'S1', 'Bisnis Digital', 3, 'Universitas Yale', 1, 'Manajer Komunikasi Perusahaan', 'Rp4.000.000', '-', 0, '05/01/2024', 'New', '0'),
(11, 'Andrew', '3542990000000000', 25, 'Male', 'Single', 'Human Resources Manager', 'Sidoarjo', 'S1', 'Ekonomi', 4, 'Universitas Columbia', 1, 'Koordinator Media Sosial', 'Rp4.000.000', '-', 0, '05/01/2024', 'New', '0'),
(12, 'Olivia', '3542990000000000', 22, 'Female', 'Single', 'System Analyst, Human Resources Manager', 'Sidoarjo', 'S1', 'Komunikasi', 3, 'Universitas Pennsylvania', 1, 'Spesialis Hubungan Masyarakat', 'Rp4.000.000', '-', 0, '05/02/2024', 'New', '0'),
(13, 'Ethan', '3542990000000000', 23, 'Male', 'Single', 'System Analyst', 'Sidoarjo', 'S1', 'Manajemen', 3, 'Universitas Johns Hopkins', 1, 'Manajer Hubungan Investor', 'Rp4.000.000', '-', 0, '05/02/2024', 'New', '0'),
(14, 'Isabella', '3542990000000000', 21, 'Female', 'Single', 'Data Analyst (Tech), System Analyst', 'Jakarta', 'S2', 'Matematika', 3, 'Universitas Northwestern', 1, 'Koordinator Urusan Pemerintah', 'Rp4.000.000', '-', 0, '05/02/2024', 'New', '0'),
(15, 'William', '3542990000000000', 29, 'Male', 'Single', 'System Analyst', 'Jakarta', 'S1', 'Sosiologi', 4, 'Universitas Michigan', 2, 'Spesialis Kepatuhan Peraturan', 'Rp4.000.000', '-', 0, '05/02/2024', 'New', '0'),
(16, 'Ava', '3542990000000000', 22, 'Female', 'Single', 'Data Analyst (Tech)', 'Gresik', 'S1', 'Akuntansi Digital', 3, 'Universitas Toronto', 3, 'Analis Hukum Perusahaan', 'Rp4.000.000', '-', 0, '05/02/2024', 'New', '0'),
(17, 'Ryan', '3542990000000000', 21, 'Male', 'Single', '-', 'Gresik', 'S1', 'Ilmu Komunikasi', 3, 'Universitas College London', 3, 'Manajer Keberlanjutan Perusahaan', 'Rp4.000.000', '-', 0, '05/02/2024', 'New', '0'),
(18, 'Mia', '3542990000000000', 25, 'Female', 'Single', 'Data Analyst (Tech)', 'Gresik', 'S1', 'Perpajakan', 3, 'Universitas California', 3, 'Koordinator Program Kesejahteraan Karyawan', 'Rp4.000.000', '-', 0, '05/02/2024', 'New', '0'),
(19, 'James', '3542990000000000', 35, 'Male', 'Single', '-', 'Gresik', 'S1', 'Sosiologi', 4, 'Universitas Duke', 1, 'Spesialis Keselamatan dan Kesehatan Kerja', 'Rp7.000.000', '-', 0, '05/02/2024', 'New', '0'),
(20, 'Charlotte', '3542990000000000', 26, 'Female', 'Single', 'Data Analyst (Tech), Human Capital Staff', 'Bandung', 'S1', 'Manajemen SDM', 3, 'Universitas California', 3, 'Manajer Layanan Karyawan', 'Rp7.000.000', '-', 0, '05/02/2024', 'New', '0'),
(21, 'William', '3542990000000000', 26, 'Male', 'Single', 'Human Capital Staff', 'Surabaya', 'S2', 'Manajemen', 3, 'Universitas Stanford', 3, 'Koordinator Pengembangan Budaya Organisasi', 'Rp7.000.000', '-', 0, '05/02/2024', 'New', '0'),
(22, 'Ava', '3542990000000000', 21, 'Female', 'Married', 'Human Capital Staff', 'Surabaya', 'S2', 'Manajemen', 3, 'Institut Teknologi Massachusetts', 3, 'Spesialis Keanekaragaman dan Inklusi', 'Rp7.000.000', '-', 0, '05/02/2024', 'New', '0'),
(23, 'James', '3542990000000000', 22, 'Male', 'Married', 'Human Capital Staff', 'Surabaya', 'S1', 'Psikologi', 3, 'Universitas Harvard', 3, 'Analis Penggajian', 'Rp7.000.000', '-', 0, '05/03/2024', 'New', '0'),
(24, 'Charlotte', '3542990000000000', 24, 'Female', 'Married', 'Human Capital Staff', 'Surabaya', 'S2', 'Manajemen', 4, 'Universitas Stanford', 3, 'Administrator Personalia', 'Rp7.000.000', '-', 0, '05/03/2024', 'New', '0'),
(25, 'Liam', '3542990000000000', 22, 'Male', 'Married', 'Human Capital Staff', 'Surabaya', 'S1', 'Psikologi', 3, 'Institut Teknologi California', 3, 'Spesialis Manajemen Kinerja', 'Rp7.000.000', '-', 0, '05/03/2024', 'New', '0'),
(26, 'Amelia', '3542990000000000', 29, 'Female', 'Married', 'Human Capital Staff', 'Surabaya', 'S1', 'Akuntansi', 3, 'Universitas Oxford', 2, 'Manajer Penghargaan dan Pengakuan', 'Rp7.000.000', '-', 0, '05/03/2024', 'New', '0'),
(27, 'Benjamin', '3542990000000000', 21, 'Male', 'Married', 'Human Capital Staff', 'Surabaya', 'S2', 'Pemasaran', 3, 'Universitas Cambridge', 1, 'Koordinator Program Pendidikan Karyawan', 'Rp7.000.000', '-', 0, '05/03/2024', 'New', '0'),
(28, 'Mia', '3542990000000000', 27, 'Female', 'Married', '-', 'Surabaya', 'S2', 'Manajemen', 3, 'Universitas Yale', 2, 'Spesialis Kesejahteraan Karyawan', 'Rp7.000.000', '-', 0, '05/03/2024', 'New', '0'),
(29, 'Henry', '3542990000000000', 30, 'Male', 'Married', '-', 'Surabaya', 'S1', 'Bisnis Internasional', 3, 'Institut Teknologi California', 1, 'Manajer Kesehatan dan Kesejahteraan Karyawan', 'Rp7.000.000', '-', 0, '05/04/2024', 'New', '0'),
(30, 'Elizabeth', '3542990000000000', 52, 'Female', 'Married', '-', 'Surabaya', 'S1', 'Hukum', 3, 'Universitas Stanford', 1, 'Koordinator Kesetaraan Kerja', 'Rp7.000.000', '-', 0, '05/04/2024', 'New', '0'),
(31, 'Alexander', '3542990000000000', 27, 'Male', 'Married', '-', 'Surabaya', 'S2', 'Psikologi', 3, 'Institut Teknologi Massachusetts', 1, 'Spesialis Pengembangan Organisasi', 'Rp7.000.000', '-', 0, '05/04/2024', 'New', '0'),
(32, 'Evelyn', '3542990000000000', 30, 'Female', 'Married', '-', 'Surabaya', 'S1', 'Manajemen', 3, 'Universitas Chicago', 2, 'Analis Pengelolaan Kinerja', 'Rp5.000.000', '-', 0, '05/04/2024', 'New', '0'),
(33, 'Michael', '3542990000000000', 39, 'Male', 'Married', '-', 'Surabaya', 'S2', 'Akuntansi', 3, 'Universitas Harvard', 1, 'Administrator Manfaat Karyawan', 'Rp5.000.000', '-', 0, '05/04/2024', 'New', '0'),
(34, 'Scarlett', '3542990000000000', 52, 'Female', 'Married', '-', 'Surabaya', 'S1', 'Manajemen', 3, 'Universitas Yale', 1, 'Spesialis Pengembangan Kepemimpinan', 'Rp5.000.000', '-', 0, '05/04/2024', 'New', '0'),
(35, 'Daniel', '3542990000000000', 30, 'Male', 'Married', '-', 'Surabaya', 'S1', 'Psikologi', 3, 'Institut Teknologi California', 1, 'Manajer Komunikasi Internal', 'Rp5.000.000', '-', 0, '05/06/2024', 'New', '0'),
(36, 'Grace', '3542990000000000', 23, 'Female', 'Married', '-', 'Surabaya', 'S2', 'Manajemen', 3, 'Universitas Stanford', 4, 'Koordinator Acara Perusahaan', 'Rp5.000.000', '-', 0, '05/06/2024', 'New', '0'),
(37, 'Lucas', '3542990000000000', 24, 'Male', 'Married', '-', 'Surabaya', 'S1', 'Psikologi', 3, 'Universitas Oxford', 4, 'Spesialis Hubungan Eksternal', 'Rp5.000.000', '-', 0, '05/06/2024', 'New', '0'),
(38, 'Chloe', '3542990000000000', 28, 'Female', 'Married', '-', 'Surabaya', 'S1', 'Akuntansi', 3, 'Universitas Cambridge', 3, 'Analis Pengelolaan Konflik', 'Rp5.000.000', '-', 0, '05/06/2024', 'New', '0'),
(39, 'Jackson', '3542990000000000', 28, 'Male', 'Married', '-', 'Surabaya', 'S2', 'Manajemen', 3, 'Institut Teknologi Massachusetts', 3, 'Manajer Keamanan Kerja', 'Rp5.000.000', '-', 0, '05/06/2024', 'New', '0'),
(40, 'Lily', '3542990000000000', 30, 'Female', 'Single', '-', 'Surabaya', 'S1', 'Psikologi', 3, 'Universitas Chicago', 3, 'Koordinator Program Kesehatan', 'Rp5.000.000', '-', 0, '05/06/2024', 'New', '0'),
(41, 'Sebastian', '3542990000000000', 23, 'Male', 'Single', '-', 'Surabaya', 'S2', 'Akuntansi', 3, 'Universitas Yale', 2, 'Spesialis Pengembangan Karir', 'Rp5.000.000', '-', 0, '05/07/2024', 'New', '0'),
(42, 'Sophie', '3542990000000000', 24, 'Female', 'Single', '-', 'Surabaya', 'S1', 'Manajemen', 4, 'Universitas Stanford', 2, 'Administrator Pelatihan', 'Rp5.000.000', '-', 0, '05/07/2024', 'New', '0'),
(43, 'Logan', '3542990000000000', 23, 'Male', 'Single', '-', 'Surabaya', 'S2', 'Hukum', 3, 'Institut Teknologi California', 2, 'Spesialis Pembinaan Karyawan', 'Rp5.000.000', '-', 0, '05/07/2024', 'New', '0'),
(44, 'Avery', '3542990000000000', 24, 'Female', 'Single', '-', 'Surabaya', 'S1', 'Manajemen', 3, 'Universitas Oxford', 2, 'Analis Kepemimpinan Karyawan', 'Rp5.000.000', '-', 0, '05/07/2024', 'New', '0'),
(45, 'Oliver', '3542990000000000', 26, 'Male', 'Single', '-', 'Surabaya', 'S1', 'Psikologi', 3, 'Universitas Cambridge', 1, 'Manajer Kesejahteraan Perusahaan', 'Rp5.000.000', '-', 0, '05/07/2024', 'New', '0'),
(46, 'Mila', '3542990000000000', 28, 'Female', 'Single', '-', 'Surabaya', 'S2', 'Akuntansi', 3, 'Universitas Harvard', 1, 'Koordinator Program Kebahagiaan Kerja', 'Rp5.000.000', '-', 0, '05/07/2024', 'New', '0'),
(47, 'Levi', '3542990000000000', 24, 'Male', 'Single', '-', 'Surabaya', 'S1', 'Manajemen', 3, 'Universitas Yale', 1, 'Spesialis Hubungan Industri', 'Rp5.000.000', '-', 0, '05/07/2024', 'New', '0'),
(48, 'Aria', '3542990000000000', 27, 'Female', 'Single', '-', 'Surabaya', 'S2', 'Psikologi', 3, 'Institut Teknologi Massachusetts', 1, 'Analis Kesejahteraan Mental', 'Rp5.000.000', '-', 0, '05/07/2024', 'New', '0'),
(49, 'Zidha', '3542990000000000', 24, 'Male', 'Single', '-', 'Surabaya', 'S1', 'Manajemen Internasional', 3, 'Universitas Stanford', 2, 'Administrator Pengakuan Karyawan', 'Rp5.000.000', 'DC', 119, '05/07/2024', 'New', '0'),
(50, 'Henri', '3542990000000000', 22, 'Male', 'Single', '-', 'Sidoarjo', 'S1', 'Psikologi', 4, 'Universitas Korea', 2, 'Spesialis Pemantauan Kinerja', 'Rp5.000.000', 'AB', 122, '05/07/2024', 'New', '0');

-- --------------------------------------------------------

--
-- Table structure for table `data recommendation candidate`
--

CREATE TABLE `data recommendation candidate` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `lokasi` varchar(225) NOT NULL,
  `unit` varchar(225) NOT NULL,
  `lvl_jabatan` varchar(225) NOT NULL,
  `jabatan` varchar(225) NOT NULL,
  `divisi` varchar(225) NOT NULL,
  `marital_status` varchar(225) NOT NULL,
  `pendidikan` varchar(225) NOT NULL,
  `umur` int(11) NOT NULL,
  `kelamin` varchar(225) NOT NULL,
  `study_major` varchar(225) NOT NULL,
  `exp` varchar(225) NOT NULL,
  `last_position` varchar(225) NOT NULL,
  `current_city` varchar(225) NOT NULL,
  `institution` varchar(225) NOT NULL,
  `GPA` double NOT NULL,
  `expected_salary` int(11) NOT NULL,
  `personality` varchar(225) NOT NULL,
  `intelligent` varchar(225) NOT NULL,
  `apply_on` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data recommendation candidate`
--

INSERT INTO `data recommendation candidate` (`id`, `nama`, `lokasi`, `unit`, `lvl_jabatan`, `jabatan`, `divisi`, `marital_status`, `pendidikan`, `umur`, `kelamin`, `study_major`, `exp`, `last_position`, `current_city`, `institution`, `GPA`, `expected_salary`, `personality`, `intelligent`, `apply_on`, `status`) VALUES
(1, 'AbdKalPer', 'Kalianak', 'Performance Excellence Department', 'Staff', 'Performance Excellence Fleet Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 23, 'Pria', 'Manajemen', '> 4 tahun', 'Kepala Divisi Human Capital', 'Jakarta', 'Universitas Indonesia', 3, 5200000, '-', '-', '25/05/2024', 'new'),
(2, 'AbdTamPub', 'Tambak Langon 5', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 41, 'Pria', 'Teknik Informatika', '< 1 tahun', 'Manajer Sumber Daya Manusia', 'Bandung', 'Institut Teknologi Bandung', 3, 6300000, '-', '-', '25/05/2024', 'new'),
(3, 'AchKanPub', 'Kantor Pusat', 'Public Affair, Industrial & Employee Relation Department', 'Middle Manager', 'Public Affair, Industrial & Employee Relation National Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 32, 'Pria', 'Akuntansi', '1-2 tahun', 'Koordinator Pengembangan SDM', 'Surabaya', 'Universitas Airlangga', 3, 5800000, '-', '-', '25/05/2024', 'new'),
(4, 'AchKalYie', 'Kalianak', 'Yield Excellent Service Department', 'Team Leader', 'Food & Beverage Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMK', 48, 'Pria', 'Psikologi', '2-4 tahun', 'Spesialis Rekrutmen', 'Yogyakarta', 'Universitas Gadjah Mada', 3, 6500000, '-', '-', '25/05/2024', 'new'),
(5, 'AgnKanLeg', 'Kantor Pusat', 'Legal Department', 'Middle Manager', 'Corporate Legal Strategic Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S2', 35, 'Wanita', 'Ilmu Komunikasi', '> 4 tahun', 'Spesialis Pelatihan dan Pengembangan', 'Medan', 'Universitas Sumatera Utara', 3, 5700000, '-', '-', '25/05/2024', 'new'),
(6, 'AguDepPub', 'Depo Tambak Langon', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 51, 'Pria', 'Hukum', '> 4 tahun', 'Analis Kinerja Karyawan', 'Semarang', 'Universitas Diponegoro', 3, 6000000, '-', '-', '25/05/2024', 'new'),
(7, 'AhmPerHRB', 'Perak Barat', 'HRBP Department', 'Staff', 'Human Resources Business Partner Operation Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'SMK', 30, 'Pria', 'Pendidikan Bahasa Inggris', '> 4 tahun', 'Administrator Kompensasi dan Manfaat', 'Malang', 'Universitas Brawijaya', 3, 5900000, '-', '-', '25/05/2024', 'new'),
(8, 'AhmKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Staff', 'Maintenance Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'SMK', 25, 'Pria', 'Administrasi Bisnis', '1-2 tahun', 'Spesialis Hubungan Industrial', 'Palembang', 'Universitas Sriwijaya', 3, 6200000, '-', '-', '25/05/2024', 'new'),
(9, 'AinDepYie', 'Depo Tambak Langon', 'Yield Excellent Service Department', 'Non Grade', 'Canteen Keeper', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SD', 39, 'Wanita', 'Fisika', '1-2 tahun', 'Analis Kebijakan Personalia', 'Denpasar', 'Universitas Udayana', 3, 5500000, '-', '-', '25/05/2024', 'new'),
(10, 'AinPerIns', 'Perak Barat', 'Insurance & Claim Department', 'Team Leader', 'Insurance & Claim Corporate Account', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 38, 'Pria', 'Kimia', '1-2 tahun', 'Manajer Komunikasi Perusahaan', 'Makassar', 'Universitas Hasanuddin', 3, 6600000, '-', '-', '25/05/2024', 'new'),
(11, 'AkhKalYie', 'Kalianak', 'Yield Excellent Service Department', 'Staff', 'Cook', 'Human Capital & Corporate Affairs Division', 'Menikah', 'D3', 40, 'Pria', 'Biologi', '< 6 bulan', 'Koordinator Media Sosial', 'Padang', 'Universitas Andalas', 3, 5300000, '-', '-', '25/05/2024', 'new'),
(12, 'AkhKanPro', 'Kantor Pusat', 'Project and Building Maintenance Department', 'Junior Manager', 'Project & Building Maintenance Assistant Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 32, 'Pria', 'Matematika', '< 6 bulan', 'Spesialis Hubungan Masyarakat', 'Pontianak', 'Universitas Tanjungpura', 3, 6400000, '-', '-', '25/05/2024', 'new'),
(13, 'AmaKanHum', 'Kantor Pusat', 'Human Capital Department', 'Staff', 'Learning And Development Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 23, 'Wanita', 'Sosiologi', '1-2 tahun', 'Manajer Hubungan Investor', 'Manado', 'Universitas Sam Ratulangi', 3, 5600000, '-', '-', '25/05/2024', 'new'),
(14, 'AndDepPub', 'Depo Japfa', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 44, 'Pria', 'Ekonomi', '1-2 tahun', 'Koordinator Urusan Pemerintah', 'Pekanbaru', 'Universitas Riau', 3, 6100000, '-', '-', '25/05/2024', 'new'),
(15, 'AndKanQua', 'Kantor Pusat', 'Quality Health Safety And Enviroment Department', 'Middle Manager', 'Quality Health Safety And Environment National Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'D3', 29, 'Pria', 'Agribisnis', '1-2 tahun', 'Spesialis Kepatuhan Peraturan', 'Banjarmasin', 'Universitas Lambung Mangkurat', 3, 6700000, '-', '-', '25/05/2024', 'new'),
(16, 'AngKanHum', 'Kantor Pusat', 'Human Capital & Corporate Affairs', 'Director', 'Human Capital & Corporate Affairs Director', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 48, 'Pria', 'Hukum', '< 6 bulan', 'Analis Hukum Perusahaan', 'Bandar Lampung', 'Universitas Lampung', 3, 5800000, '-', '-', '25/05/2024', 'new'),
(17, 'AntKalYie', 'Kalianak', 'Yield Excellent Service Department', 'Team Leader', 'Food & Beverage Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'D1', 48, 'Pria', 'Sastra Inggris', '< 6 bulan', 'Manajer Keberlanjutan Perusahaan', 'Jambi', 'Universitas Jambi', 3, 6300000, '-', '-', '25/05/2024', 'new'),
(18, 'AriPerPub', 'Perak Barat', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 48, 'Pria', 'Farmasi', '< 6 bulan', 'Koordinator Program Kesejahteraan Karyawan', 'Gorontalo', 'Universitas Negeri Gorontalo', 3, 5900000, '-', '-', '25/05/2024', 'new'),
(19, 'AriKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Worker', 'Area Driver', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMK', 35, 'Pria', 'Arsitektur', '< 6 bulan', 'Spesialis Keselamatan dan Kesehatan Kerja', 'Samarinda', 'Universitas Mulawarman', 3, 6500000, '-', '-', '25/05/2024', 'new'),
(20, 'AriKanHum', 'Kantor Pusat', 'Human Capital Department', 'Team Leader', 'Trainer', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 26, 'Wanita', 'Teknik Elektro', '< 1 tahun', 'Manajer Layanan Karyawan', 'Mataram', 'Universitas Mataram', 3, 5400000, '-', '-', '25/05/2024', 'new'),
(21, 'AryKanLeg', 'Kantor Pusat', 'Legal Department', 'Junior Manager', 'Legal Compliance Assistant Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 26, 'Pria', 'Bahasa dan Sastra Indonesia', '< 1 tahun', 'Koordinator Pengembangan Budaya Organisasi', 'Ambon', 'Universitas Pattimura', 3, 6200000, '-', '-', '25/05/2024', 'new'),
(22, 'AwaDepPub', 'Depo Tanjung Batu 4', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 52, 'Pria', 'Kedokteran', '1-2 tahun', 'Spesialis Keanekaragaman dan Inklusi', 'Jayapura', 'Universitas Cenderawasih', 3, 5600000, '-', '-', '25/05/2024', 'new'),
(23, 'BeaKanLeg', 'Kantor Pusat', 'Legal Department', 'Staff', 'General Legal Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 22, 'Wanita', 'Ilmu Gizi', '2-4 tahun', 'Analis Penggajian', 'Kupang', 'Universitas Nusa Cendana', 3, 6000000, '-', '-', '25/05/2024', 'new'),
(24, 'ChrKanHRB', 'Kantor Pusat', 'HRBP Department', 'Staff', 'Human Resources Business Partner Operation Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 24, 'Pria', 'Geografi', '1-2 tahun', 'Administrator Personalia', 'Ternate', 'Universitas Khairun', 3, 6700000, '-', '-', '25/05/2024', 'new'),
(25, 'ChrKanPro', 'Kantor Pusat', 'Project and Building Maintenance Department', 'Staff', 'Project & Building Maintenance Administration Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 22, 'Wanita', 'Teknik Sipil', '2-4 tahun', 'Spesialis Manajemen Kinerja', 'Bengkulu', 'Universitas Bengkulu', 3, 5800000, '-', '-', '25/05/2024', 'new'),
(26, 'DanPerHRB', 'Perak Barat', 'HRBP Department', 'Junior Manager', 'Human Resources Business Partner Inland Service Manager', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 29, 'Pria', 'Pariwisata', '1-2 tahun', 'Manajer Penghargaan dan Pengakuan', 'Serang', 'Universitas Sultan Ageng Tirtayasa', 3, 6400000, '-', '-', '25/05/2024', 'new'),
(27, 'DarKanPer', 'Kantor Pusat', 'Performance Excellence Department', 'Staff', 'Performance Excellence Human Capital & Finance Administration Division Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'D4', 21, 'Pria', 'Hubungan Internasional', '2-4 tahun', 'Koordinator Program Pendidikan Karyawan', 'Kendari', 'Universitas Halu Oleo', 3, 5900000, '-', '-', '25/05/2024', 'new'),
(28, 'DedKanPro', 'Kantor Pusat', 'Project and Building Maintenance Department', 'Middle Manager', 'Project & Building Maintenance Manager', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 27, 'Pria', 'Antropologi', '2-4 tahun', 'Spesialis Kesejahteraan Karyawan', 'Tasikmalaya', 'Universitas Siliwangi', 3, 6300000, '-', '-', '25/05/2024', 'new'),
(29, 'DevPerIns', 'Perak Barat', 'Insurance & Claim Department', 'Junior Manager', 'Insurance & Claim Assistant Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 30, 'Wanita', 'Teknik Mesin', '2-4 tahun', 'Manajer Kesehatan dan Kesejahteraan Karyawan', 'Cirebon', 'Universitas Swadaya Gunung Jati', 3, 5500000, '-', '-', '25/05/2024', 'new'),
(30, 'DhoDepPub', 'Depo Tambak Langon', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 52, 'Pria', 'Ilmu Politik', '2-4 tahun', 'Koordinator Kesetaraan Kerja', 'Sukabumi', 'Universitas Nusa Putra', 3, 6600000, '-', '-', '25/05/2024', 'new'),
(31, 'DimKanPub', 'Kantor Pusat', 'Public Affair, Industrial & Employee Relation Department', 'Staff', 'Investigator & Security Staff', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMK', 27, 'Pria', 'Bahasa Mandarin', '2-4 tahun', 'Spesialis Pengembangan Organisasi', 'Purwokerto', 'Universitas Jenderal Soedirman', 3, 5700000, '-', '-', '25/05/2024', 'new'),
(32, 'DimCabPer', 'Cabang Jakarta', 'Performance Excellence Department', 'Junior Manager', 'Performance Excellence Operations West Area Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 30, 'Pria', 'Teknik Komputer', '2-4 tahun', 'Analis Pengelolaan Kinerja', 'Solo', 'Universitas Sebelas Maret', 3, 6100000, '-', '-', '25/05/2024', 'new'),
(33, 'DodPerPub', 'Perak Barat', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 39, 'Pria', 'Pendidikan Matematika', '2-4 tahun', 'Administrator Manfaat Karyawan', 'Magelang', 'Universitas Tidar', 3, 5800000, '-', '-', '25/05/2024', 'new'),
(34, 'DomKanHum', 'Kantor Pusat', 'Human Capital & Corporate Affairs', 'General Manager', 'Human Capital & Corporate Affairs General Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S2', 52, 'Pria', 'Informatika', '2-4 tahun', 'Spesialis Pengembangan Kepemimpinan', 'Kediri', 'Universitas Kadiri', 3, 6500000, '-', '-', '25/05/2024', 'new'),
(35, 'EdoPerYie', 'Perak Barat', 'Yield Excellent Service Department', 'Team Leader', 'Yield Excellent Service Representative Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S2', 30, 'Pria', 'Ilmu Hukum', '2-4 tahun', 'Manajer Komunikasi Internal', 'Kediri', 'Universitas Nusantara PGRI', 3, 5900000, '-', '-', '25/05/2024', 'new'),
(36, 'EkoDepPub', 'Depo PKS 7', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 43, 'Pria', 'Pendidikan Agama Islam', '> 4 tahun', 'Koordinator Acara Perusahaan', 'Jember', 'Universitas Jember', 3, 6200000, '-', '-', '25/05/2024', 'new'),
(37, 'EnrKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Staff', 'Project Purchasing Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 24, 'Pria', 'Pendidikan Teknologi Informasi', '> 4 tahun', 'Spesialis Hubungan Eksternal', 'Bogor', 'Institut Pertanian Bogor', 3, 5300000, '-', '-', '27/05/2024', 'new'),
(38, 'EriKanLeg', 'Kantor Pusat', 'Legal Department', 'Team Leader', 'General Legal Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S2', 28, 'Pria', 'Manajemen Pemasaran', '> 4 tahun', 'Analis Pengelolaan Konflik', 'Depok', 'Politeknik Negeri Jakarta', 3, 6400000, '-', '-', '27/05/2024', 'new'),
(39, 'EviKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Team Leader', 'Project Purchasing Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 48, 'Wanita', 'Biologi Kelautan', '> 4 tahun', 'Manajer Keamanan Kerja', 'Karawang', 'Universitas Singaperbangsa', 3, 5600000, '-', '-', '27/05/2024', 'new'),
(40, 'FadPerIns', 'Perak Barat', 'Insurance & Claim Department', 'Team Leader', 'Insurance & Claim Corporate Account', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 30, 'Pria', 'Teknik Kimia', '> 4 tahun', 'Koordinator Program Kesehatan', 'Tangerang', 'Universitas Pelita Harapan', 3, 6000000, '-', '-', '27/05/2024', 'new'),
(41, 'FadKanHum', 'Kantor Pusat', 'Human Capital Department', 'Staff', 'Employer Branding Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'SMK', 23, 'Pria', 'Ilmu Pemerintahan', '< 6 bulan', 'Spesialis Pengembangan Karir', 'Bekasi', 'Universitas Gunadarma', 3, 6700000, '-', '-', '27/05/2024', 'new'),
(42, 'FahKanQua', 'Kantor Pusat', 'Quality Health Safety And Enviroment Department', 'Team Leader', 'Health Safety and Environment Surabaya Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 24, 'Pria', 'Teknik Industri', '< 6 bulan', 'Administrator Pelatihan', 'Balikpapan', 'Universitas Balikpapan', 3, 5800000, '-', '-', '27/05/2024', 'new'),
(43, 'FauKanHum', 'Kantor Pusat', 'Human Capital Department', 'Team Leader', 'Trainer', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 23, 'Wanita', 'Teknik Kimia', '< 6 bulan', 'Spesialis Pembinaan Karyawan', 'Batam', 'Universitas Internasional Batam', 3, 6300000, '-', '-', '27/05/2024', 'new'),
(44, 'FenKanLeg', 'Kantor Pusat', 'Legal Department', 'Worker', 'Collector', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 44, 'Pria', 'Teknik Mesin', '< 6 bulan', 'Analis Kepemimpinan Karyawan', 'Maluku', 'Universitas Darussalam Ambon', 3, 5900000, '-', '-', '27/05/2024', 'new'),
(45, 'FerKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Staff', 'Vehicle Staff', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMK', 26, 'Pria', 'Teknik Elektro', '< 6 bulan', 'Manajer Kesejahteraan Perusahaan', 'Manokwari', 'Universitas Papua', 3, 6500000, '-', '-', '27/05/2024', 'new'),
(46, 'FitKalYie', 'Kalianak', 'Yield Excellent Service Department', 'Staff', 'Yield Excellent Service Representative Staff', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 38, 'Wanita', 'Teknik Sipil', '> 4 tahun', 'Koordinator Program Kebahagiaan Kerja', 'Timika', 'Politeknik Amamapare', 3, 5400000, '-', '-', '27/05/2024', 'new'),
(47, 'FraPerYie', 'Perak Barat', 'Yield Excellent Service Department', 'Worker', 'Area Driver', 'Human Capital & Corporate Affairs Division', 'Menikah', 'STM', 44, 'Pria', 'Teknik Informatika', '1-2 tahun', 'Spesialis Hubungan Industri', 'Sorong', 'Universitas Victory Sorong', 3, 6200000, '-', '-', '27/05/2024', 'new'),
(48, 'FraKanQua', 'Kantor Pusat', 'Quality Health Safety And Enviroment Department', 'Team Leader', 'Quality Assurance', 'Human Capital & Corporate Affairs Division', 'Single', 'S2', 27, 'Pria', 'Teknik Lingkungan', '1-2 tahun', 'Analis Kesejahteraan Mental', 'Banyuwangi', 'Universitas 17 Agustus 1945 Banyuwangi', 3, 5600000, '-', '-', '27/05/2024', 'new'),
(49, 'GalKanHum', 'Kantor Pusat', 'Human Resources Information System Department', 'Staff', 'Human Resources Information System Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 24, 'Pria', 'Teknik Geologi', '1-2 tahun', 'Administrator Pengakuan Karyawan', 'Cilacap', 'Universitas Wijayakusuma', 3, 6100000, '-', '-', '27/05/2024', 'new'),
(50, 'GenDepPub', 'Depo Tambak Langon', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMP', 52, 'Pria', 'Informatika', '1-2 tahun', 'Spesialis Pemantauan Kinerja', 'Pematangsiantar', 'Universitas Simalungun', 3, 6700000, '-', '-', '27/05/2024', 'new'),
(51, 'HafDepPub', 'Depo Yonif', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SD', 47, 'Pria', 'Teknik Pertambangan', '< 6 bulan', 'Manajer Komunikasi Eksternal', 'Bekasi', 'Universitas Islam 45', 3, 5200000, '-', '-', '27/05/2024', 'new'),
(52, 'HarKanHum', 'Kantor Pusat', 'Human Resources Information System Department', 'Middle Manager', 'Human Resources Information System Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 30, 'Pria', 'Teknik Perminyakan', '< 6 bulan', 'Koordinator Promosi Kesehatan', 'Depok', 'Universitas Gunadarma', 3, 6300000, '-', '-', '27/05/2024', 'new'),
(53, 'HenDepPub', 'Depo Yonif', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 48, 'Pria', 'Teknik Komputer', '< 6 bulan', 'Spesialis Pembinaan Budaya', 'Jakarta', 'Universitas Mercu Buana', 3, 5800000, '-', '-', '27/05/2024', 'new'),
(54, 'HenCabHum', 'Cabang Balikpapan', 'Human Capital Department', 'Staff', 'Talent Assessment Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S2', 43, 'Pria', 'Teknik Nuklir', '1-2 tahun', 'Analis Kesejahteraan Kerja', 'Tangerang', 'Universitas Multimedia Nusantara', 3, 6500000, '-', '-', '27/05/2024', 'new'),
(55, 'HerTamPub', 'Tambak Langon 5', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 39, 'Pria', 'Teknik Material', '1-2 tahun', 'Administrator Kesetaraan Peluang', 'Bogor', 'Universitas Pakuan', 3, 5700000, '-', '-', '27/05/2024', 'new'),
(56, 'HerDepPub', 'Depo Tambak Langon', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 43, 'Pria', 'Teknik Astronotika', '1-2 tahun', 'Spesialis Pengembangan Kinerja', 'Bandung', 'Universitas Padjadjaran', 3, 6000000, '-', '-', '27/05/2024', 'new'),
(57, 'HerPerYie', 'Perak Barat', 'Yield Excellent Service Department', 'Worker', 'Area Driver', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 55, 'Pria', 'Teknik Aeroangkasa', '< 1 tahun', 'Manajer Kesejahteraan Masyarakat', 'Bandung', 'Universitas Pasundan', 3, 5900000, '-', '-', '27/05/2024', 'new'),
(58, 'HisKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Middle Manager', 'Yield Excellent Service Manager', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 36, 'Wanita', 'Sosiologi', '< 1 tahun', 'Koordinator Layanan Karyawan', 'Cirebon', 'Institut Agama Islam Negeri Syekh Nurjati', 3, 6200000, '-', '-', '27/05/2024', 'new'),
(59, 'IlmKalYie', 'Kalianak', 'Yield Excellent Service Department', 'Worker', 'Assistant Cook', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SD', 41, 'Wanita', 'Ilmu Sejarah', '< 1 tahun', 'Head of Human Capital Division', 'Tasikmalaya', 'Universitas Muhammadiyah Tasikmalaya', 3, 5500000, '-', '-', '27/05/2024', 'new'),
(60, 'IraPerIns', 'Perak Barat', 'Insurance & Claim Department', 'Staff', 'Insurance & Claim Corporate Account Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 31, 'Wanita', 'Antropologi Sosial', '< 1 tahun', 'Human Resources Manager', 'Garut', 'Universitas Garut', 3, 6600000, '-', '-', '27/05/2024', 'new'),
(61, 'IrfKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Team Leader', 'General Service Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'D4', 34, 'Pria', 'Ilmu Politik', '< 1 tahun', 'HR Development Coordinator', 'Bogor', 'Universitas Djuanda', 3, 5300000, '-', '-', '27/05/2024', 'new'),
(62, 'IswKalYie', 'Kalianak', 'Yield Excellent Service Department', 'Worker', 'Area Driver', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 52, 'Pria', 'Ekonomi Pembangunan', '< 1 tahun', 'Recruitment Specialist', 'Serang', 'Universitas Negeri Yogyakarta', 3, 6400000, '-', '-', '27/05/2024', 'new'),
(63, 'IwaKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Staff', 'Asset & Inventory Staff', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 33, 'Pria', 'Ilmu Komunikasi', '< 1 tahun', 'Training and Development Specialist', 'Yogyakarta', 'Universitas Negeri Yogyakarta', 3, 5600000, '-', '-', '27/05/2024', 'new'),
(64, 'JesKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Team Leader', 'Non Maintenance & Repair Purchasing Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 33, 'Wanita', 'Psikologi Pendidikan', '< 1 tahun', 'Employee Performance Analyst', 'Solo', 'Universitas Muhammadiyah Surakarta', 3, 6100000, '-', '-', '27/05/2024', 'new'),
(65, 'JimKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Team Leader', 'Maintenance & Repair Purchasing Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 51, 'Pria', 'Psikologi Industri', '< 1 tahun', 'Compensation and Benefits Administrator', 'Semarang', 'Universitas Katolik Soegijapranata', 3, 6700000, '-', '-', '27/05/2024', 'new'),
(66, 'JojDepPub', 'Depo Tambak Langon', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'STM', 42, 'Pria', 'Psikologi Klinis', '< 1 tahun', 'Industrial Relations Specialist', 'Salatiga', 'Universitas Kristen Satya Wacana', 3, 5800000, '-', '-', '27/05/2024', 'new'),
(67, 'JonCabPer', 'Cabang Jakarta', 'Performance Excellence Department', 'Junior Manager', 'Performance Excellence Operations West Area Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 37, 'Pria', 'Psikologi Sosial', '< 1 tahun', 'Personnel Policy Analyst', 'Purwokerto', 'Universitas Muhammadiyah Purwokerto', 3, 6300000, '-', '-', '27/05/2024', 'new'),
(68, 'JovKanPub', 'Kantor Pusat', 'Public Affair, Industrial & Employee Relation Department', 'Staff', 'Driver Acquisition Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'D4', 30, 'Pria', 'Psikologi Terapan', '< 1 tahun', 'Corporate Communications Manager', 'Magelang', 'Universitas Muhammadiyah Magelang', 3, 5900000, '-', '-', '27/05/2024', 'new'),
(69, 'KasKalYie', 'Kalianak', 'Yield Excellent Service Department', 'Worker', 'Assistant Cook', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SD', 51, 'Wanita', 'Psikologi Perkembangan', '< 1 tahun', 'Social Media Coordinator', 'Surakarta', 'Universitas Slamet Riyadi', 3, 6500000, '-', '-', '27/05/2024', 'new'),
(70, 'LauPerHRB', 'Perak Barat', 'HRBP Department', 'Middle Manager', 'Human Resources Business Partner Commercial Manager', 'Human Capital & Corporate Affairs Division', 'Janda', 'S1', 44, 'Wanita', 'Psikologi Kognitif', '2-4 tahun', 'Public Relations Specialist', 'Surabaya', 'Universitas Surabaya', 3, 5400000, '-', '-', '27/05/2024', 'new'),
(71, 'LilKanHum', 'Kantor Pusat', 'Human Capital & Corporate Affairs', 'Team Leader', 'Human Capital & Corporate Affairs Secretary', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 31, 'Wanita', 'Psikologi Abnormal', '2-4 tahun', 'Investor Relations Manager', 'Malang', 'Universitas Muhammadiyah Malang', 3, 6200000, '-', '-', '27/05/2024', 'new'),
(72, 'LukDepPub', 'Depo Tambak Langon', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 48, 'Pria', 'Psikologi Forensik', '2-4 tahun', 'Government Affairs Coordinator', 'Jember', 'Universitas Islam Jember', 3, 5600000, '-', '-', '27/05/2024', 'new'),
(73, 'M. KalPer', 'Kalianak', 'Performance Excellence Department', 'Middle Manager', 'Performance Excellence Fleet Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 45, 'Pria', 'Psikologi Organisasi', '2-4 tahun', 'Regulatory Compliance Specialist', 'Banyuwangi', 'Politeknik Negeri Banyuwangi', 3, 6000000, '-', '-', '27/05/2024', 'new'),
(74, 'M. KalYie', 'Kalianak', 'Yield Excellent Service Department', 'Team Leader', 'Yield Excellent Service Representative Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 29, 'Pria', 'Psikologi Kepribadian', '2-4 tahun', 'Corporate Legal Analyst', 'Kediri', 'Institut Agama Islam Negeri Kediri', 3, 6700000, '-', '-', '27/05/2024', 'new'),
(75, 'M. DepPub', 'Depo Yonif', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SD', 44, 'Pria', 'Psikologi Suku Bunga', '2-4 tahun', 'Corporate Sustainability Manager', 'Madiun', 'Universitas Merdeka Madiun', 3, 5800000, '-', '-', '27/05/2024', 'new'),
(76, 'MalPerHum', 'Perak Barat', 'Human Capital Department', 'Junior Manager', 'MT Executive', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 28, 'Pria', 'Psikologi Lingkungan', '2-4 tahun', 'Employee Welfare Program Coordinator', 'Mojokerto', 'Universitas Islam Majapahit', 3, 6400000, '-', '-', '27/05/2024', 'new'),
(77, 'ManDepPub', 'Depo Teluk Bayur', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMA', 49, 'Pria', 'Psikologi Pekerjaan', '2-4 tahun', 'Health and Safety Specialist', 'Pontianak', 'Politeknik Negeri Pontianak', 3, 5900000, '-', '-', '27/05/2024', 'new'),
(78, 'MarKanHum', 'Kantor Pusat', 'Human Capital Department', 'Middle Manager', 'Human Capital Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S2', 33, 'Wanita', 'Psikologi Kesehatan', '> 4 tahun', 'Employee Services Manager', 'Singkawang', 'Universitas Nahdlatul Ulama Kalimantan Barat', 3, 6300000, '-', '-', '27/05/2024', 'new'),
(79, 'MarPerIns', 'Perak Barat', 'Insurance & Claim Department', 'Team Leader', 'Insurance Sales', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 28, 'Pria', 'Psikologi Positif', '> 4 tahun', 'Organizational Culture Development Coordinator', 'Banjarmasin', 'Universitas Islam Kalimantan', 3, 5500000, '-', '-', '27/05/2024', 'new'),
(80, 'MasDepPub', 'Depo Yonif', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'STM', 54, 'Pria', 'Psikologi Budaya', '> 4 tahun', 'Diversity and Inclusion Specialist', 'Balikpapan', 'Universitas Tridharma', 3, 6600000, '-', '-', '27/05/2024', 'new'),
(81, 'MicKanPro', 'Kantor Pusat', 'Project and Building Maintenance Department', 'Team Leader', 'Project & Building Maintenance Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 24, 'Pria', 'Psikologi Agama', '> 4 tahun', 'Payroll Analyst', 'Tarakan', 'Universitas Borneo Tarakan', 3, 5700000, '-', '-', '27/05/2024', 'new'),
(82, 'MicKanPub', 'Kantor Pusat', 'Public Affair, Industrial & Employee Relation Department', 'Junior Manager', 'Investigator & Security Officer', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 38, 'Pria', 'Psikologi Perusahaan', '> 4 tahun', 'Personnel Administrator', 'Samarinda', 'Institut Agama Islam Negeri Samarinda', 3, 6100000, '-', '-', '27/05/2024', 'new'),
(83, 'MocKanPro', 'Kantor Pusat', 'Project and Building Maintenance Department', 'Team Leader', 'Project & Building Maintenance Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 25, 'Pria', 'Psikologi Keamanan', '> 4 tahun', 'Performance Management Specialist', 'Palangkaraya', 'Universitas Palangka Raya', 3, 5800000, '-', '-', '27/05/2024', 'new'),
(84, 'MocDepPub', 'Depo Tambak Langon', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 54, 'Pria', 'Sistem Informasi', '> 4 tahun', 'Awards and Recognition Manager', 'Tanjung Pinang', 'Universitas Maritim Raja Ali Haji', 3, 6500000, '-', '-', '27/05/2024', 'new'),
(85, 'MohDepPub', 'Depo Teluk Bayur', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 48, 'Pria', 'Teknik Telekomunikasi', '> 4 tahun', 'Employee Education Program Coordinator', 'Batam', 'Universitas Putera Batam', 3, 5900000, '-', '-', '27/05/2024', 'new'),
(86, 'MohDepPub', 'Depo Japfa', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMK', 41, 'Pria', 'Keamanan Informasi', '> 4 tahun', 'Employee Welfare Specialist', 'Bandar Lampung', 'Universitas Bandar Lampung', 3, 6200000, '-', '-', '27/05/2024', 'new'),
(87, 'MohTamPub', 'Tambak Langon 5', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMP', 47, 'Pria', 'Ilmu Data', '> 4 tahun', 'Employee Health and Wellbeing Manager', 'Palembang', 'Universitas Muhammadiyah Palembang', 3, 5300000, '-', '-', '27/05/2024', 'new'),
(88, 'MohKanPub', 'Kantor Pusat', 'Public Affair, Industrial & Employee Relation Department', 'Team Leader', 'Security Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMA', 34, 'Pria', 'Rekayasa Perangkat Lunak', '> 4 tahun', 'Equal Employment Opportunity Coordinator', 'Jambi', 'Politeknik Kesehatan Jambi', 3, 6400000, '-', '-', '27/05/2024', 'new'),
(89, 'MuhPerPub', 'Perak Barat', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Single', 'STM', 37, 'Pria', 'Analisis Sistem', '< 1 tahun', 'Organizational Development Specialist', 'Bengkulu', 'Politeknik Negeri Bengkulu', 3, 5600000, '-', '-', '27/05/2024', 'new'),
(90, 'MuhKanPro', 'Kantor Pusat', 'Project and Building Maintenance Department', 'Staff', 'Project & Building Maintenance Staff', 'Human Capital & Corporate Affairs Division', 'Menikah', 'D3', 28, 'Pria', 'Desain Grafis', '< 1 tahun', 'Employee Performance Management Analyst', 'Pangkal Pinang', 'Universitas Bangka Belitung', 3, 6000000, '-', '-', '27/05/2024', 'new'),
(91, 'MuhPerIns', 'Perak Barat', 'Insurance & Claim Department', 'Staff', 'Insurance & Claim Corporate Account Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 23, 'Pria', 'Pengembangan Permainan', '< 1 tahun', 'Employee Benefits Administrator', 'Pekanbaru', 'Universitas Islam Riau', 3, 6700000, '-', '-', '27/05/2024', 'new'),
(92, 'MuhKanHum', 'Kantor Pusat', 'Human Capital Department', 'Staff', 'Employer Branding Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 24, 'Pria', 'Ilmu Komputasi', '< 1 tahun', 'Leadership Development Specialist', 'Padang', 'Universitas Negeri Padang', 3, 5800000, '-', '-', '27/05/2024', 'new'),
(93, 'MulKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Worker', 'Area Driver', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 52, 'Pria', 'Pemrosesan Bahasa Alami', '< 6 bulan', 'Internal Communications Manager', 'Bukittinggi', 'Institut Agama Islam Negeri Bukittinggi', 3, 6300000, '-', '-', '27/05/2024', 'new'),
(94, 'MuyDepPub', 'Depo Tambak Langon', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 51, 'Pria', 'Kecerdasan Buatan', '< 6 bulan', 'Corporate Events Coordinator', 'Pematangsiantar', 'Institut Agama Islam Negeri Pematangsiantar', 3, 5900000, '-', '-', '27/05/2024', 'new'),
(95, 'NabKanHum', 'Kantor Pusat', 'Human Capital Department', 'Team Leader', 'Organizational Development Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 26, 'Wanita', 'Teknologi Cloud Computing', '< 6 bulan', 'External Relations Specialist', 'Medan', 'Universitas Muhammadiyah Sumatera Utara', 3, 6500000, '-', '-', '27/05/2024', 'new'),
(96, 'NetPerPer', 'Perak Barat', 'Performance Excellence Department', 'Staff', 'Performance Excellence Commercial & Inland Service Department Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 23, 'Wanita', 'Pengembangan Aplikasi Mobile', '< 6 bulan', 'Conflict Management Analyst', 'Lhokseumawe', 'Politeknik Negeri Lhokseumawe', 3, 5400000, '-', '-', '27/05/2024', 'new'),
(97, 'NicKanPub', 'Kantor Pusat', 'Public Affair, Industrial & Employee Relation Department', 'Team Leader', 'Industrial & Employee Relation Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 23, 'Pria', 'Pengembangan Web', '< 6 bulan', 'Workplace Safety Manager', 'Banda Aceh', 'Universitas Syiah Kuala', 3, 6200000, '-', '-', '27/05/2024', 'new'),
(98, 'NinPerYie', 'Perak Barat', 'Yield Excellent Service Department', 'Worker', 'Area Phone Operator', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 39, 'Wanita', 'Analisis Big Data', '< 6 bulan', 'Health Program Coordinator', 'Gorontalo', 'Politeknik Gorontalo', 3, 5600000, '-', '-', '27/05/2024', 'new'),
(99, 'NizKanQua', 'Kantor Pusat', 'Quality Health Safety And Enviroment Department', 'Team Leader', 'Health Safety and Environment Surabaya Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 32, 'Pria', 'Pengolahan Citra', '< 6 bulan', 'Career Development Specialist', 'Manado', 'Universitas Negeri Manado', 3, 6100000, '-', '-', '27/05/2024', 'new'),
(100, 'NunKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Worker', 'Head Office Phone Operator', 'Human Capital & Corporate Affairs Division', 'Menikah', 'D1', 41, 'Wanita', 'Teknologi Blockchain', '< 6 bulan', 'Training Program Administrator', 'Palu', 'Universitas Tadulako', 3, 6700000, '-', '-', '27/05/2024', 'new'),
(101, 'NurKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Staff', 'Expedition & Delivery Staff', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMK', 39, 'Pria', 'Pengembangan E-commerce', '< 6 bulan', 'Employee Mentoring Specialist', 'Surabaya', 'Universitas Airlangga', 3, 5200000, '-', '-', '27/05/2024', 'new'),
(102, 'NurPerYie', 'Perak Barat', 'Yield Excellent Service Department', 'Worker', 'Area Phone Operator', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 42, 'Wanita', 'Manajemen Proyek TI', '< 6 bulan', 'Employee Leadership Analyst', 'Malang', 'Universitas Brawijaya', 3, 6300000, '-', '-', '27/05/2024', 'new'),
(103, 'PatKanHum', 'Kantor Pusat', 'Human Capital Department', 'Staff', 'Talent Acquisition Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 23, 'Wanita', 'Desain User Experience (UX)', '1-2 tahun', 'Corporate Wellbeing Manager', 'Surabaya', 'Institut Teknologi Sepuluh Nopember', 3, 5800000, '-', '-', '27/05/2024', 'new'),
(104, 'PraKalHum', 'Kalianak', 'Human Capital Department', 'Junior Manager', 'Senior Trainer', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 43, 'Pria', 'Manajemen Layanan TI', '1-2 tahun', 'Employee Happiness Program Coordinator', 'Malang', 'Universitas Negeri Malang', 3, 6500000, '-', '-', '27/05/2024', 'new'),
(105, 'PriKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Worker', 'Area Driver', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMK', 36, 'Pria', 'Manajemen Sumber Daya Manusia', '1-2 tahun', 'Performance Promotion Program Coordinator', 'Jember', 'Universitas Jember', 3, 5700000, '-', '-', '27/05/2024', 'new'),
(106, 'RacKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Junior Manager', 'Yield Excellent Service Assistant Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 34, 'Pria', 'Psikologi Industri dan Organisasi', '1-2 tahun', 'Cultural Development Specialist', 'Kediri', 'Universitas Kadiri', 3, 6000000, '-', '-', '27/05/2024', 'new'),
(107, 'RegKanHum', 'Kantor Pusat', 'Human Capital Department', 'Team Leader', 'Talent Acquisition Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 31, 'Wanita', 'Hubungan Industrial', '1-2 tahun', 'Workforce Wellness Analyst', 'Surabaya', 'Universitas Surabaya', 3, 5900000, '-', '-', '27/05/2024', 'new'),
(108, 'RegPerPer', 'Perak Barat', 'Performance Excellence Department', 'Middle Manager', 'Performance Excellence Operations Strategic East Area Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 32, 'Pria', 'Manajemen Organisasi', '1-2 tahun', 'Equality of Opportunity Administrator', 'Malang', 'Universitas Muhammadiyah Malang', 3, 6200000, '-', '-', '27/05/2024', 'new'),
(109, 'RibDepPub', 'Depo Yonif', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMP', 44, 'Pria', 'Manajemen SDM dalam Bisnis', '1-2 tahun', 'Performance Improvement Specialist', 'Surabaya', 'Universitas Kristen Petra', 3, 5500000, '-', '-', '27/05/2024', 'new'),
(110, 'RicKanHum', 'Kantor Pusat', 'Human Capital Department', 'Junior Manager', 'Talent Acquisition Assistant Manager', 'Human Capital & Corporate Affairs Division', 'Single', 'S2', 28, 'Pria', 'Pengembangan Sumber Daya Manusia', '1-2 tahun', 'External Communications Manager', 'Malang', 'Universitas Islam Malang', 3, 6600000, '-', '-', '27/05/2024', 'new'),
(111, 'RivKanQua', 'Kantor Pusat', 'Quality Health Safety And Enviroment Department', 'Staff', 'Health Safety and Environment Surabaya Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'D4', 24, 'Pria', 'Konseling Karier', '1-2 tahun', 'Health Promotion Coordinator', 'Surabaya', 'Universitas Katolik Widya Mandala', 3, 5300000, '-', '-', '27/05/2024', 'new'),
(112, 'RobKanLeg', 'Kantor Pusat', 'Legal Department', 'Staff', 'General Legal Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 23, 'Pria', 'Manajemen Perubahan Organisasi', '1-2 tahun', 'Cultural Development Program Coordinator', 'Malang', 'Politeknik Negeri Malang', 3, 6400000, '-', '-', '27/05/2024', 'new'),
(113, 'RosKanHum', 'Kantor Pusat', 'Human Capital Department', 'Middle Manager', 'Talent Management & Development Manager', 'Human Capital & Corporate Affairs Division', 'Single', 'S2', 33, 'Wanita', 'Manajemen Kinerja', '1-2 tahun', 'Employee Safety and Health Manager', 'Surabaya', 'Universitas 17 Agustus 1945 Surabaya', 3, 5600000, '-', '-', '27/05/2024', 'new'),
(114, 'SamDepPub', 'Depo Yonif', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'STM', 53, 'Pria', 'Manajemen Konflik', '1-2 tahun', 'Employee Services Coordinator', 'Jember', 'Politeknik Negeri Jember', 3, 6100000, '-', '-', '27/05/2024', 'new'),
(115, 'SamPerIns', 'Perak Barat', 'Insurance & Claim Department', 'Staff', 'Insurance & Claim Corporate Account Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'D3', 22, 'Pria', 'Manajemen Rekrutmen dan Seleksi', '1-2 tahun', 'Talent Acquisition Manager', 'Madiun', 'Universitas Merdeka Madiun', 3, 6700000, '-', '-', '27/05/2024', 'new'),
(116, 'SasKanHum', 'Kantor Pusat', 'Human Capital Department', 'Team Leader', 'Employer Branding Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 29, 'Wanita', 'Manajemen Pelatihan dan Pengembangan', '1-2 tahun', 'Diversity and Inclusion Coordinator', 'Mojokerto', 'Universitas Islam Majapahit', 3, 5800000, '-', '-', '27/05/2024', 'new'),
(117, 'SatCabPer', 'Cabang Jakarta', 'Performance Excellence Department', 'Junior Manager', 'Performance Excellence Operations West Area Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 26, 'Pria', 'Manajemen Kompensasi dan Penghargaan', '1-2 tahun', 'Organizational Development Coordinator', 'Surabaya', 'Universitas Narotama', 3, 6300000, '-', '-', '27/05/2024', 'new'),
(118, 'SayDepPub', 'Depo PKS 7', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 44, 'Pria', 'Manajemen Hubungan Karyawan', '1-2 tahun', 'Performance Analysis Specialist', 'Malang', 'Universitas Ma Chung', 3, 5900000, '-', '-', '27/05/2024', 'new'),
(119, 'ShaKanHum', 'Kantor Pusat', 'Human Capital Department', 'Junior Manager', 'Organizational Development Assistant Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 34, 'Pria', 'Manajemen Informasi', '1-2 tahun', 'Employee Benefits Coordinator', 'Surabaya', 'Universitas Dr. Soetomo', 3, 6500000, '-', '-', '27/05/2024', 'new'),
(120, 'SigKalHRB', 'Kalianak', 'HRBP Department', 'Junior Manager', 'Human Resources Business Partner Fleet Assistant Manager', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 29, 'Pria', 'Manajemen Kepegawaian', '1-2 tahun', 'Leadership Development Manager', 'Blitar', 'Universitas Islam Balitar', 3, 5400000, '-', '-', '27/05/2024', 'new'),
(121, 'SteKanHRB', 'Kantor Pusat', 'HRBP Department', 'Middle Manager', 'Human Resources Business Partner HCCA, FAD, SDI, IA, BOD Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 38, 'Pria', 'Konseling Organisasi', '< 1 tahun', 'Internal Communications Coordinator', 'Bojonegoro', 'Universitas Bojonegoro', 3, 6200000, '-', '-', '27/05/2024', 'new'),
(122, 'SubKanQua', 'Kantor Pusat', 'Quality Health Safety And Enviroment Department', 'Junior Manager', 'Quality Management Assistant Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 31, 'Pria', 'Manajemen Keselamatan dan Kesehatan Kerja', '< 1 tahun', 'Corporate Events Planner', 'Lamongan', 'Universitas Islam Lamongan', 3, 5600000, '-', '-', '27/05/2024', 'new'),
(123, 'SudCabPer', 'Cabang Jakarta', 'Performance Excellence Department', 'Senior Manager', 'Deputy General Manager Performance Excellence', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S2', 43, 'Pria', 'Manajemen Kualitas Hidup Kerja', '< 1 tahun', 'External Relations Manager', 'Tulungagung', 'IAIN Tulungagung', 3, 6000000, '-', '-', '27/05/2024', 'new'),
(124, 'SuhPerPub', 'Perak Barat', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 58, 'Pria', 'Manajemen Keragaman dan Inklusi', '< 6 bulan', 'Conflict Resolution Specialist', 'Sidoarjo', 'Universitas Muhammadiyah Sidoarjo', 3, 6700000, '-', '-', '27/05/2024', 'new'),
(125, 'SuhKanYie', 'Kantor Pusat', 'Yield Excellent Service Department', 'Worker', 'Area Driver', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMK', 56, 'Pria', 'Manajemen SDM Internasional', '< 6 bulan', 'Workplace Safety Coordinator', 'Pasuruan', 'Universitas Yudharta Pasuruan', 3, 5800000, '-', '-', '27/05/2024', 'new'),
(126, 'SulDepPub', 'Depo Japfa', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'STM', 41, 'Pria', 'Manajemen Analisis Pekerjaan dan Organisasi', '< 6 bulan', 'Health and Wellness Program Manager', 'Probolinggo', 'Politeknik Negeri Probolinggo', 3, 6400000, '-', '-', '27/05/2024', 'new'),
(127, 'SunDepPub', 'Depo Yonif', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 46, 'Pria', 'Digital Marketing', '< 6 bulan', 'Career Development Coordinator', 'Ponorogo', 'Universitas Muhammadiyah Ponorogo', 3, 5900000, '-', '-', '27/05/2024', 'new'),
(128, 'SupDepPub', 'Depo Tambak Langon', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 58, 'Pria', 'Digital Communication', '< 1 tahun', 'Training Program Specialist', 'Magetan', 'STKIP PGRI Magetan', 3, 6300000, '-', '-', '20/05/2024', 'new'),
(129, 'SurTamPub', 'Tambak Langon 5', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 37, 'Pria', 'Digital Media', '< 1 tahun', 'Employee Mentoring Coordinator', 'Kediri', 'Universitas Nusantara PGRI Kediri', 3, 5500000, '-', '-', '20/05/2024', 'new'),
(130, 'SuwDepPub', 'Depo Teluk Bayur', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'STM', 56, 'Pria', 'Digital Publishing', '2-4 tahun', 'Leadership Development Analyst', 'Banyuwangi', 'Universitas 17 Agustus 1945 Banyuwangi', 3, 6600000, '-', '-', '20/05/2024', 'new'),
(131, 'SuyDepPub', 'Depo Tanjung Batu 4', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SLTA', 51, 'Pria', 'Digital Marketing', '2-4 tahun', 'Corporate Wellbeing Coordinator', 'Banyuwangi', 'Politeknik Negeri Banyuwangi', 3, 5700000, '-', '-', '20/05/2024', 'new'),
(132, 'SyiKalYie', 'Kalianak', 'Yield Excellent Service Department', 'Staff', 'Food and Beverage Procurement Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 28, 'Wanita', 'Digital Communication', '< 6 bulan', 'Employee Happiness Program Manager', 'Tuban', 'Universitas PGRI Ronggolawe Tuban', 3, 6100000, '-', '-', '20/05/2024', 'new'),
(133, 'TabKanLeg', 'Kantor Pusat', 'Legal Department', 'Team Leader', 'General Legal Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 29, 'Wanita', 'Digital Media', '< 6 bulan', 'Performance Improvement Coordinator', 'Nganjuk', 'STIKES Satria Bhakti Nganjuk', 3, 5800000, '-', '-', '20/05/2024', 'new'),
(134, 'TeuPerHRB', 'Perak Barat', 'HRBP Department', 'Middle Manager', 'Human Resources Business Partner Operation Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 30, 'Pria', 'Digital Design', '< 6 bulan', 'Cultural Development Manager', 'Jombang', 'Universitas Darul Ulum', 3, 6500000, '-', '-', '20/05/2024', 'new'),
(135, 'ThoKanHum', 'Kantor Pusat', 'Human Resources Information System Department', 'Staff', 'Human Resources Information System Staff', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 23, 'Pria', 'Digital Journalism', '< 6 bulan', 'Workforce Wellness Coordinator', 'Jombang', 'Universitas Hasyim Asy\'ari', 3, 5900000, '-', '-', '20/05/2024', 'new'),
(136, 'TriKanHum', 'Kantor Pusat', 'Human Capital & Corporate Affairs', 'Senior Manager', 'Deputy General Manager Human Capital', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 46, 'Wanita', 'Digital Advertising', '< 6 bulan', 'Equality of Opportunity Specialist', 'Trenggalek', 'STKIP PGRI Trenggalek', 3, 6200000, '-', '-', '20/05/2024', 'new'),
(137, 'UsmDepPub', 'Depo Yonif', 'Public Affair, Industrial & Employee Relation Department', 'Worker', 'Security Guard', 'Human Capital & Corporate Affairs Division', 'Menikah', 'SMP', 44, 'Pria', 'Digital Business', '< 6 bulan', 'Performance Improvement Analyst', 'Pacitan', 'STKIP PGRI Pacitan', 3, 5300000, '-', '-', '20/05/2024', 'new'),
(138, 'WemPerPer', 'Perak Barat', 'Performance Excellence Department', 'Team Leader', 'Performance Excellence Operations East Area Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 27, 'Pria', 'Digital Innovation', '< 6 bulan', 'External Communications Coordinator', 'Bangkalan', 'Universitas Trunojoyo Madura', 3, 6400000, '-', '-', '20/05/2024', 'new'),
(139, 'WilKanPer', 'Kantor Pusat', 'Performance Excellence Department', 'Junior Manager', 'Performance Excellence Human Capital & Finance and Administration Division Manager', 'Human Capital & Corporate Affairs Division', 'Single', 'S2', 31, 'Pria', 'Digital Entrepreneurship', '2-4 tahun', 'Health Promotion Specialist', 'Sampang', 'Universitas Madura', 3, 5600000, '-', '-', '20/05/2024', 'new'),
(140, 'YesKanHum', 'Kantor Pusat', 'Human Capital & Corporate Affairs', 'Senior Manager', 'Pjs. Administrative Deputy General Manager Corporate Affairs', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 35, 'Wanita', 'Digital Strategy', '2-4 tahun', 'Cultural Development Coordinator', 'Pamekasan', 'Universitas Islam Madura', 3, 6000000, '-', '-', '20/05/2024', 'new'),
(141, 'YogPerHRB', 'Perak Barat', 'HRBP Department', 'Team Leader', 'Human Resources Business Partner Operation Supervisor', 'Human Capital & Corporate Affairs Division', 'Single', 'S1', 24, 'Pria', 'Digital Transformation', '> 4 tahun', 'Employee Safety and Health Coordinator', 'Sumenep', 'Universitas Wiraraja', 3, 6700000, '-', '-', '30/05/2024', 'new');
INSERT INTO `data recommendation candidate` (`id`, `nama`, `lokasi`, `unit`, `lvl_jabatan`, `jabatan`, `divisi`, `marital_status`, `pendidikan`, `umur`, `kelamin`, `study_major`, `exp`, `last_position`, `current_city`, `institution`, `GPA`, `expected_salary`, `personality`, `intelligent`, `apply_on`, `status`) VALUES
(142, 'YopKanHum', 'Kantor Pusat', 'Human Resources Information System Department', 'Team Leader', 'Human Resources Data Analyst Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 32, 'Pria', 'Digital Analytics', '> 4 tahun', 'Employee Services Specialist', 'Lumajang', 'STIE Widya Gama Lumajang', 3, 5800000, '-', '-', '30/05/2024', 'new'),
(143, 'YudKalPer', 'Kalianak', 'Performance Excellence Department', 'Junior Manager', 'Performance Excellence Fleet Manager', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S2', 40, 'Pria', 'Digital Branding', '> 4 tahun', 'Leadership Development Specialist', 'Bondowoso', 'STKIP PGRI Bondowoso', 3, 6300000, '-', '-', '30/05/2024', 'new'),
(144, 'YudKanPub', 'Kantor Pusat', 'Public Affair, Industrial & Employee Relation Department', 'Team Leader', 'Industrial & Employee Relation Supervisor', 'Human Capital & Corporate Affairs Division', 'Menikah', 'S1', 54, 'Pria', 'Digital Content Creation', '> 4 tahun', 'Internal Communications Manager', 'Situbondo', 'Universitas Abdurachman Saleh Situbondo', 3, 5900000, '-', '-', '30/05/2024', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidatedata`
--
ALTER TABLE `candidatedata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data recommendation candidate`
--
ALTER TABLE `data recommendation candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidatedata`
--
ALTER TABLE `candidatedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `data recommendation candidate`
--
ALTER TABLE `data recommendation candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
