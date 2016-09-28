-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2016 at 10:53 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `group03`
--

-- --------------------------------------------------------

--
-- Table structure for table `complainttype`
--

CREATE TABLE `complainttype` (
  `COMPTYPEID` int(11) NOT NULL,
  `COMPTYPENAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eduan`
--

CREATE TABLE `eduan` (
  `COMPLAINTID` int(11) NOT NULL,
  `COMPTYPEID` int(11) NOT NULL,
  `COMPLAINTTITLE` varchar(100) NOT NULL,
  `COMPLAINTTYPE` int(11) DEFAULT NULL,
  `COMPLAINTCONTENT` text NOT NULL,
  `ATTACH` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_guide`
--

CREATE TABLE `e_guide` (
  `E_GUIDEID` char(5) NOT NULL,
  `CATEGORYE` char(20) DEFAULT NULL,
  `TOPICE` char(20) DEFAULT NULL,
  `SUB_TOPICE` char(20) DEFAULT NULL,
  `CONTENTE` text,
  `CATEGORYM` char(20) DEFAULT NULL,
  `TOPICM` char(20) DEFAULT NULL,
  `SUB_TOPICM` char(20) DEFAULT NULL,
  `CONTENTM` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_news`
--

CREATE TABLE `e_news` (
  `E_NEWSID` char(5) NOT NULL,
  `PUSHLISHDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `TITLEE` char(30) DEFAULT NULL,
  `CONTENTE` text,
  `TITLEM` char(30) DEFAULT NULL,
  `CONTENTM` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_poll`
--

CREATE TABLE `e_poll` (
  `E_POLL_ID` int(11) NOT NULL,
  `QUESTION` varchar(255) NOT NULL,
  `ANSWER1` varchar(255) NOT NULL,
  `ANSWER2` varchar(255) NOT NULL,
  `ANSWER3` varchar(255) DEFAULT NULL,
  `ANSWER4` varchar(255) DEFAULT NULL,
  `RATE1` decimal(3,0) DEFAULT NULL,
  `RATE2` decimal(3,0) DEFAULT NULL,
  `RATE3` decimal(3,0) DEFAULT NULL,
  `RATE4` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `FAQID` int(11) NOT NULL,
  `FQATYPEID` int(11) NOT NULL,
  `FQATYPENAME` varchar(50) NOT NULL,
  `CATEGORY` int(11) DEFAULT NULL,
  `TOPIC` varchar(100) DEFAULT NULL,
  `SUB_TOPIC` varchar(100) DEFAULT NULL,
  `QUESTION` varchar(255) NOT NULL,
  `ANSWER` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq_type`
--

CREATE TABLE `faq_type` (
  `FQATYPEID` int(11) NOT NULL,
  `FQATYPENAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gstform`
--

CREATE TABLE `gstform` (
  `GSTFORMSID` char(5) NOT NULL,
  `PUBBLISHDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `CATEGORYE` char(20) DEFAULT NULL,
  `TITLEE` char(30) DEFAULT NULL,
  `FORMNUMBERE` char(10) DEFAULT NULL,
  `DESCRIPTIONE` text,
  `CATEGORYM` char(20) DEFAULT NULL,
  `TITLEM` char(30) DEFAULT NULL,
  `FORMNUMBERM` char(10) DEFAULT NULL,
  `DESCRIPTIONM` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gsttemplates`
--

CREATE TABLE `gsttemplates` (
  `GSTFORMSID2` char(5) NOT NULL,
  `PUBBLISHDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `CATEGORYE` char(20) DEFAULT NULL,
  `TITLEE` char(30) DEFAULT NULL,
  `FORMNUMBERE` char(10) DEFAULT NULL,
  `DESCRIPTIONE` text,
  `CATEGORYM` char(20) DEFAULT NULL,
  `TITLEM` char(30) DEFAULT NULL,
  `FORMNUMBERM` char(10) DEFAULT NULL,
  `DESCRIPTIONM` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_e_news`
--

CREATE TABLE `subscribe_e_news` (
  `SUBSCRIBEID` int(11) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe_e_news`
--

INSERT INTO `subscribe_e_news` (`SUBSCRIBEID`, `EMAIL`, `STATUS`) VALUES
(1, 'trongphuong@gmail.com', 'confirmed'),
(2, 'phuong@gmail.com', 'confirmed'),
(3, '', 'unconfirmed'),
(4, '', 'unconfirmed');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USERID` int(11) NOT NULL,
  `LEVEL_ID` int(11) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `TEL` char(11) DEFAULT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `POSTCODE` char(6) DEFAULT NULL,
  `COMPANYNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlevel`
--

CREATE TABLE `userlevel` (
  `LEVEL_ID` int(11) NOT NULL,
  `LEVELNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `userid` int(11) NOT NULL,
  `question` text COLLATE utf8_vietnamese_ci NOT NULL,
  `answer` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complainttype`
--
ALTER TABLE `complainttype`
  ADD PRIMARY KEY (`COMPTYPEID`);

--
-- Indexes for table `eduan`
--
ALTER TABLE `eduan`
  ADD PRIMARY KEY (`COMPLAINTID`),
  ADD KEY `FK_COMPLAINT_TYPE` (`COMPTYPEID`);

--
-- Indexes for table `e_guide`
--
ALTER TABLE `e_guide`
  ADD PRIMARY KEY (`E_GUIDEID`);

--
-- Indexes for table `e_news`
--
ALTER TABLE `e_news`
  ADD PRIMARY KEY (`E_NEWSID`);

--
-- Indexes for table `e_poll`
--
ALTER TABLE `e_poll`
  ADD PRIMARY KEY (`E_POLL_ID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`FAQID`),
  ADD KEY `FK_FAQ_TYPE` (`FQATYPEID`,`FQATYPENAME`);

--
-- Indexes for table `faq_type`
--
ALTER TABLE `faq_type`
  ADD PRIMARY KEY (`FQATYPEID`,`FQATYPENAME`);

--
-- Indexes for table `gstform`
--
ALTER TABLE `gstform`
  ADD PRIMARY KEY (`GSTFORMSID`);

--
-- Indexes for table `gsttemplates`
--
ALTER TABLE `gsttemplates`
  ADD PRIMARY KEY (`GSTFORMSID2`);

--
-- Indexes for table `subscribe_e_news`
--
ALTER TABLE `subscribe_e_news`
  ADD PRIMARY KEY (`SUBSCRIBEID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USERID`,`EMAIL`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`),
  ADD KEY `FK_USER_LEVEL` (`LEVEL_ID`);

--
-- Indexes for table `userlevel`
--
ALTER TABLE `userlevel`
  ADD PRIMARY KEY (`LEVEL_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eduan`
--
ALTER TABLE `eduan`
  ADD CONSTRAINT `FK_COMPLAINT_TYPE` FOREIGN KEY (`COMPTYPEID`) REFERENCES `complainttype` (`COMPTYPEID`);

--
-- Constraints for table `faq`
--
ALTER TABLE `faq`
  ADD CONSTRAINT `FK_FAQ_TYPE` FOREIGN KEY (`FQATYPEID`,`FQATYPENAME`) REFERENCES `faq_type` (`FQATYPEID`, `FQATYPENAME`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_USER_LEVEL` FOREIGN KEY (`LEVEL_ID`) REFERENCES `userlevel` (`LEVEL_ID`);
