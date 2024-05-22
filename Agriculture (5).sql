-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2024 at 09:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Agriculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `pass`) VALUES
(1, 'suraj', 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `Announcement`
--

CREATE TABLE `Announcement` (
  `an_id` int(4) NOT NULL,
  `sender_id` int(4) NOT NULL,
  `receiver_id` varchar(30) NOT NULL,
  `sms` text NOT NULL,
  `senttime` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Announcement`
--

INSERT INTO `Announcement` (`an_id`, `sender_id`, `receiver_id`, `sms`, `senttime`) VALUES
(31, 17, 'Bihar98', 'प्रत्यक्ष लाभ अंतरण, कृषि विभाग, बिहार सरकार में आपका स्वागत है |PM KISAN HELP LINE 1800115526(Toll Free)  **आवेदक को आवेदन देने के लिये OTP उनके पंजीकृत मोबाइल पर भेजा जाएगा, जो आवेदन के लिये आवश्यक एवं गोपनीय है| **किसान पंजीकरण की कोई अंतिम समय सीमा निर्धारित नहीं की गयी है | ** CSC/SAHAJ केन्द्रों पर किसान पंजीकरण निःशुल्क है |\r\n', '2024-05-21'),
(32, 17, 'india', 'प्रत्यक्ष लाभ अंतरण, कृषि विभाग, बिहार सरकार में आपका स्वागत है |PM KISAN HELP LINE 1800115526(Toll Free) **आवेदक को आवेदन देने के लिये OTP उनके पंजीकृत मोबाइल पर भेजा जाएगा, जो आवेदन के लिये आवश्यक एवं गोपनीय है| **किसान पंजीकरण की कोई अंतिम समय सीमा निर्धारित नहीं की गयी है | ** CSC/SAHAJ केन्द्रों पर किसान पंजीकरण निःशुल्क है |', '2024-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(3) NOT NULL,
  `bank_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `bank_name`) VALUES
(21, 'AXIS BANK'),
(15, 'BANK OF BARODA'),
(16, 'CENTRAL BANK OF INDIA'),
(17, 'FEDERAL BANK'),
(20, 'HDFC BANK'),
(13, 'ICICI BANK'),
(23, 'IDBI BANK'),
(18, 'INDIAN BANK'),
(22, 'INDUSIND BANK'),
(1, 'PNB-PUNJAB NATIONAL BANK'),
(14, 'SBI'),
(19, 'UNION BANK');

-- --------------------------------------------------------

--
-- Table structure for table `beej`
--

CREATE TABLE `beej` (
  `id` int(4) NOT NULL,
  `scheme` varchar(200) NOT NULL,
  `des` varchar(200) NOT NULL,
  `phasal` varchar(40) NOT NULL,
  `rate` int(4) NOT NULL,
  `anudanper` int(4) DEFAULT NULL,
  `anudankg` int(4) DEFAULT NULL,
  `limitation` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beej`
--

INSERT INTO `beej` (`id`, `scheme`, `des`, `phasal`, `rate`, `anudanper`, `anudankg`, `limitation`) VALUES
(1, 'राज्य योजना', 'मुख्यमंत्री तीव्र बीज विस्तार योजना	', 'गेहूँ', 43, 0, 36, 20),
(2, 'राष्ट्रिय खाद्य सुरक्षा मिशन गेंहू', 'जीरो टिलेज (गेंहू) प्रत्यक्षण', 'गेहूँ', 42, 0, 40, 40),
(3, 'राष्ट्रिय खाद्य सुरक्षा मिशन दलहन', 'प्रत्यक्षण', 'मसूर', 134, 0, 129, 16),
(4, 'राष्ट्रिय खाद्य सुरक्षा मिशन -तेलहन', 'State Plan Oilseeds(Subsidised Seed Distribution)', 'सरसों', 113, 0, 90, 2);

-- --------------------------------------------------------

--
-- Table structure for table `beejapply`
--

CREATE TABLE `beejapply` (
  `b_id` int(4) NOT NULL,
  `farmer_reg` varchar(20) NOT NULL,
  `scheme` varchar(200) NOT NULL,
  `des` int(200) NOT NULL,
  `rate` int(4) NOT NULL,
  `rs` int(4) NOT NULL,
  `anudan` int(4) DEFAULT NULL,
  `total_amount` int(4) NOT NULL,
  `applydate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `block_id` int(3) NOT NULL,
  `dist_id` int(3) NOT NULL,
  `block_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`block_id`, `dist_id`, `block_name`) VALUES
(1, 1, 'BASANTPUR'),
(2, 1, 'BHAGWANPUR HAT'),
(3, 1, 'GORIAKOTHI'),
(4, 1, 'LAKRI NABIGANJ'),
(5, 1, 'MAHARAJGANJ'),
(6, 1, 'DARAUNDHA'),
(7, 1, 'ANDAR'),
(8, 1, 'BARHARIA'),
(9, 1, 'DARAULI'),
(10, 1, 'GUTHANI'),
(11, 1, 'HASAN PURA'),
(12, 1, 'HUSSAINGANJ'),
(13, 1, 'MAIRWA'),
(14, 1, 'NAUTAN'),
(15, 1, 'PACHRUKHI'),
(16, 1, 'RAGHUNATHPUR'),
(17, 1, 'SIWAN SADAR'),
(18, 1, 'SISWAN'),
(19, 1, 'RAGHUNATHPUR');

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `d_id` int(3) NOT NULL,
  `area` varchar(60) NOT NULL,
  `Role` varchar(60) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Office` varchar(80) NOT NULL,
  `password` varchar(20) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `mob` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`d_id`, `area`, `Role`, `Name`, `Office`, `password`, `regdate`, `mob`) VALUES
(15, 'india', 'admin', 'Suraj Pandey', 'NCR Delhi', '123', '2024-05-21 02:25:47', '9006195930'),
(17, 'india', 'Heade Of Agriculture Department', 'Radheshyam Pandey', 'Rajendra nagar terminal Delhi', '123', '2024-05-21 02:27:49', '9546142202'),
(18, 'bhagwanpur', 'BO', 'Krishna Pandey', 'Bhagwanpur Block', '123', '2024-05-21 02:28:40', '9955122607'),
(19, 'Siwan', 'DM', 'Shubham Kumar', 'siwan Dm office', '123', '2024-05-21 02:30:24', '8507097130'),
(20, 'bihar', 'CAO', 'Abhishek Jha', 'patna', '123', '2024-05-21 02:32:01', '7033969399');

-- --------------------------------------------------------

--
-- Table structure for table `Diesal`
--

CREATE TABLE `Diesal` (
  `App_id` int(5) NOT NULL,
  `Scheme_id` int(5) NOT NULL,
  `Farmerid` varchar(50) NOT NULL,
  `Khata` varchar(40) NOT NULL,
  `Khesra` varchar(20) NOT NULL,
  `Price` int(8) NOT NULL,
  `Quantity` varchar(20) NOT NULL,
  `Irrigation_Month` varchar(20) NOT NULL,
  `Invoice_no` varchar(50) NOT NULL,
  `Invoice_pic` varchar(200) DEFAULT NULL,
  `Land_receipt` varchar(200) DEFAULT NULL,
  `App_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Diesal`
--

INSERT INTO `Diesal` (`App_id`, `Scheme_id`, `Farmerid`, `Khata`, `Khesra`, `Price`, `Quantity`, `Irrigation_Month`, `Invoice_no`, `Invoice_pic`, `Land_receipt`, `App_date`) VALUES
(9, 2, 'Bihar98', '10', '341', 20000, '100', 'may', '766', NULL, NULL, '2024-05-21 08:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `dist`
--

CREATE TABLE `dist` (
  `state_id` int(3) NOT NULL,
  `dist_id` int(3) NOT NULL,
  `Dist_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dist`
--

INSERT INTO `dist` (`state_id`, `dist_id`, `Dist_Name`) VALUES
(5, 1, 'Siwan'),
(5, 2, 'Saran'),
(5, 3, 'Madhepura'),
(5, 4, 'Araria'),
(5, 5, ' Arwal'),
(5, 6, 'Aurangabad(BH)'),
(5, 7, 'Banka '),
(5, 8, 'Begusarai'),
(5, 9, 'Bhagalpur'),
(5, 10, 'Bhojpur'),
(5, 11, 'Buxar'),
(5, 12, ' Darbhanga '),
(5, 13, 'Gaya '),
(5, 14, 'Gopalganj '),
(5, 15, 'Jamui '),
(5, 16, 'Jehanabad '),
(5, 17, 'Kaimur (Bhabua)'),
(5, 18, 'Katihar'),
(5, 19, ' Khagaria'),
(5, 20, ' Kishanganj '),
(5, 21, 'Lakhisarai'),
(5, 22, 'Madhepura'),
(5, 23, 'Madhubani'),
(5, 24, 'Munger '),
(5, 25, 'Muzaffarpur');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_reg`
--

CREATE TABLE `farmer_reg` (
  `farmerid` int(10) NOT NULL,
  `farmer_type` varchar(20) DEFAULT NULL,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `guardian` varchar(50) DEFAULT NULL,
  `dob` varchar(12) DEFAULT NULL,
  `sex` varchar(11) DEFAULT NULL,
  `cotegory` varchar(10) DEFAULT NULL,
  `farmer_range` varchar(20) DEFAULT NULL,
  `state` varchar(50) NOT NULL,
  `dist` varchar(50) DEFAULT NULL,
  `block` varchar(50) DEFAULT NULL,
  `village` varchar(100) DEFAULT NULL,
  `uidai` varchar(20) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `ifsc` varchar(20) DEFAULT NULL,
  `ac` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `mob` varchar(12) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `password` varchar(30) NOT NULL,
  `reg_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmer_reg`
--

INSERT INTO `farmer_reg` (`farmerid`, `farmer_type`, `f_name`, `l_name`, `guardian`, `dob`, `sex`, `cotegory`, `farmer_range`, `state`, `dist`, `block`, `village`, `uidai`, `bank`, `ifsc`, `ac`, `email`, `mob`, `photo`, `password`, `reg_date`) VALUES
(98, 'Rented', 'Suraj ', 'Kumar Pandey', 'Tilak Nand Pandey', '2000-09-15', 'male', 'General', 'Small', 'Bihar', 'Siwan', 'BHAGWANPUR', 'BADAR JAMIN', '337904124368', 'Punjab National Bank', 'PUNB0224300', '2243000100827102', 'psuraj470@gmail.com', '9006195930', '../upload_image/12.jpg', '123', '2024-05-21 07:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `panchayat`
--

CREATE TABLE `panchayat` (
  `p_id` int(5) NOT NULL,
  `block_id` int(3) NOT NULL,
  `panchayat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `panchayat`
--

INSERT INTO `panchayat` (`p_id`, `block_id`, `panchayat`) VALUES
(1, 2, 'MAHAMDA'),
(2, 2, 'SARAIPADAULI'),
(3, 2, 'KHEDWA'),
(4, 2, 'BANSOHI'),
(5, 2, 'BADKAGAON'),
(6, 2, 'BITHUNA'),
(7, 2, ' MORA KHAS'),
(8, 2, ' SHANKARPUR'),
(9, 2, 'MIRJUMLA'),
(10, 2, 'KAUDIA'),
(11, 2, ' BHIKHAMPUR'),
(12, 2, ' BRAHMSTHAN'),
(13, 2, ' SHAARHRAON'),
(14, 2, 'BALAHA  ARAZI '),
(15, 2, 'GOPALPUR'),
(16, 2, ' MAHAMMADPUR'),
(17, 2, ' BILASPUR'),
(18, 2, ' SAGAR SULTANPUR'),
(19, 2, 'MAHAMDA'),
(20, 2, 'SARAIPADAULI');

-- --------------------------------------------------------

--
-- Table structure for table `Query`
--

CREATE TABLE `Query` (
  `q_id` int(4) NOT NULL,
  `sender_id` varchar(30) NOT NULL,
  `receiver_id` varchar(30) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `sms` varchar(500) DEFAULT NULL,
  `QDate` datetime NOT NULL DEFAULT current_timestamp(),
  `Reply` varchar(300) DEFAULT 'No',
  `ReplyDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Query`
--

INSERT INTO `Query` (`q_id`, `sender_id`, `receiver_id`, `subject`, `sms`, `QDate`, `Reply`, `ReplyDate`) VALUES
(39, 'Bihar98', '18', 'Regarding Subsidy', 'Dear Sir, \r\nEmpowering farmers to efficiently water crops, ensuring agricultural productivity and environmental sustainability', '2024-05-21 08:15:53', 'Dear Farmer your issued has been solved', NULL),
(40, 'Bihar98', '19', 'Regarding assist my Application ', 'Please uodate my pm kisan application status', '2024-05-21 08:57:58', 'No', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Schemes`
--

CREATE TABLE `Schemes` (
  `Scheme_id` int(3) NOT NULL,
  `Scheme_Type` varchar(30) NOT NULL,
  `Eligible_Area` varchar(60) NOT NULL,
  `Scheme_Name` varchar(100) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `Releaseddate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Schemes`
--

INSERT INTO `Schemes` (`Scheme_id`, `Scheme_Type`, `Eligible_Area`, `Scheme_Name`, `Link`, `start`, `end`, `Releaseddate`) VALUES
(1, 'central', 'Lahladpur', 'PMKY', 'Diesal_Subsidy.php', '2024-04-12', '2024-04-30', '2024-04-12 21:55:41'),
(2, 'central', 'bihar', 'Diesel Subsidy', 'Diesal_Subsidy.php', '2024-04-19', '2024-05-31', '2024-04-12 22:33:54'),
(3, 'state', 'Punjab', 'Diesel Subsidy', 'Diesal_Subsidy.php', '2024-04-14', '2024-04-16', '2024-04-15 12:28:04'),
(4, 'central', 'india', 'PM Kisan Yojna', 'https://pmkisan.gov.in/RegistrationFormNew.aspx', '2024-05-20', '2024-05-20', '2024-05-02 08:44:41'),
(5, 'state', 'bihar', 'Tree Save yojna', 'https://onlinedbtagriservice.bihar.gov.in/pp/index2.html', '2024-05-20', '2024-05-23', '2024-05-21 08:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `States`
--

CREATE TABLE `States` (
  `state_id` int(3) NOT NULL,
  `state_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `States`
--

INSERT INTO `States` (`state_id`, `state_name`) VALUES
(1, 'Andaman & Nicobar Is'),
(2, 'Andaman & Nicobar Is'),
(3, 'Andhra Pradesh'),
(4, 'Arunachal Pradesh'),
(5, 'Assam'),
(6, 'Bihar'),
(7, 'Chandigarh'),
(8, 'Dadra & Nagar Haveli'),
(9, 'Delhi'),
(10, 'Goa, Daman & Diu'),
(11, 'Gujarat'),
(12, 'Haryana'),
(13, 'Himachal Pradesh	'),
(14, 'Jammu & Kashmir	'),
(15, 'Himachal Pradesh	'),
(16, 'Jammu & Kashmir'),
(17, 'JKerala'),
(18, 'Lakshadweep'),
(19, 'Madhya Pradesh'),
(20, 'Maharashtra'),
(21, 'Manipur'),
(22, 'Tripura'),
(23, 'Karnataka (Mysore)'),
(24, 'Nagaland'),
(25, 'Orissa'),
(26, 'Pondicherry'),
(27, 'Punjab'),
(28, 'Rajasthan'),
(29, 'Tamil Nadu'),
(30, 'Tripura'),
(31, 'Uttar Pradesh(UP)'),
(32, 'West Bengal'),
(33, 'Sikkim'),
(34, 'Mizoram');

-- --------------------------------------------------------

--
-- Table structure for table `UpdateStatus`
--

CREATE TABLE `UpdateStatus` (
  `status_id` int(11) NOT NULL,
  `App_id` int(5) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `Remark` varchar(300) DEFAULT NULL,
  `d_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `UpdateStatus`
--

INSERT INTO `UpdateStatus` (`status_id`, `App_id`, `status`, `Remark`, `d_id`, `update_date`) VALUES
(10, 9, 'In Progress', 'Inspection is going on by Kisan Salahkar', 18, '2024-05-21 08:19:51'),
(11, 9, 'Rejected', 'You are not eligible for this scheme , because you are not a land owner', 20, '2024-05-21 08:42:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Announcement`
--
ALTER TABLE `Announcement`
  ADD PRIMARY KEY (`an_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`),
  ADD UNIQUE KEY `bank_name` (`bank_name`);

--
-- Indexes for table `beej`
--
ALTER TABLE `beej`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`anudankg`);

--
-- Indexes for table `beejapply`
--
ALTER TABLE `beejapply`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `Diesal`
--
ALTER TABLE `Diesal`
  ADD PRIMARY KEY (`App_id`),
  ADD UNIQUE KEY `Farmerid` (`Farmerid`),
  ADD KEY `Scheme_id` (`Scheme_id`);

--
-- Indexes for table `dist`
--
ALTER TABLE `dist`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `farmer_reg`
--
ALTER TABLE `farmer_reg`
  ADD PRIMARY KEY (`farmerid`),
  ADD UNIQUE KEY `mob` (`mob`);

--
-- Indexes for table `panchayat`
--
ALTER TABLE `panchayat`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `Query`
--
ALTER TABLE `Query`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `Schemes`
--
ALTER TABLE `Schemes`
  ADD PRIMARY KEY (`Scheme_id`);

--
-- Indexes for table `States`
--
ALTER TABLE `States`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `UpdateStatus`
--
ALTER TABLE `UpdateStatus`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `d_id` (`d_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Announcement`
--
ALTER TABLE `Announcement`
  MODIFY `an_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `beej`
--
ALTER TABLE `beej`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `beejapply`
--
ALTER TABLE `beejapply`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `block_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
  MODIFY `d_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Diesal`
--
ALTER TABLE `Diesal`
  MODIFY `App_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dist`
--
ALTER TABLE `dist`
  MODIFY `dist_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `farmer_reg`
--
ALTER TABLE `farmer_reg`
  MODIFY `farmerid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `panchayat`
--
ALTER TABLE `panchayat`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `Query`
--
ALTER TABLE `Query`
  MODIFY `q_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Schemes`
--
ALTER TABLE `Schemes`
  MODIFY `Scheme_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `States`
--
ALTER TABLE `States`
  MODIFY `state_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `UpdateStatus`
--
ALTER TABLE `UpdateStatus`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Diesal`
--
ALTER TABLE `Diesal`
  ADD CONSTRAINT `diesal_ibfk_1` FOREIGN KEY (`Scheme_id`) REFERENCES `Schemes` (`Scheme_id`);

--
-- Constraints for table `UpdateStatus`
--
ALTER TABLE `UpdateStatus`
  ADD CONSTRAINT `updatestatus_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `Department` (`d_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
