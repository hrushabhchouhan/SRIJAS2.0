-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2021 at 03:37 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_name`
--

-- --------------------------------------------------------

--
-- Table structure for table `job_master`
--

CREATE TABLE `job_master` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_master`
--

INSERT INTO `job_master` (`job_id`, `job_title`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Software Engineer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(2, 'Software Developer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(3, 'Software Engineer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(4, 'Software Developer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(5, 'Cloud Platform Engineer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(6, 'Cloud Platform Engineer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(7, 'DevOps Engineer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(8, 'DevOps Engineer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(9, 'Full Stack Engineer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(10, 'Full Stack Engineer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(11, 'Machine Learning Engineer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(12, 'Machine Learning Engineer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(13, 'Data Science Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(14, 'Data Scientist', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(15, 'Data Analytics Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(16, 'Data Analyst', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(17, 'Big Data Engineer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(18, 'Big Data Engineer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(19, 'Artificial Intelligence Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(20, 'Artificial Intelligence', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(21, 'Java Developer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(22, 'Java Developer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(23, 'Python Developer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(24, 'Python Developer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(25, 'Back End Engineer Intern', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31'),
(26, 'Back End Engineer', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `resume_master`
--

CREATE TABLE `resume_master` (
  `resume_id` int(11) NOT NULL,
  `resume_json` longtext NOT NULL,
  `resume_universities` varchar(1000) DEFAULT NULL,
  `resume_degrees` varchar(1000) NOT NULL,
  `resume_links` varchar(1000) NOT NULL,
  `resume_summary` varchar(1000) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resume_master`
--

INSERT INTO `resume_master` (`resume_id`, `resume_json`, `resume_universities`, `resume_degrees`, `resume_links`, `resume_summary`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'hrushabhsinghy.chouhanaddress:mitachs,plot-32,c-301,sec-20city:kharghar,navimumbaipincode:410210contactno.:+91-8108584465e-mail:hrushabhchouhan8899@gmail.comobjective:seekingadmissioninaworldrenowneduniversitytoenhancingmyknowledgeandskillsetrequiredinanindustry.academicqualifications:nameofexaminationuniversity/boardnameofcollege/schoolyearofpassingpercentage/cgpaobtainedundergraduatemumbaiuniversityvivekananda(vesit),chembur20219.43h.s.ccbseapjschool,kharghar201793.4s.s.c.cbseapjschool,kharghar201593.2internships:company:mituskillologies,puneduration:1monthjobdescription:datascienceintern,workingon“creditcardfrauddetection”projectcompany:l&telectricalandautomationduration:1monthjobdescription:machinelearningintern,workingon“generationforecastingofsolarphotovoltaicplant”projectadditionalcourses:machinelearningbyandrewngmachinelearninga-z:handsonpythonandrindatascience:https://www.udemy.com/course/machinelearning/neuralnetworksanddeeplearningbyandrewngimprovingdeepneuralnetworks:hyperparametertuning,regularization,optimizationbyandrewngconvolutionalneuralnetworksbyandrewngsequencemodelsbyandrewngprojects:creditcardfrauddetectionusingmlsolarpoweroutputpredictionusingmltechnical&computerskills:m.s.office(word,powerpoint,excel)c,pythonstatisticsmlalgorithms(regression,classification,clustering,decisiontreeetc.)numpy,pandas,matplotlib,datapreprocessingdeeplearning(buildingannforclassificationandregression,buildingcnnforimageclassification)strength:positiveattitude,leadershipskillstimemanagement,resourcefulnaturequicklearningabilityabilitytoexpresswithwrittenandlingualskillspersonaldetails:dateofbirth(dob):08/08/1999relationshipstatus:singlehobbies:readingbooks,playingvideogames,playingcricketdeclaration:i,herebydeclarethatalltheinformationprovidedaboveistruetothebestofmyknowledgeandbelief.date:25/11/2020place:mumbaihrushabhsinghy.chouhan', NULL, '', '', '', b'1', -1, '2021-11-27 18:04:16', -1, '2021-11-27 18:04:16'),
(2, 'hrushabhsinghy.chouhanaddress:mitachs,plot-32,c-301,sec-20city:kharghar,navimumbaipincode:410210contactno.:+91-8108584465e-mail:hrushabhchouhan8899@gmail.comobjective:seekingadmissioninaworldrenowneduniversitytoenhancingmyknowledgeandskillsetrequiredinanindustry.academicqualifications:nameofexaminationuniversity/boardnameofcollege/schoolyearofpassingpercentage/cgpaobtainedundergraduatemumbaiuniversityvivekananda(vesit),chembur20219.43h.s.ccbseapjschool,kharghar201793.4s.s.c.cbseapjschool,kharghar201593.2internships:company:mituskillologies,puneduration:1monthjobdescription:datascienceintern,workingon“creditcardfrauddetection”projectcompany:l&telectricalandautomationduration:1monthjobdescription:machinelearningintern,workingon“generationforecastingofsolarphotovoltaicplant”projectadditionalcourses:machinelearningbyandrewngmachinelearninga-z:handsonpythonandrindatascience:https://www.udemy.com/course/machinelearning/neuralnetworksanddeeplearningbyandrewngimprovingdeepneuralnetworks:hyperparametertuning,regularization,optimizationbyandrewngconvolutionalneuralnetworksbyandrewngsequencemodelsbyandrewngprojects:creditcardfrauddetectionusingmlsolarpoweroutputpredictionusingmltechnical&computerskills:m.s.office(word,powerpoint,excel)c,pythonstatisticsmlalgorithms(regression,classification,clustering,decisiontreeetc.)numpy,pandas,matplotlib,datapreprocessingdeeplearning(buildingannforclassificationandregression,buildingcnnforimageclassification)strength:positiveattitude,leadershipskillstimemanagement,resourcefulnaturequicklearningabilityabilitytoexpresswithwrittenandlingualskillspersonaldetails:dateofbirth(dob):08/08/1999relationshipstatus:singlehobbies:readingbooks,playingvideogames,playingcricketdeclaration:i,herebydeclarethatalltheinformationprovidedaboveistruetothebestofmyknowledgeandbelief.date:25/11/2020place:mumbaihrushabhsinghy.chouhan', NULL, '', '', '', b'1', -1, '2021-11-27 18:04:31', -1, '2021-11-27 18:04:31'),
(3, 'hrushabhsinghy.chouhanaddress:mitachs,plot-32,c-301,sec-20city:kharghar,navimumbaipincode:410210contactno.:+91-8108584465e-mail:hrushabhchouhan8899@gmail.comobjective:seekingadmissioninaworldrenowneduniversitytoenhancingmyknowledgeandskillsetrequiredinanindustry.academicqualifications:nameofexaminationuniversity/boardnameofcollege/schoolyearofpassingpercentage/cgpaobtainedundergraduatemumbaiuniversityvivekananda(vesit),chembur20219.43h.s.ccbseapjschool,kharghar201793.4s.s.c.cbseapjschool,kharghar201593.2internships:company:mituskillologies,puneduration:1monthjobdescription:datascienceintern,workingon“creditcardfrauddetection”projectcompany:l&telectricalandautomationduration:1monthjobdescription:machinelearningintern,workingon“generationforecastingofsolarphotovoltaicplant”projectadditionalcourses:machinelearningbyandrewngmachinelearninga-z:handsonpythonandrindatascience:https://www.udemy.com/course/machinelearning/neuralnetworksanddeeplearningbyandrewngimprovingdeepneuralnetworks:hyperparametertuning,regularization,optimizationbyandrewngconvolutionalneuralnetworksbyandrewngsequencemodelsbyandrewngprojects:creditcardfrauddetectionusingmlsolarpoweroutputpredictionusingmltechnical&computerskills:m.s.office(word,powerpoint,excel)c,pythonstatisticsmlalgorithms(regression,classification,clustering,decisiontreeetc.)numpy,pandas,matplotlib,datapreprocessingdeeplearning(buildingannforclassificationandregression,buildingcnnforimageclassification)strength:positiveattitude,leadershipskillstimemanagement,resourcefulnaturequicklearningabilityabilitytoexpresswithwrittenandlingualskillspersonaldetails:dateofbirth(dob):08/08/1999relationshipstatus:singlehobbies:readingbooks,playingvideogames,playingcricketdeclaration:i,herebydeclarethatalltheinformationprovidedaboveistruetothebestofmyknowledgeandbelief.date:25/11/2020place:mumbaihrushabhsinghy.chouhan', NULL, '', '', '', b'1', -1, '2021-11-27 18:05:19', -1, '2021-11-27 18:05:19'),
(4, 'hrushabhsinghy.chouhanaddress:mitachs,plot-32,c-301,sec-20city:kharghar,navimumbaipincode:410210contactno.:+91-8108584465e-mail:hrushabhchouhan8899@gmail.comobjective:seekingadmissioninaworldrenowneduniversitytoenhancingmyknowledgeandskillsetrequiredinanindustry.academicqualifications:nameofexaminationuniversity/boardnameofcollege/schoolyearofpassingpercentage/cgpaobtainedundergraduatemumbaiuniversityvivekananda(vesit),chembur20219.43h.s.ccbseapjschool,kharghar201793.4s.s.c.cbseapjschool,kharghar201593.2internships:company:mituskillologies,puneduration:1monthjobdescription:datascienceintern,workingon“creditcardfrauddetection”projectcompany:l&telectricalandautomationduration:1monthjobdescription:machinelearningintern,workingon“generationforecastingofsolarphotovoltaicplant”projectadditionalcourses:machinelearningbyandrewngmachinelearninga-z:handsonpythonandrindatascience:https://www.udemy.com/course/machinelearning/neuralnetworksanddeeplearningbyandrewngimprovingdeepneuralnetworks:hyperparametertuning,regularization,optimizationbyandrewngconvolutionalneuralnetworksbyandrewngsequencemodelsbyandrewngprojects:creditcardfrauddetectionusingmlsolarpoweroutputpredictionusingmltechnical&computerskills:m.s.office(word,powerpoint,excel)c,pythonstatisticsmlalgorithms(regression,classification,clustering,decisiontreeetc.)numpy,pandas,matplotlib,datapreprocessingdeeplearning(buildingannforclassificationandregression,buildingcnnforimageclassification)strength:positiveattitude,leadershipskillstimemanagement,resourcefulnaturequicklearningabilityabilitytoexpresswithwrittenandlingualskillspersonaldetails:dateofbirth(dob):08/08/1999relationshipstatus:singlehobbies:readingbooks,playingvideogames,playingcricketdeclaration:i,herebydeclarethatalltheinformationprovidedaboveistruetothebestofmyknowledgeandbelief.date:25/11/2020place:mumbaihrushabhsinghy.chouhan', NULL, '', '', '', b'1', -1, '2021-11-27 18:08:55', -1, '2021-11-27 18:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `resume_skills`
--

CREATE TABLE `resume_skills` (
  `resume_skill_id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resume_skills`
--

INSERT INTO `resume_skills` (`resume_skill_id`, `resume_id`, `skill_id`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 1, b'1', -1, '2021-11-27 18:04:16', -1, '2021-11-27 18:04:16'),
(2, 1, 3, b'1', -1, '2021-11-27 18:04:16', -1, '2021-11-27 18:04:16'),
(3, 1, 4, b'1', -1, '2021-11-27 18:04:16', -1, '2021-11-27 18:04:16'),
(4, 1, 14, b'1', -1, '2021-11-27 18:04:17', -1, '2021-11-27 18:04:17'),
(5, 1, 16, b'1', -1, '2021-11-27 18:04:17', -1, '2021-11-27 18:04:17'),
(6, 2, 1, b'1', -1, '2021-11-27 18:04:31', -1, '2021-11-27 18:04:31'),
(7, 2, 3, b'1', -1, '2021-11-27 18:04:31', -1, '2021-11-27 18:04:31'),
(8, 2, 4, b'1', -1, '2021-11-27 18:04:31', -1, '2021-11-27 18:04:31'),
(9, 2, 14, b'1', -1, '2021-11-27 18:04:31', -1, '2021-11-27 18:04:31'),
(10, 2, 16, b'1', -1, '2021-11-27 18:04:31', -1, '2021-11-27 18:04:31'),
(11, 3, 1, b'1', -1, '2021-11-27 18:05:20', -1, '2021-11-27 18:05:20'),
(12, 3, 3, b'1', -1, '2021-11-27 18:05:20', -1, '2021-11-27 18:05:20'),
(13, 3, 4, b'1', -1, '2021-11-27 18:05:20', -1, '2021-11-27 18:05:20'),
(14, 3, 14, b'1', -1, '2021-11-27 18:05:20', -1, '2021-11-27 18:05:20'),
(15, 3, 16, b'1', -1, '2021-11-27 18:05:20', -1, '2021-11-27 18:05:20'),
(16, 4, 1, b'1', -1, '2021-11-27 18:08:55', -1, '2021-11-27 18:08:55'),
(17, 4, 3, b'1', -1, '2021-11-27 18:08:55', -1, '2021-11-27 18:08:55'),
(18, 4, 4, b'1', -1, '2021-11-27 18:08:55', -1, '2021-11-27 18:08:55'),
(19, 4, 14, b'1', -1, '2021-11-27 18:08:55', -1, '2021-11-27 18:08:55'),
(20, 4, 16, b'1', -1, '2021-11-27 18:08:55', -1, '2021-11-27 18:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `skill_master`
--

CREATE TABLE `skill_master` (
  `skill_id` int(11) NOT NULL,
  `skill_title` varchar(100) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `skill_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill_master`
--

INSERT INTO `skill_master` (`skill_id`, `skill_title`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`, `skill_count`) VALUES
(1, 'C', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 453),
(2, 'Java', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 1048),
(3, 'Python', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 683),
(4, 'C++', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 349),
(5, 'C#', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 285),
(6, 'Visual Basic', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 89),
(7, 'JavaScript', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 153),
(8, 'Assembly Language', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 142),
(9, 'PHP', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 409),
(10, 'SQL', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 572),
(11, 'Classic Visual Basic', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 65),
(12, 'Delphi/Object Pascal', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 35),
(13, 'Ruby', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 102),
(14, 'Go', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 127),
(15, 'Swift', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 251),
(16, 'R', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 372),
(17, 'Groovy', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 30),
(18, 'Perl', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 62),
(19, 'MATLAB', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 173),
(20, 'Fortran', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 5),
(21, 'AWS', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 749),
(22, 'Azure', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 687),
(23, 'GCP', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 476),
(25, 'Terraform', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 45),
(26, 'Ansible', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 132),
(27, 'node.js', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(28, 'React', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(29, 'Angular', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(30, 'Splunk', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(31, 'Jenkins', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(32, 'Git', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(33, 'Jira', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(34, 'Flask', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(35, 'Django', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(36, 'Angular', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(37, 'Splunk', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(38, 'OpenCV', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(39, 'Tensorflow', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(40, 'Scikit-learn', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(41, 'Keras', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(42, 'Linux', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(43, 'Ruby on Rails', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(44, 'SQL', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(45, 'MySQL', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(46, 'MSSQL', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(47, 'GraphSQL', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(48, 'MongoDB', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(49, 'PostGreSQL', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(50, 'Hadoop', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(51, 'Kafka', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(52, 'Cassandra', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(53, 'Elasticsearch', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', NULL),
(54, 'R', b'1', -1, '2021-11-01 04:44:31', 0, '2021-11-01 04:44:31', 94);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_lname` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_location` varchar(20) DEFAULT NULL,
  `user_threshold` int(11) DEFAULT 100,
  `user_preferred_job_id` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_fname`, `user_lname`, `user_email`, `user_password`, `user_location`, `user_threshold`, `user_preferred_job_id`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'hrushabh', '', 'hychouha@ncsu.edu', 'hdhdhdhdhdhdh', 'Raleigh', 2, 17, b'1', -1, '2021-11-27 18:02:00', NULL, '2021-11-27 18:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_resume`
--

CREATE TABLE `user_resume` (
  `user_resume_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_resume`
--

INSERT INTO `user_resume` (`user_resume_id`, `user_id`, `resume_id`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 2, 1, b'1', -1, '2021-11-27 18:04:17', -1, '2021-11-27 18:04:17'),
(2, 2, 2, b'1', -1, '2021-11-27 18:04:31', -1, '2021-11-27 18:04:31'),
(3, 2, 3, b'1', -1, '2021-11-27 18:05:20', -1, '2021-11-27 18:05:20'),
(4, 2, 4, b'1', -1, '2021-11-27 18:08:55', -1, '2021-11-27 18:08:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job_master`
--
ALTER TABLE `job_master`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `resume_master`
--
ALTER TABLE `resume_master`
  ADD PRIMARY KEY (`resume_id`);

--
-- Indexes for table `resume_skills`
--
ALTER TABLE `resume_skills`
  ADD PRIMARY KEY (`resume_skill_id`),
  ADD KEY `resume_skills_resume_fk` (`resume_id`),
  ADD KEY `resume_skills_skills_fk` (`skill_id`);

--
-- Indexes for table `skill_master`
--
ALTER TABLE `skill_master`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD KEY `user_job_fk` (`user_preferred_job_id`);

--
-- Indexes for table `user_resume`
--
ALTER TABLE `user_resume`
  ADD PRIMARY KEY (`user_resume_id`),
  ADD KEY `user_resume_user_fk` (`user_id`),
  ADD KEY `user_resume_resume_fk` (`resume_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_master`
--
ALTER TABLE `job_master`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `resume_master`
--
ALTER TABLE `resume_master`
  MODIFY `resume_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resume_skills`
--
ALTER TABLE `resume_skills`
  MODIFY `resume_skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `skill_master`
--
ALTER TABLE `skill_master`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_resume`
--
ALTER TABLE `user_resume`
  MODIFY `user_resume_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resume_skills`
--
ALTER TABLE `resume_skills`
  ADD CONSTRAINT `resume_skills_resume_fk` FOREIGN KEY (`resume_id`) REFERENCES `resume_master` (`resume_id`),
  ADD CONSTRAINT `resume_skills_skills_fk` FOREIGN KEY (`skill_id`) REFERENCES `skill_master` (`skill_id`);

--
-- Constraints for table `user_master`
--
ALTER TABLE `user_master`
  ADD CONSTRAINT `user_job_fk` FOREIGN KEY (`user_preferred_job_id`) REFERENCES `job_master` (`job_id`);

--
-- Constraints for table `user_resume`
--
ALTER TABLE `user_resume`
  ADD CONSTRAINT `user_resume_resume_fk` FOREIGN KEY (`resume_id`) REFERENCES `resume_master` (`resume_id`),
  ADD CONSTRAINT `user_resume_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user_master` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
