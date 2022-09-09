-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 07:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_orders` ()  BEGIN
SELECT * FROM orders;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
('admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL,
  `semid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`, `semid`) VALUES
('258-852741963', 'Aptitute Enhancement', 'Gururaj', NULL, 'this book helps students to build their aptitude to clear the placements .', '500.00', 2, 8),
('978-0072226805', 'OBJECT ORIENTED CONCEPTS', 'Herbert Schildtn', 'OOC.jpg', 'Object-Oriented Programming With Java Was Developed For Students In The Science, Engineering, And Business Fields Where Knowledge Of Programming Is Thought To Be Essential. This Text, On Modern Software Development, Contains Material That Is Typically Covered In A CS1 Course. In Addition To Traditional Introductory Programming Concepts, Object-Oriented Concepts And Techniques Such As Inheritance And Polymorphism Are Presented In A Student-Friendly Manner. Java-Related Topics Such As Exception Handling And The Java I/O Models Are Carefully Treated, And An Entire Chapter Is Devoted To Java Applets. \r\n', '729.00', 3, 4),
('978-0072465631', 'DATABASE MANAGEMENT SYSTEM', 'Ramakrishnan and Gehrke', 'DBMS.jpg', 'About the Book: Database Management Systems Designed for an introductory database course, this new text emphasizes conceptual and physical database design and tuning. Database Management Systems also covers advanced topics that can be used for a second course in database. These topics include parallel and distributed database systems, transaction processing, decision support, object-relational systems, and active and deductive database systems.', '888.00', 7, 5),
('978-0073250328', 'DATA COMMUNICATION', 'Behrouz A. Forouzan', 'DC.jpg', 'About the Book: Data Communications and Networking: 5th Edition \"We are pleased to present this Edition of Forouzans Data Communications and Networking. It has been developed specifically to meet the need of students of computer networks. in addition to a chapter on the peer-to-peer paradigm, a full chapter on quality of service (QoS), generous coverage of forward error correction, coverage of Wi MAX, and material on socket-interface programming in Java, we have added new end-of-chapter questions and problems to make the content more relevant and improve learning outcomes for the student. Salient features Follows Visual approach which gives the reader the opportunity to understand the networking concept with real-life', '600.00', 3, 4),
('978-0073376202', 'UNIX PROGRAMMING', 'Sumitabha Das', 'UNIX.jpg', 'About the Book: Unix Concepts and Applications UNIX: Concepts and Applications Book Description This book is both an exhaustive reference and an outstanding guide for the beginner. Real-world examples make new concepts easy to grasp while the practice exercises take comprehension to a new level by forcing the user to think. An unparalleled reference apparatus, this is a book that users will reach for now and for years to come. Features New chapter on program Development Tools to facilitate program maintenance. Special \"How It Works\" and \"How To\" sections that make understanding easier. Essential Linux features highlighted throughout. Command reference for vi editor available\r\n', '747.00', 3, 5),
('978-0073380650', 'COMPUTER ORGANIZATION', 'Carl Hamacher, Zvonko Vranesic, Safwat Zaky', 'CO.jpg', 'Overview: The goal of the book is to illustrate the principles of computer organization by using a number of extensive examples drawn from commercially available computers. The machines discussed in the book are the Motorola 680X0 and 683XX families, Intel 80X86 and Pentium families, ARM family, Sun Microsystems Sparc family, and DEC(Compaq) Alpha family. The 68000, Pentium, and ARM are used as detailed examples early in the book.', '500.00', 3, 3),
('978-0132288064', 'AUTOMATA THEORY AND COMPUTABILITY', 'Elaine Rich', 'ATC.jpg', 'About the Book: Automata Computability and Complexity\r\n\r\nCombining classic theory with unique applications, this crisp narrative is supported by abundant examples and clarifies key concepts by introducing important uses of techniques in real systems. Broad-ranging coverage allows instructors to easily customize course material to fit their unique requirements.', '700.00', 4, 5),
('978-0132316811', 'DESIGN AND ANALYSIS OF ALGORITHMS', 'Anany Levitin', 'DAA.jpg', 'About the Book: Introduction to the Design and Analysis of Algorithms, 3rd Edition ll Chapters on resilience engineering, systems engineering, and systems of systems have been added to the text. Features Ll Employs an Innovative and More Comprehensive Taxonomy of Algorithm Design Techniques Ll Covers Mathematical Analysis of Both Nonrecursive and Recursive Algorithms, as Well as Empirical Analysis and Algorithm Visualization Ll Discusses Limitations of Algorithms and Ways to Overcome Them Treats Algorithms as Problem-solving Tools and Develops Algorithmic Thinking by Using Puzzles and Games Market Undergraduate Students of Computer Science', '722.00', 4, 4),
('978-0132856201', 'COMPUTER NETWORKS AND SECURITY', 'James F Kurose and Keith W Ross', 'CNS.jpg', 'About the Book: Introduction to the Design and Analysis of Algorithms, 3rd Edition ll Chapters on resilience engineering, systems engineering, and systems of systems have been added to the text. Features Ll Employs an Innovative and More Comprehensive Taxonomy of Algorithm Design Techniques Ll Covers Mathematical Analysis of Both Nonrecursive and Recursive Algorithms, as Well as Empirical Analysis and Algorithm Visualization Ll Discusses Limitations of Algorithms and Ways to Overcome Them Treats Algorithms as Problem-solving Tools and Develops Algorithmic Thinking by Using Puzzles and Games Market Undergraduate Students of Computer Science', '699.00', 4, 5),
('978-0134481265', 'WEB TECHNOLOGY AND ITS APPLICATIONS', 'Randy Connolly, Ricardo Hoar', 'WD.jpg', 'About the Book: Fundamentals Of Web Development Fundamentals of Web Development covers the broad range of topics required for modern web development (both client-and server-side) and is appropriate for students who have taken a CS1 course sequence. The book guides students through the creation of enterprise-quality websites using current development frameworks, its comprehensive coverage of a modern internet development platform includes HTML5, CSS3, Javascript, and the LAMP stack (that is, Linux, Apache, MySQL, and PHP). Other important technologies covered include jQuery, XML, WordPress, Bootstrap, and a variety of third-party APIs that include Facebook, Twitter, and Google and Bing Maps. Coverage also includes the required ACM web development\r\n', '670.00', 4, 6),
('978-0137035151', 'SOFTWARE ENGINEERING', 'Ian Sommerville ', 'SE.jpg', 'About the Book: Software Engineering: 10th Edition ll Chapters on resilience engineering, systems engineering, and systems of systems have been added to the text. ll The core structure of the text has been significantly altered to include relevant information on agile methods. ll The text covers the latest key developments in software engineering particularly providing information on Scrum, RESTful, distributed version control systems. Market Undergraduate Students of Computer Science\r\n', '629.00', 4, 3),
('978-0195692327', 'NATURAL LANGUAGE PROCESSING', 'Tanveer Siddiqui, U.S. Tiwary', 'NLP.jpg', 'Research in Natural Language Processing (NLP) has rapidly advanced in recent years, resulting in exciting algorithms for sophisticated processing of text and speech in various languages. Much of this work focuses on English; in this book we address another group of interesting and challenging languages for NLP research: the Semitic languages. The Semitic group of languages includes Arabic (206 million native speakers), Amharic (27 million), Hebrew (7 million), Tigrinya (6.7 million), Syriac (1 million) and Maltese (419 thousand). Semitic languages exhibit unique morphological processes, challenging syntactic constructions and various other phenomena that are less prevalent in other natural languages. These challenges call for unique solutions, many of which are described in this book.', '669.00', 5, 7),
('978-0201726343', 'DISCRETE MATHEMATICAL STRUCTURES', 'Ralph P. Grimaldi', 'DMS.jpg', 'This fifth edition continues to improve on the features that have made it the market leader. The text offers a flexible organization, enabling instructors to adapt the book to their particular courses. The book is both complete and careful, and it continues to maintain its emphasis on algorithms and applications. Excellent exercise sets allow students to perfect skills as they practice. This new edition continues to feature numerous computer science applications—making this the ideal text for preparing students for advanced study', '810.00', 4, 3),
('978-0351947861', 'MANAGEMENT AND ENTREPRENEURSHIP FOR IT INDUSTRY', 'Kanishka Bedi', 'ME.jpg', 'Management and Entrepreneurship provides a complete overview of managerial decision-making responsibilities and the role played by entrepreneurship in developing an organization. Starting with the definition of management, the various facets of managerial roles and a broad account of the history of development of management thought, the book provides in-depth discussions on the nature, importance, and purpose of planning. It elaborates further on the importance of organizing and staffing, and directing and controlling. The discussion moves on to introduce the concept of entrepreneurship as a business development tool. Special emphasis is placed on entrepreneurship in the Indian environment with detailed discussions on the development of small-scale industry', '700.00', 5, 5),
('978-0716782926', 'DATA STRUCTURES AND APPLICATIONS', 'Ellis Horowitz and Sartaj Sahni', 'DSA.jpg', 'This new edition provides a comprehensive and technically rigorous introduction to data structures such as arrays, stacks, queues, linked lists, trees and graphs and techniques such as sorting hashing that form the basis of all software. In addition, this text presents advanced or specialized data structures such as priority queues, efficient binary search trees, multiway search trees and digital search structures. The book now discusses topics such as weight biased leftist trees, pairing heaps, symmetric min–max heaps, interval heaps, top-down splay trees, B+ trees and suffix trees. Red-black trees have been made more accessible. The section on multiway tries has been significantly expanded and discusses several trie variations and their application to Internet packet forwarding.', '350.00', 1, 3),
('978-1118063330', 'OPERATING SYSTEMS', 'Abraham Silberschatz, Peter Baer Galvin, Greg Gagne', 'OS.jpg', 'This market-leading book provides developers with the latest and most relevant information on today\'s operating systems. In addition, it uncovers the fundamental concepts that have remained constant throughout the evolution of those systems. The eighth edition adds simulation content throughout the pages along with new programming projects. The simulators will help readers develop a conceptual understanding of the concepts. The material has also been updated with the latest information on all the major operating systems. By following the approach in this book, developers can more easily comprehend the details related to specific systems', '549.00', 4, 4),
('978-1492059318', 'MULTICORE ARCHITECTURE AND PROGRAMMING', 'Shameem Akhter and Jason Roberts', 'MCP.jpg', 'Software developers can no longer rely on increasing clock speeds alone to speed up single-threaded applications; instead, to gain a competitive advantage, developers must learn how to properly design their applications to run in a threaded environment. Multi-core architectures have a single processor package that contains two or more processor \"execution cores,\" or computational engines, and deliver-with appropriate software-fully parallel execution of multiple software threads. Hyper-Threading Technology enables additional threads to operate on each core.\r\nThis book helps software developers write high-performance multi-threaded code for Intel\'s multi-core architecture while avoiding the common parallel programming issues associated with multi-threaded programs.', '520.00', 6, 8),
('978-1492078197', 'ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING', 'Tom M Mitchell', 'AIML.jpg', 'This book offers the readers the basics of machine learning in a very simple, user-friendly language. While browsing the Table of Contents, you will realize that you are given an introduction to every concept that comes under the umbrella of machine learning. This book is aimed at students who are new to the topic of machine learning. It is meant for students studying machine learning in their undergraduate and postgraduate courses in information technology. It is also aimed at computer engineering students. It will help familiarize students with the terms and terminologies used in machine learning. We hope that this book serves as an entry point for students to pursue their future studies and careers in machine learning', '599.00', 7, 7),
('978-1558603202', 'SYSTEM SOFTWARE AND COMPILERS', 'K C Louden', 'CC.jpg', 'The emergence of the system-on-chip (SoC) era is creating many new challenges at all stages of the design process. Engineers are reconsidering how designs are specified, partitioned and verified. With systems and software engineers programming in C/C++ and their hardware counterparts working in hardware description languages such as VHDL and Verilog, problems arise from the use of different design languages, incompatible tools and fragmented tool flows. Momentum is building behind the SystemC language and modeling platform as the best solution for representing functionality, communication, and software and hardware implementations at various levels of abstraction. The reason is clear: increasing design complexity demands very fast executable specifications to validate system\r\n', '260.00', 2, 6),
('978-1558608740', 'MICROCONTROLLER AND EMBEDDED SYSTEMS', 'Andrew N Sloss, Dominic Symes and Chris Wright', 'MCES.jpg', 'Key Features No other book describes the ARM core from a system and software perspective. Author team combines extensive ARM software engineering experience with an in-depth knowledge of ARM developer needs. Practical, executable code is fully explained in the book and available on the publisher\'s Website. Includes a simple embedded operating system. Description Over the last ten years, the ARM architecture has become one of the most pervasive architectures in the world, with more than 2 billion ARM-based processors embedded in products ranging from cell phones to automotive braking systems. A world-wide community of ARM developers in semiconductor and product design companies includes software developers, system designers', '495.00', 4, 4),
('978-1593279929', 'APPLICATION DEVELOPMENT USING PYTHON', 'Al Sweigart', 'PYTHON.jpg', 'In this fully revised second edition of the best-selling classic Automate the Boring Stuff with Python, youll learn how to use Python to write programs that do in minutes what would take you hours to do by hand--no prior programming experience required. Youll learn the basics Python and explore Pythons rich library of modules for performing specific tasks, like scraping data off websites, reading PDF and Word documents, and automating clicking and typing tasks.', '1190.00', 3, 5),
('978-3319207438', 'BIG DATA AND ANALYTICS', 'Raj Kamal and Preeti Saxena', 'BDA.jpg', 'About the Book: Big Data Analytics, Introduction to Hadoop, Spark, and Machine-Learning \"Big Data Analytics(BDA) is a rapidly evolving field that finds applications in many areas such as healthcare, medicine, advertising, marketing, and sales. This book dwells on all the aspects of Big Data Analytics and covers the subject in its entirety. It comprises several illustrations, sample codes, case studies and real-life analytics of datasets such as toys, chocolates, cars, and students GPAs. The book will serve the interests of undergraduate and post graduate students of computer science and engineering, information technology, and related disciplines. It will also be useful to software developers\r\n', '689.00', 7, 7),
('978-3319584867', 'INTRODUCTION TO ARTIFICIAL INTELLIGENCE', 'E.Rich,K.Knight & S.B. Nair', 'AI.jpg', 'Artificial Intelligence provides a comprehensive coverage of the fundamental concepts and techniques in AI. The focus of this text is to solve real-world problems using the latest AI techniques. Intelligent systems like expert systems, fuzzy systems, artificial neural networks, genetic algorithms and ant colony systems are discussed in detail with case studies to facilitate in- depth understanding. Since the ultimate goal of AI is the construction of programs to solve problems, an entire chapter has been devoted to the programming languages used in AI problem solving. The theory is well supported by a large number of illustrations and end-chapter exercises. With its comprehensive coverage of the subject in a clear and concise manner this text would be extremely useful not only for undergraduate students, but also to postgraduate students.', '769.00', 7, 7),
('978-7115557797', 'INTERNET OF THINGS', 'David Hanes, Gonzalo Salgueiro', 'IoT.jpg', 'About the Book: IoT Fundamentals Features The authors begin with a high-level overview of the Internet of Things IoT) and introduce key concepts needed to successfully design IoT solutions. Next, they walk through each key technology, protocol, and technical building block that combine into complete IoT solutions. Building on these essentials, they present several detailed use cases, including manufacturing, energy, utilities, smart+connected cities, transportation, mining, and public safety. Networking students will gain deep insight into what IoT applications can do, and what it takes to deliver them. Market IT Professionals', '512.00', 4, 7),
('978-9332518711', 'COMUTER GRAPHICS AND VISUALIZATION', 'Donald Hearn & Pauline Baker', 'CGC.jpg', 'About the Book: Computer Graphics C Version Donald D Hearn and M. Pauline Bakers Computer Graphics, C Version 2 Edition is appropriate for Civil Engineering, Information Technology, Mechanical Engineering, Computer Science Engineering and Mechanical Engineering students. The book discusses latest computer graphics and explores algorithms so as to have a better understanding of the subject. The books covers 5th Semester, 6th Semester, 4th Semester, 8th Semester syllabus. About the Author: Donald Hearn, Pauline Baker M Donald D Hearn is computer science professor at the University of Illinois. He has authored the book Computer Graphics with OpenGL. Hearns expertise lie in computer graphics, scientific visualization, computational science, mathematics', '496.00', 4, 6),
('978-9353502355', 'ANALOG AND DIGITAL ELECTRONICS', 'Charles H Roth and Larry L Kinney', 'ADE.jpg', 'This book is targeted towards beginners who aspire to learn the fundamental concepts of analog and digital electronics. The concepts are explained in a simple and lucid manner. Some of the real-time applications of the concepts are discussed. Numerous examples based on the concepts enable the readers to understand the subject clearly. This book covers the syllabus of major universities with systematic presentation.The book comprises of two parts, namely, Part A: Analog Electronics - which covers 9 chapters and Part B: Digital Electronics - which covers 13 chapters. Each unit consists of objectives which state precisely what the student is expected to learn, followed by the concepts, solved problems, review questions, and also real-time applications to make the concepts clear. The students learn, both, theory and its application. Additional study material, answers to review questions, and Lab Manual are provided in the Cengage App', '499.00', 2, 3);

--
-- Triggers `books`
--
DELIMITER $$
CREATE TRIGGER `books_deleted_record` AFTER DELETE ON `books` FOR EACH ROW INSERT INTO books_deleted VALUES( old.book_isbn, old.book_title, old.book_price, NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `books_deleted`
--

CREATE TABLE `books_deleted` (
  `book_isbn` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) DEFAULT NULL,
  `book_price` decimal(6,2) DEFAULT NULL,
  `delete_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_deleted`
--

INSERT INTO `books_deleted` (`book_isbn`, `book_title`, `book_price`, `delete_date`) VALUES
('123-89456250', 'Computer Applications', '300.00', '2022-01-17'),
('666-8526661963', 'Communication Enhancement', '600.00', '2022-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `state` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `state`) VALUES
('61dbc9d5ab7f6', 'Snigdha mam', 'ullal', 'blore', '560110', 'karnataka'),
('61dfd6e0e808c', 'kalpana', 'girinagar', 'Blore', '560026', 'Karnataka'),
('61e057f3415b2', 'sindhu', 'kengeri', 'Blore', '560001', 'Karnataka'),
('61e5069981517', 'vaishnavi dh', 'ullala', 'Bangalore', '560001', 'Karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `customerid` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_state` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_state`) VALUES
('61dbc9d5c87d7', '61dbc9d5ab7f6', '1099.00', '2022-01-10 00:23:25', 'Snigdha mam', 'ullal', 'blore', '560110', 'karnataka'),
('61dfd6e10acfe', '61dfd6e0e808c', '600.00', '2022-01-13 02:08:09', 'kalpana', 'girinagar', 'Blore', '560026', 'Karnataka'),
('61e057f34f803', '61e057f3415b2', '729.00', '2022-01-13 11:18:51', 'sindhu', 'kengeri', 'Blore', '560001', 'Karnataka'),
('61e506998ed65', '61e5069981517', '729.00', '2022-01-17 01:33:05', 'vaishnavi dh', 'ullala', 'Bangalore', '560001', 'Karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
('61dbc9d5c87d7', '978-1492078197', '599.00', 1),
('61dbc9d5c87d7', '978-0073380650', '500.00', 1),
('61dfd6e10acfe', '978-0073250328', '600.00', 1),
('61e057f34f803', '978-0072226805', '729.00', 1),
('61e506998ed65', '978-0072226805', '729.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Universities Press'),
(2, 'Cengage Learning'),
(3, 'Tata McGraw Hill'),
(4, 'Pearson Education'),
(5, 'Oxford University Press'),
(6, 'Intel Press'),
(7, 'McGraw Hill');

-- --------------------------------------------------------

--
-- Table structure for table `sem_categories`
--

CREATE TABLE `sem_categories` (
  `semid` int(11) NOT NULL,
  `sem_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sem_categories`
--

INSERT INTO `sem_categories` (`semid`, `sem_name`) VALUES
(3, '3rd Sem'),
(4, '4th Sem'),
(5, '5th Sem'),
(6, '6th Sem'),
(7, '7th Sem'),
(8, '8th Sem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`),
  ADD KEY `publisherid` (`publisherid`),
  ADD KEY `semid` (`semid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `customerid` (`customerid`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- Indexes for table `sem_categories`
--
ALTER TABLE `sem_categories`
  ADD PRIMARY KEY (`semid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`publisherid`) REFERENCES `publisher` (`publisherid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`semid`) REFERENCES `sem_categories` (`semid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
